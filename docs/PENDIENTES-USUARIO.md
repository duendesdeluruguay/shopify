# Acciones en Admin (post-deploy batch)

Hacé estos pasos en **Shopify Admin** cuando puedas; el theme ya apunta al blog correcto en el footer rico.

## 0. Redirecciones URL — `/pages/mi-magia` y El Portal

- **Admin → Tienda online → Navegación → Redirecciones de URL** (URL Redirects).
- Si existe una regla que mande **`/pages/mi-magia`** → **`/blogs/comunidad-elemental`** (o al blog antiguo **`/blogs/mi-magia`**), **eliminála**. Esa regla en Admin tiene prioridad y puede anular la página del theme o generar un 302 inesperado.
- Opcional: creá una redirección **`/pages/mi-magia`** → **`/pages/el-portal`** solo si querés un **301** limpio además del HTML/JS de la plantilla `page.mi-magia.liquid`.
- Creá la página **`el-portal`** con plantilla **`page.el-portal`** si todavía no existe: ver **`docs/EL-PORTAL-PENDIENTE.md`**.

## Blog público — artículo «Canalización Álmica»

- **Admin → Contenido → Entradas de blog** (Blog posts).
- Abrí el artículo **Canalización Álmica** que esté en el blog **Comunidad elemental** (o el blog que uses como público).
- Cambiá la visibilidad a **Oculto** (Hidden) o archiválo / eliminálo si ya no debe indexarse.
- El theme también **oculta** en listados la entrada cuyo handle sea `canalizacion-almica` o cuyo título coincida con «Canalización Álmica»; aun así conviene ocultarlo en Admin para SEO y para que no quede accesible por URL directa si no querés que se lea.

## Blog Comunidad Elemental — plantilla con H1 fijo

- En el **editor de tema**, navegá al blog **Comunidad elemental** (`/blogs/comunidad-elemental`).
- **Cambiar plantilla de tema** (o el selector de plantilla en la barra superior) y elegí **`blog.comunidad-elemental`**.
- Eso carga `templates/blog.comunidad-elemental.json`, con el encabezado **Comunidad Elemental** y la línea **EL BLOG · COMUNIDAD ELEMENTAL** sin depender del nombre del blog en Admin. Si no asignás esta plantilla, seguirá aplicándose la plantilla por defecto `blog.json` (H1 = título del blog en Admin).

## 1. Menú principal — link Comunidad Elemental (404)

- **Admin → Tienda online → Navegación → Menú principal** (o el menú que use el header).
- Buscá el ítem que apunte a **`/pages/comunidad-elemental`**.
- Cambiá la URL a **`/blogs/comunidad-elemental`** (o pegá la URL completa del blog).

Opcional: creá también una **redirección URL** de `/pages/comunidad-elemental` → `/blogs/comunidad-elemental` (ver `docs/REDIRECTS-PENDIENTES.md`).

## 2. Renombrar “MI MAGIA ✦” del portal exclusivo → “EL PORTAL ✦”

- En el mismo menú, editá el texto del ítem del **portal post-adopción** (no el blog Mi Magia).
- Poné **EL PORTAL ✦** (ES) o **THE PORTAL ✦** (EN) según el menú que estés editando.
- Referencia de copy en theme: clave `duendes.nav.el_portal` en `locales/*.json` (solo ayuda a documentar; el menú sigue viviendo en Admin).

## 3. Menú en inglés (.com)

- Duplicá el menú principal y traducí títulos/enlaces donde haga falta.
- Si el theme no asigna menú por idioma automáticamente, definí con tu agencia o en Markets cómo mostrar el menú EN (ver `docs/MENU-EN.md`).

## 4. Home v2 — productos y fotos

- **Cartas del Bosque:** asigná un producto en cada bloque “carta” en el editor del theme; si no hay producto, la sección no se muestra en tienda (solo nota en modo diseño).
- **Rito — 3 pasos:** subí imágenes reales en cada bloque “paso” si querés el layout completo.
- **Prueba social:** subí fotos opcionales en cada testimonio.

## 5. Redes en pie de página utilidades

- El grupo **footer utilities** puede tener URLs genéricas de Facebook/Instagram en el customizer; reemplazalas por las oficiales de Duendes si no coinciden con `duendes-footer-rich`.
