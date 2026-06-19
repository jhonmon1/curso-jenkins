#!/bin/bash

echo "activando el entorno virtual"
source ven/bin/activate

echo "isntalando dependencias"
pip install -r requiriments.txt

echo "ejecutando pruebas con pytest"
pytest tests/ --junitxml=reports/test-results.xml --html=repors/test-results.html -self-contained-html

echo "pruebas finalizadas resultados en reports" 