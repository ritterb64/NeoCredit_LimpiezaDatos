# NeoCredit_LimpiezaDatos
# 🏦 Limpieza y Calidad de Datos — NeoCredit SA

## 📌 Descripción del proyecto

Este proyecto tiene como finalidad realizar un proceso de **limpieza, transformación, escalado, normalización y validación de datos** sobre un conjunto de datos relacionado con solicitudes de crédito de la empresa **NeoCredit SA**.

El objetivo principal es mejorar la calidad de la información mediante la identificación y tratamiento de **valores nulos, registros duplicados, datos inconsistentes, valores atípicos, errores en tipos de datos y formatos diferentes**, con el propósito de obtener un conjunto de datos más confiable y preparado para procesos posteriores de análisis de datos y Machine Learning.

## 👥 Integrantes

* Ritter Briones
* Mariana Mora
* Anthony Polo

**Docente:** Adriana Collaguazo

---

## 🎯 Objetivos

### Objetivo general

Aplicar técnicas de preprocesamiento y limpieza de datos para mejorar la calidad del dataset de solicitudes de crédito de NeoCredit SA y generar información confiable para futuros procesos de análisis y modelado.

### Objetivos específicos

* Identificar valores faltantes y analizar su distribución.
* Detectar y eliminar registros duplicados.
* Identificar valores atípicos e inconsistencias en las variables.
* Corregir errores en los tipos de datos.
* Unificar categorías y formatos inconsistentes.
* Tratar valores nulos mediante eliminación e imputación.
* Convertir variables numéricas a formatos adecuados.
* Normalizar y escalar variables numéricas.
* Validar automáticamente la calidad del dataset mediante reglas definidas con Pandera.

---

## 📊 Dataset

El proyecto utiliza el archivo:

`solicitudes_credito_neocredit.csv`

El dataset inicial contiene:

* **669 registros**
* **21 columnas**

Entre las principales variables se encuentran:

* `id_solicitud`
* `id_cliente`
* `nombre_cliente`
* `edad`
* `genero`
* `ciudad`
* `ingreso_mensual`
* `tipo_empleo`
* `antiguedad_laboral_meses`
* `monto_solicitado`
* `plazo_meses`
* `score_buro_externo`
* `deuda_actual`
* `num_tarjetas_activas`
* `historial_pagos_atrasados`
* `fecha_solicitud`
* `canal_solicitud`
* `dispositivo`
* `ip_pais`
* `resultado_solicitud`
* `fraude_flag`

Durante la exploración inicial se identificaron problemas como valores faltantes en diferentes columnas y variables almacenadas con tipos de datos incorrectos, por ejemplo `ingreso_mensual`, que inicialmente se encontraba como tipo `object` en lugar de numérico.

---

## 🛠️ Tecnologías y librerías utilizadas

El proyecto fue desarrollado utilizando **Python** y las siguientes librerías:

* **Pandas:** manipulación y análisis de datos.
* **NumPy:** operaciones numéricas.
* **Missingno:** visualización de valores faltantes.
* **Scikit-learn:** imputación, escalado y normalización.
* **Pandera:** validación automática de reglas de calidad.
* **YData Profiling:** generación de reportes de calidad de datos.

---

## 🔎 Metodología

El proceso de limpieza y preparación de datos se dividió en las siguientes etapas:

### 1. Preparación del entorno

Se instalaron e importaron las librerías necesarias para realizar la exploración, limpieza, transformación y validación del dataset.

### 2. Exploración inicial y perfilado

Se realizó una inspección de la estructura del dataset mediante:

* Tipos de datos.
* Cantidad de registros.
* Cantidad de valores nulos.
* Estadísticas descriptivas.
* Identificación de valores atípicos.
* Visualización de patrones de datos faltantes.
* Generación de un reporte de calidad.

Durante esta etapa se detectaron valores atípicos, como edades menores de 18 años y valores superiores a 100 años, además de valores negativos en `antiguedad_laboral_meses`.

### 3. Tratamiento de datos faltantes y duplicados

Se aplicaron diferentes estrategias para mejorar la calidad de los registros:

* Eliminación de filas completamente vacías.
* Identificación y eliminación de registros duplicados.
* Eliminación de la columna `genero`.
* Imputación de valores faltantes.
* Uso de la mediana para completar valores faltantes en `ingreso_mensual`.
* Imputación de valores faltantes en `fecha_solicitud`.

Inicialmente se identificaron **6 filas completamente vacías**, que fueron eliminadas, y posteriormente se detectaron y eliminaron **13 registros duplicados**.

### 4. Corrección de inconsistencias

Se realizaron diferentes procesos de estandarización y limpieza:

* Unificación de nombres de ciudades.
* Unificación de categorías de canales de solicitud.
* Estandarización de dispositivos.
* Normalización de tipos de empleo.
* Unificación de resultados de las solicitudes.
* Corrección de nombres de clientes con caracteres inconsistentes.
* Eliminación de clientes que tenían diferentes nombres asociados al mismo `id_cliente`.

Como resultado del control de consistencia, se identificaron clientes asociados a múltiples nombres y se eliminaron los registros correspondientes. Después del proceso, no quedaron clientes con múltiples nombres asociados.

### 5. Tratamiento de valores numéricos

Se realizaron diferentes transformaciones sobre las variables numéricas:

* Conversión de `ingreso_mensual` a tipo numérico.
* Conversión de valores negativos a positivos cuando correspondía.
* Tratamiento de valores nulos.
* Eliminación de registros con edad menor a 18 años.
* Corrección de valores negativos en `antiguedad_laboral_meses`.
* Tratamiento de valores negativos y nulos en `score_buro_externo`.

La variable `ingreso_mensual` fue limpiada eliminando el símbolo `$`, convirtiéndola a tipo numérico y aplicando imputación mediante la mediana.

### 6. Tratamiento de fechas

La variable `fecha_solicitud` presentaba diferentes formatos de fecha, por lo que se realizó un proceso de conversión para unificar los registros en el formato:

`YYYY-MM-DD`

Posteriormente, los valores faltantes fueron tratados mediante imputación con `bfill`.

### 7. Escalado y normalización

Se aplicaron diferentes técnicas de transformación sobre las variables numéricas:

* **MinMaxScaler**
* **RobustScaler**
* **MaxAbsScaler**
* **StandardScaler**
* **PowerTransformer**
* **Normalizer L2**

La variable `fraude_flag` fue excluida del escalado al considerarse como variable objetivo.

Durante la aplicación de `PowerTransformer` con el método **Box-Cox** se identificó que algunas variables contenían valores cero, por lo que Box-Cox no era aplicable directamente. Debido a esta situación, se consideró el método **Yeo-Johnson**, que permite trabajar con valores cero y negativos.

### 8. Validación automatizada

Finalmente, se implementó un esquema de validación utilizando **Pandera** para comprobar el cumplimiento de reglas de calidad.

Entre las reglas establecidas se encuentran:

* `id_solicitud` debe ser único y no nulo.
* `id_cliente` y `nombre_cliente` no deben contener valores nulos.
* `edad` debe ser mayor o igual a 18 años.
* `ingreso_mensual` debe ser mayor o igual a 0.
* `antiguedad_laboral_meses` debe ser mayor o igual a 0.
* `monto_solicitado` y `plazo_meses` deben ser mayores que 0.
* `score_buro_externo` debe ser mayor o igual a 0.
* `deuda_actual` debe ser mayor o igual a 0.
* `num_tarjetas_activas` e `historial_pagos_atrasados` deben ser mayores o iguales a 0.
* `fraude_flag` debe contener únicamente los valores 0 o 1.

## La validación automatizada realizada con Pandera indica que el dataset procesado cumple con las reglas de calidad definidas.

## 📈 Resultados principales

Como resultado del proceso de limpieza y transformación:

* Se eliminaron registros completamente vacíos.
* Se eliminaron registros duplicados.
* Se corrigieron categorías inconsistentes.
* Se trataron valores faltantes.
* Se eliminaron registros con edades menores a 18 años.
* Se corrigieron valores negativos en variables donde no eran válidos.
* Se transformó `ingreso_mensual` a formato numérico.
* Se estandarizaron las fechas al formato `YYYY-MM-DD`.
* Se aplicaron técnicas de escalado y normalización.
* Se implementó un proceso de validación automatizada mediante Pandera.
* El dataset procesado cumplió con las reglas de calidad establecidas.

---

## 📁 Estructura sugerida del repositorio

```text
📦 NeoCredit-Limpieza-Datos
│
├── 📄 README.md
├── 📓 Limpieza_Datos_NeoCredit.ipynb
├── 📊 solicitudes_credito_neocredit.csv
│
└── 📂 resultados
    ├── datos_procesados.csv
    └── reporte_calidad.html
```

---

## 🚀 Conclusiones

El proceso de limpieza permitió identificar y corregir diferentes problemas de calidad presentes en el dataset de NeoCredit SA. La aplicación de técnicas de eliminación, imputación, transformación, escalado y normalización permitió obtener información más consistente y estructurada.

Además, la implementación de reglas de validación automatizada mediante Pandera permite establecer controles que facilitan la detección de errores y ayudan a mantener la calidad de los datos. De esta manera, el dataset queda mejor preparado para futuros procesos de análisis de datos, generación de modelos predictivos y aplicaciones de Machine Learning.

---

## 👩‍💻 Autores

**Ritter Briones**
**Mariana Mora**
**Anthony Polo**

**Profesora:** Adriana Collaguazo

