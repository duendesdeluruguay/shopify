#!/usr/bin/env node
/**
 * Optional helper: register English titles for navigation via Admin GraphQL.
 *
 * Setup:
 *   1) Admin → Settings → Apps and sales channels → Develop apps → Create app
 *   2) Configure Admin API scopes (see scripts/NAVIGATION-MENU-ENGLISH.md)
 *   3) Install app and copy Admin API access token
 *
 * Usage:
 *   export SHOPIFY_SHOP="duendes-del-uruguay-2.myshopify.com"
 *   export SHOPIFY_ADMIN_TOKEN="shpat_xxxxxxxx"
 *   node scripts/register-main-menu-en.mjs
 *
 * The mutation shape depends on Shopify API version and translatable resource type.
 * If this fails, use Translate & Adapt (recommended) or duplicate the menu in Admin.
 */

const SHOP = process.env.SHOPIFY_SHOP || process.env.SHOPIFY_STORE || '';
const TOKEN = process.env.SHOPIFY_ADMIN_TOKEN || process.env.SHOPIFY_ACCESS_TOKEN || '';
const API_VERSION = process.env.SHOPIFY_API_VERSION || '2025-01';

const TITLE_MAP = {
  Inicio: 'Home',
  'Tienda Mágica': 'Magic Shop',
  'Test del Guardián': 'Guardian Test',
  'Cómo Funciona': 'How It Works',
  'Comunidad Elemental': 'Elemental Community',
  'Mi Magia ✦': 'My Magic ✦',
  'Nuestra Historia': 'Our Story',
  Testimonios: 'Testimonials',
  Señales: 'Signs',
  'Preguntas Frecuentes': 'FAQ',
  Contacto: 'Contact',
};

async function gql(query, variables = {}) {
  const url = `https://${SHOP}/admin/api/${API_VERSION}/graphql.json`;
  const res = await fetch(url, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      'X-Shopify-Access-Token': TOKEN,
    },
    body: JSON.stringify({ query, variables }),
  });
  const json = await res.json();
  if (!res.ok) {
    throw new Error(`HTTP ${res.status}: ${JSON.stringify(json)}`);
  }
  if (json.errors) {
    throw new Error(`GraphQL errors: ${JSON.stringify(json.errors)}`);
  }
  return json.data;
}

async function main() {
  if (!SHOP || !TOKEN) {
    console.error('Missing SHOPIFY_SHOP (or SHOPIFY_STORE) or SHOPIFY_ADMIN_TOKEN.');
    console.error('See scripts/NAVIGATION-MENU-ENGLISH.md for the Admin-first workflow.');
    process.exit(1);
  }

  // Discover translatable menu-related resources (enum name varies by API version).
  const probe = `
    query {
      translatableResources(first: 20, resourceType: MENU_ITEM) {
        edges {
          node {
            resourceId
            translatableContent {
              key
              value
              digest
              locale
            }
          }
        }
      }
    }
  `;

  try {
    const data = await gql(probe);
    const edges = data?.translatableResources?.edges || [];
    console.log(`Found ${edges.length} MENU_ITEM translatable resources (sample).`);
    if (!edges.length) {
      console.log(
        'No rows returned. Use Translate & Adapt or duplicate the menu in Admin (see NAVIGATION-MENU-ENGLISH.md).'
      );
      return;
    }
    for (const e of edges.slice(0, 5)) {
      console.log(JSON.stringify(e.node, null, 2));
    }
    console.log('\nNext step (manual): for each resourceId + digest, call translationsRegister with locale "en" and the English string from TITLE_MAP when the Spanish value matches.');
  } catch (err) {
    console.error(String(err.message || err));
    console.error('\nFalling back: complete translations in Admin (Translate & Adapt).');
    process.exit(2);
  }
}

main();
