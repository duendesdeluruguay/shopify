# Taggear productos — Buscador elemental (Home v2)

Este documento alinea el catálogo con la sección **Duendes — Home v2 · Buscador elemental** (`sections/duendes-home-v2-buscador-elemental.liquid`). El buscador filtra productos **disponibles** por **tags** en Shopify (máx. 50 productos de la colección configurada en la sección).

## Tags energéticos (lista cerrada)

Usar **exactamente** estos tags en minúsculas (sin espacios). Convención: prefijo `esencia-` + palabra en ASCII.

| Tag Shopify | Intención |
|-------------|-----------|
| `esencia-proteccion` | Protección, contención, límites sanos |
| `esencia-calma` | Calma, regulación, suavidad |
| `esencia-amor` | Amor, vínculo, apertura del corazón |
| `esencia-fuerza` | Fuerza, voluntad, acción |
| `esencia-abundancia` | Abundancia, flujo, recursos |
| `esencia-sanacion` | Sanación, duelo, integración |
| `esencia-paz` | Paz, silencio, equilibrio |
| `esencia-sabiduria` | Sabiduría, claridad, guía interior |
| `esencia-hogar` | Hogar, raíces, pertenencia |
| `esencia-transformacion` | Transformación, ciclos, cambio profundo |

**Nota:** El mapa de sinónimos del buscador incluye `sueños → magia`. Si querés que esas búsquedas matcheen productos, podés añadir el tag **`esencia-magia`** además de la lista de 10 (opcional, fuera de la lista “cerrada” de esencias principales).

## Sinónimos (referencia rápida)

El buscador normaliza texto (minúsculas, sin acentos) y mapea, entre otros:

- miedo → protección  
- ansiedad → calma  
- tristeza / salud → sanación  
- duelo → sanación + transformación  
- dinero / trabajo → abundancia (+ fuerza en trabajo)  
- pareja → amor  
- casa / hijos → hogar (+ protección en hijos)  
- energía → fuerza  

Si la palabra **no** está en el mapa, se busca un tag literal `esencia-<palabra>` (ej. el usuario escribe “luz” → se intenta `esencia-luz`).

## Productos pendientes de taggear

Marcá aquí a medida que cargués tags en Admin (tabla editable por el equipo).

| Handle / nombre | Tags actuales | Pendiente |
|-----------------|---------------|-----------|
| _(ejemplo)_ | — | `esencia-calma`, `esencia-paz` |
| | | |

## Cómo taguear en Shopify Admin

1. Entrá a **Productos** y abrí el Guardián.
2. En la columna derecha, sección **Product organization** → **Tags**.
3. Escribí el tag exacto (ej. `esencia-proteccion`) y pulsá **Enter** o **Añadir**.
4. Guardá el producto.
5. Repetí para cada esencia que aplique (un producto puede tener **varios** tags `esencia-*`).

**Consejos**

- Mantené los tags en **minúsculas** y sin tildes en el slug (`sanacion`, no `sanación`), para coincidir con el buscador y el JSON generado por Liquid (`| downcase`).
- La sección del buscador usa una **colección** concreta (ej. todos los Guardianes disponibles): solo se leen los **primeros 50** productos disponibles de esa colección. Si el catálogo crece, conviene una colección dedicada “Buscador” con los productos taggeados.

## Respaldo sin coincidencias

En el editor de tema, en la sección **Buscador elemental**, configurá hasta **tres productos de respaldo**. Si no hay matches por tags, se muestran esos tres o, en su defecto, los primeros disponibles de la colección.
