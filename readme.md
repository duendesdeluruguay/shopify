# mi-tienda (tema Shopify)

## Push al tema en vivo (customizer)

**NUNCA** ejecutar `shopify theme push` directo al tema publicado si querés preservar lo que está en el editor: las **fotos que cargás en el customizer** (home, cabecera, pie, colores, textos de bloques) se guardan sobre todo en `config/settings_data.json`, `templates/index*.json` y los grupos `sections/header-group.json` / `sections/footer-group.json`. Un push sin ignorar esos archivos puede **borrar o revertir** esas elecciones en la tienda en vivo.

Usá siempre, desde la raíz del repo:

```bash
./scripts/theme-push-live.sh
```

Ese script usa `--nodelete` y `--ignore` sobre esos JSON para que un deploy de código **no te desaparezcan las fotos** ni el resto del trabajo hecho en el editor. Si necesitás subir cambios de esos archivos a propósito, hacé antes `shopify theme pull`, mergeá con lo remoto, y solo entonces `shopify theme push` consciente (o quitá temporalmente los `--ignore` del script).
