import streamlit as st
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

# Datos ficticios de asistencias de estudiantes
asistencias = [10, 15, 12, 20, 18, 22, 17, 25, 14, 19, 21, 16, 23, 24, 13, 11, 9, 8, 7, 6, 5, 4, 3, 2, 1]

# Define UI
st.title("Asistencias a Curso de Inteligencia de Negocios")

bins = st.slider("Número de contenedores:", min_value=1, max_value=20, value=10)

# Generar histograma
plt.hist(asistencias, bins=bins, color="skyblue", edgecolor="black")
plt.title("Histograma de Asistencias")
plt.xlabel("Asistencias")
plt.ylabel("Frecuencia")

# Mostrar el histograma en Streamlit
st.pyplot()

