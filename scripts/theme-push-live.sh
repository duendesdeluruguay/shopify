#!/usr/bin/env bash
# Push al tema en vivo SIN pisar lo que configurás en el editor de Shopify
# (fotos, productos en bloques, textos del home en JSON).
#
# Uso (desde la raíz del tema):
#   ./scripts/theme-push-live.sh
#   ./scripts/theme-push-live.sh --only sections/mi-seccion.liquid
#
# Antes de tocar o versionar JSON del tema (templates/index*.json,
# config/settings_data.json): hacé shopify theme pull, mergeá con lo remoto
# y recién ahí editá/pusheá esos archivos a propósito — este script los ignora
# a propósito para no pisar el customizer en pushes rutinarios.
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
  "$@"
