# Data-Driven E-Commerce Growth: Pipeline de Inteligencia y Pronóstico de Demanda (Olist)

![Status](https://img.shields.io/badge/Status-Phase_1_Completed-success)
![Focus](https://img.shields.io/badge/Focus-Quantitative_Analysis_%26_Forecasting-blue)
![Power BI](https://img.shields.io/badge/PowerBI-F2C811?style=flat&logo=powerbi&logoColor=black)
![Python](https://img.shields.io/badge/Python-3776AB?style=flat&logo=python&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-00000F?style=flat&logo=mysql&logoColor=white)
![LaTeX](https://img.shields.io/badge/LaTeX-47A141?style=flat&logo=latex&logoColor=white)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=flat&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/alandrodmar)



Este repositorio contiene el desarrollo de un proyecto de análisis diseñado para transformar los datos transaccionales del marketplace **Olist (Brasil)** en herramientas de decisión estratégica, en las áreas de ventas y logística. El proyecto integra la creación de una base de datos en MySQL a partir de archivos CSV, validación estadística y visualización para establecer la base de un futuro modelo de pronóstico de demanda.

---

## Hallazgos Principales (Fase 1: Diagnóstico Operativo)

![Dashboard Overview](Dashboards/Rendimiento_Operativo_y_Salud_de_Ventas_(Fase_1).png)

Tras el procesamiento de +100k registros, que indicaron ingresos de **$13.22M**, se identificó lo siguiente:

* **Crecimiento Orgánico:** El ticket promedio presenta una estabilidad notable, en torno a  **\$137.04**. Se validó una alta correlación ($\rho$) entre el volumen de pedidos y los ingresos diarios mediante el coeficiente de Spearman. Este análisis, realizado tras confirmar la no-normalidad de la serie ($R^2 < 0.90$ en Q-Q Plots y el rechazo de la hipótesis nula de la prueba de Shapiro-Wilk ($p \ll 0.05$)), ratifica que la expansión financiera es impulsada directamente por la cantidad de pedidos y no por una inflación en los precios unitarios, evidenciando la escalabilidad operativa del modelo de negocio.

* **Salud Operativa y Eficiencia Logística:** Se identificó una robustez operativa significativa, con una tasa de entregas efectivas del 97.02% frente a un índice marginal de cancelaciones del 0.63%.

* **Estacionalidad Intrasemanal:** Se detectó que la cantidad de pedidos recibidos disminuye conforme avanza la semana. La demanda máxima se concentra los días Lunes y Martes, seguido de una contracción de $\approx 32$% los Sábados. Este hallazgo fue validado estadísticamente mediante el análisis de la Función de Autocorrelación (ACF), confirmando una periodicidad estructural de 7 días. Este hallazgo permite la optimización en la planificación de la cadena de suministros asignando más recursos logísticos al inicio que al fin de la semana.

* **Impacto de Eventos Masivos Externos (Black Friday):** Se cuantificó que el evento del *Black Friday* genera un flujo de ingresos, aproximadamente, **7x** superior al promedio diario. Dada la naturaleza de la serie, este evento se clasifica como un fenómeno de "cola pesada". Esto implica que el evento no debe ser tratado como ruido estadístico, sino como una anomalía estructural y requiere un modelado estacional para asegurar la precisión del pronóstico en la segunda fase.

---

## Metodología y Herramientas

El flujo de trabajo se estructuró bajo un enfoque de tres etapas:

1.  **Etapa de Datos (SQL & ETL):** Simulación de un entorno empresarial mediante **MySQL**. Se desarrolló un pipeline en Python para la migración de +100k registros desde archivos CSV hacia el servidor SQL, posteriormente, se implementó una limpieza de duplicados y un filtrado por estado del pedido ("delivered"), garantizando que el análisis se base en ingresos efectivos y no en órdenes canceladas, en tránsito o sin información disponible.
2.  **Etapa de Análisis (Python):** 
    * **Análisis Exploratorio (EDA):** Identificación de sesgos por densidad de datos (comparativa multianual 2016-2018).
    * **Estadística:** Mapeo de cuantiles teóricos vs reales y tests estadísticos para determinar la normalidad de las series de tiempo y el nivel de correlación entre las variables involucradas (cantidad de pedidos e ingresos diarios), así como la obtención del ticket mensual promedio e información sobre la logística.
3.  **Etapa de Inteligencia (Power BI):** Desarrollo de un Dashboard ejecutivo interactivo para el análisis dinámico intrasemanal y monitoreo de la salud operativa.

**Tecnologías:** Python (`pandas`, `scipy`, `matplotlib`, `plotly`), Power BI (Dashboard), MySQL (Base de datos), LaTeX (Documentación técnica).

---

## Estructura del Proyecto

* `Pronóstico_Demanda_Olist.ipynb`: Notebook con el pipeline de limpieza, validación estadística y visualizaciones.
* `Data_query_1.sql`: Script optimizado para la extracción de métricas operativas desde MySQL.
* `Reporte_Operativo_Olist-(Fase I).pdf`: Reporte técnico.
* `Rendimiento Operativo y Salud de Ventas (Fase I).pbix`: Archivo de Power BI con el análisis visual interactivo.

---

**Autor:** Aland Rodríguez Martín del Campo  
*Physicist | Data Analyst*