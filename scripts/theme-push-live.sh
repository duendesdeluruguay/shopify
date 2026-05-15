#!/usr/bin/env bash
# Push al tema en vivo SIN pisar lo que configurás en el editor de Shopify
# (fotos en bloques del home, imágenes en cabecera/pie, productos en cartas,
# textos y ajustes que viven en los JSON listados abajo con --ignore).
#
# Uso (desde la raíz del tema):
#   ./scripts/theme-push-live.sh
#   ./scripts/theme-push-live.sh --only sections/mi-seccion.liquid
#
# Antes de tocar o versionar en git los JSON que el editor modifica (home,
# settings globales, grupo de cabecera/pie): shopify theme pull, mergeá con lo
# remoto y recién ahí editá/pusheá a propósito — este script los ignora en el
# push rutinario para que NO desaparezcan las fotos ni textos del customizer.
#
# Para SUBIR cambios de plantilla (orden de secciones, index, etc.) a propósito:
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
  --ignore "templates/index*.json" \
  --ignore "config/settings_data.json" \
  --ignore "sections/header-group.json" \
  --ignore "sections/footer-group.json" \
  "$@"
