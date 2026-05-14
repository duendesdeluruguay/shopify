# mi-tienda (tema Shopify)

## Push al tema en vivo (customizer)

**NUNCA** ejecutar `shopify theme push` directo al tema publicado si querés preservar lo que está en el editor (fotos del home, `settings_data`, presets de `index*.json`).

Usá siempre, desde la raíz del repo:

```bash
./scripts/theme-push-live.sh
```

Ese script añade `--ignore "templates/index*.json"` y `--ignore "config/settings_data.json"` para no pisar esos archivos en pushes rutinarios. Si necesitás subir cambios de esos JSON a propósito, hacé `shopify theme pull`, mergeá, y usá `shopify theme push` consciente o ajustá temporalmente el script.
