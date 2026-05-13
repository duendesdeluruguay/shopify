# El Portal (`/pages/el-portal`) — pasos en Shopify Admin

El theme incluye la plantilla **`templates/page.el-portal.json`** (sección **`duendes-el-portal`**). Hasta que exista la **página** en Admin, la URL devuelve **404**.

## Crear la página

1. **Admin → Contenido → Páginas → Agregar página**.
2. **Título:** `El Portal ✦` (o el título que prefieras visible en pestaña y SEO).
3. **Contenido del editor:** opcional; el diseño lo aporta casi todo la sección del theme.
4. **Manejo de URL (handle):** `el-portal` — debe quedar exactamente `el-portal` para que la ruta sea `https://TU-DOMINIO/pages/el-portal`.
5. En la barra lateral derecha, **Plantilla de tema:** elegí **`page.el-portal`** (a veces aparece como *el-portal* o *page.el-portal* según la versión del editor).
6. **Guardar** y abrir en incógnito: `/pages/el-portal` debe cargar el portal (vista de invitado si no hay sesión).

## Opción CLI — GraphQL Admin (mutación `pageCreate`)

Requiere autenticación de app contra la tienda (una vez):

```bash
shopify store auth --store duendes-del-uruguay-2.myshopify.com --scopes read_content,write_content
```

Luego creá la página (ajustá el título si querés ASCII plano en la terminal):

```bash
shopify store execute --store duendes-del-uruguay-2.myshopify.com --allow-mutations --json -q 'mutation { pageCreate(page: {title: "El Portal", handle: "el-portal", templateSuffix: "el-portal", isPublished: true}) { page { id title handle } userErrors { field message } } }'
```

Si `userErrors` viene vacío y `page.handle` es `el-portal`, probá `GET /pages/el-portal` → **200**.

**Nota:** En este entorno de Cursor no hay `SHOPIFY_ACCESS_TOKEN` en `.env` ni `shopify store auth` previo, por eso la página no se puede crear desde acá sin que ejecutes vos uno de los dos flujos de arriba.

## SEO y menús

- Asigná metadescripción si querés control fino en buscadores.
- Actualizá enlaces del menú que aún apunten a `/pages/mi-magia` o al blog viejo para que usen **`/pages/el-portal`** donde corresponda.

## Servicios premium en la sección

- El bloque **Canalización Álmica** solo se muestra a clientes con **`total_spent`** ≥ umbral (por defecto **200000** en subunidad de moneda, p. ej. centavos USD) o con la etiqueta configurada (por defecto **`portal-servicios-premium`**).
- Si tu moneda no usa centavos de la misma forma, ajustá el número en el editor del theme (sección El Portal) o usá solo la etiqueta en clientes elegidos.
