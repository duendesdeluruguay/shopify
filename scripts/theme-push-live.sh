#!/usr/bin/env bash
# Push al tema en vivo SIN pisar lo que configurás en el editor de Shopify
# (fotos, productos en bloques, textos del home en JSON).
#
# Uso (desde la raíz del tema):
#   ./scripts/theme-push-live.sh
#   ./scripts/theme-push-live.sh --only sections/mi-seccion.liquid
#
# Para SUBIR cambios de plantilla (orden de secciones, index, etc.):
#   shopify theme pull …   # traer lo del editor y mergear en git si hace falta
#   shopify theme push …   # sin este script, o quitá los --ignore de abajo.
#
# Tema por defecto: Horizon live (ajustá SHOPIFY_THEME_ID si cambia).
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
THEME_ID="${SHOPIFY_THEME_ID:-134967361633}"

exec shopify theme push \
  --path "$ROOT" \
  --theme "$THEME_ID" \
  --allow-live \
  --nodelete \
  --ignore "config/settings_data.json" \
  --ignore "templates/index.json" \
  --ignore "templates/index.es-uy.json" \
  --ignore "templates/index.es.json" \
  --ignore "templates/index.es-MX.json" \
  --ignore "templates/index.es-419.json" \
  "$@"
