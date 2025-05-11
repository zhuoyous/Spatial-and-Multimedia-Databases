# Spatial-and-Multimedia-Databases


This repository contains five homework assignments from the CSCI585 course at USC. Topics span ER modeling, spatial SQL queries, GIS data handling, KML/shapefile processing, and multimedia data recognition using deep learning.

---

##  Folder Overview

### `hw1/` — **Entity-Relationship Design (ERD)**
- `HW1.png`: Visual representation of an Entity-Relationship Diagram.
- `README.txt`: Extensive documentation describing 19 entities, their attributes, primary and foreign keys, and relationships (1:1, 1:N, M:N).
  
> **Focus:** Full relational database design for a student-instructor-project environment including weak entities, bridge tables, and business rule-driven relationships.

---

### `hw2/` — **Spatial SQL Queries**
- `Q1.sql` to `Q5_V3.sql`: SQL scripts addressing spatial queries such as containment, distance, joins, and spatial intersections. Multiple versions of Q5 indicate optimization or refinement.

> **Focus:** Practicing advanced SQL for spatial databases like PostGIS or Oracle Spatial. Includes geometry processing and spatial filtering.

---

### `hw3/` — **GIS Data Processing & Visualization**
- `point creation.py`: Python script to generate and manipulate spatial point data.
- `spiro-line.*`, `spiro-point.*`: Complete shapefiles for line and point geometries (includes `.shp`, `.dbf`, `.shx`, `.prj`, `.cpg`).
- `spiro.kml`, `starter_kml.kml`: KML files for viewing results in Google Earth.
- `coordinates.txt`, `location.txt`: Raw spatial data.
- `.PNG` files (`Q3.PNG`, `Q5.PNG`, etc.): Visual outputs or screenshots from spatial tasks.

> **Focus:** End-to-end workflow: raw coordinate data → shapefile/KML creation → visualization. Reinforces geospatial data formatting and transformation skills.

---

### `hw4/` — **Regression Model Interpretation**
- `Q1.PNG`, `Q2.PNG`, `Q3.PNG`: Visuals related to regression outputs.
- `README.txt`: Describes interpretation of linear regression formulas for predicting variables like housing price (`MEDV`) and abalone age (`num_rings`).

> **Focus:** Analyzing linear regression results from multivariable models, likely produced by a tool like scikit-learn or statsmodels. Interprets coefficients and variable significance.

---

### `hw5/` — **Multimedia Recognition using CNNs**
- `Q1/`: Contains `Q1.PNG` and `weights.h5` – a Keras-trained model.
- `Q2/`: Contains test images (`what1.jpg`, `what2.jpg`) and `Q2.PNG` showing results.
- `Q3/`: Additional image classification results using `corgi.jpg` and others.

> **Focus:** Building and applying Convolutional Neural Networks (CNNs) for multimedia data classification. Demonstrates hands-on experience with model training, inference, and performance visualization.

---

##  Technologies & Tools Used

- **SQL**: PostGIS / Oracle Spatial for geometric queries.
- **Python**: Data manipulation, GIS scripting, CNN training (e.g., with TensorFlow/Keras).
- **GIS Software**: QGIS, ArcGIS for shapefile and KML visualization.
- **Google Earth**: For viewing `.kml` outputs.
- **Deep Learning**: Keras with saved `.h5` models for multimedia classification.

---

##  Summary

This repository captures real-world projects involving spatial databases, geographic data visualization, regression analysis, and neural networks. It combines database modeling and querying with modern data science workflows across structured and unstructured data formats.


---


