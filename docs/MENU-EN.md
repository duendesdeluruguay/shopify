# Main navigation (English + “El Portal”)

The primary menu is **not** stored in this theme repo. It is edited in **Shopify Admin → Online Store → Navigation**.

## English storefront (duendesdeluruguay.com)

1. Open **Navigation** and duplicate the current **Main menu** (or create **Main menu EN**).
2. Translate each link title to English. Keep URLs the same unless a path is wrong (see below).
3. If your theme lets you assign a **different menu per market or locale**, attach the English menu there. If not, the same menu is shown for all locales until you use Shopify Markets / Translate & Adapt or a menu metafield pattern.

## “EL PORTAL ✦” (was “MI MAGIA ✦”)

The portal for adopters was easy to confuse with the **Mi Magia** blog.

- **Decision:** the menu label for the exclusive portal should read **EL PORTAL ✦** (ES) / **THE PORTAL ✦** (EN). Theme copy for reference lives under `duendes.nav.el_portal` in `locales/es.json` and `locales/en.default.json`; the **visible label is whatever you type in the Navigation editor**.

## Comunidad Elemental (404 fix)

If an item still points to **`/pages/comunidad-elemental`**, it will 404. The live blog URL used in this theme is **`/blogs/comunidad-elemental`** (see `sections/footer-group.json` → `url_tribu` and `sections/duendes-page-redirect.liquid`).

**Action:** In Navigation, edit **Elemental Tribe / Comunidad Elemental** (or equivalent) so the link is **`/blogs/comunidad-elemental`** (or the full `https://…` URL).
