# Optional URL redirect (Comunidad Elemental)

## Confirmed handle in theme code

- Blog path used in theme/footer: **`/blogs/comunidad-elemental`**
- References: `sections/footer-group.json` (`url_tribu`), `sections/duendes-page-redirect.liquid`, `templates/page.comunidad-elemental.json`.

## If old links still use `/pages/comunidad-elemental`

Shopify does not create redirects from theme code alone. In **Shopify Admin → Online Store → Navigation → View URL redirects** (or **Settings → Apps and sales channels → Navigation** depending on admin version):

- **Redirect from:** `/pages/comunidad-elemental`  
- **Redirect to:** `/blogs/comunidad-elemental`  
- Type: **301** (permanent) if this is the canonical destination.

Alternatively, update every menu and RTE link to the blog URL (preferred if there are few links).

## Shopify CLI

There is no reliable built-in CLI command in this repo’s workflow to **list** live blogs without API credentials. Handles were inferred from committed theme files above.
