# Insurance Cost Analysis – Determinanten von Versicherungskosten

In diesem Projekt analysiere ich zentrale Einflussfaktoren auf Gesundheitsversicherungskosten mithilfe explorativer Datenanalyse und linearer Regressionsmodelle. 

Ziel ist es, statistische Zusammenhänge zu identifizieren und verständlich zu interpretieren.

Das Projekt dient als Lern- und Bewerbungsprojekt für Jobs in der Datenanalyse

Link zum Download: https://raw.githubusercontent.com/stedy/Machine-Learning-with-R-datasets/master/insurance.csv

---

## Allgemeine Information
-Ausreißer wurden nicht selektiert. Stattdessen wurde mit HC3- Korrektur gearbeitet

## 1. Ziel des Projekts

- Analyse individueller Faktoren, die mit Versicherungskosten zusammenhängen  
- Anwendung klassischer Methoden der deskriptiven Statistik und Regression   
- Übungsprojekt zur Übertragung statistischer Ergebnisse in inhaltliche Aussagen

---

## 2. Verwendete Tools & Methoden

Als Interface wurde Pycharm genutzt.

**Tools**
- Python  
- Jupyter Notebook  
- pandas
- numpy  
- matplotlib
- seaborn  
- statsmodels
- scipy
- scikit-learn
- SQlite

**Hinweis zur Modellierung:**
Die Regressionsanalyse wurde sowohl mit **statsmodels** (statistische Inferenz) als auch mit **scikit-learn** (Modellschätzung) umgesetzt. 

**Methoden**
- Explorative Datenanalyse (EDA)  
- Lineare Regression (OLS)  
- Regressionsdiagnostik/Voraussetzungsprüfung  
- Heteroskedastizitäts-robuste Standardfehler (HC3)  
- Explorative Moderationsanalyse (Interaktion: Alter × Rauchen)

---

## 3. Vorgehen

1. Überblick über den Datensatz und Variablenverständnis  
2. Deskriptive Analyse und Visualisierung der Daten, sowie zentraler Zusammenhänge  
3. Schätzung eines linearen Regressionsmodells  
4. Darauf aufbauend: Prüfung auf Heteroskedastizität und robuste Inferenz  
5. Interpretation von Effektgrößen (semi-/partielles R²) 
6. Moderationsanalyse zur Hypothesenprüfung, inkl. Interaktionsgrafik

---

## 4. Zentrale Erkenntnisse

- **Rauchen ist der mit Abstand stärkste Kostentreiber**  
- Alter, BMI und Anzahl der Kinder zeigen robuste positive Effekte  
- Die Versicherungskosten sind stark rechtsschief verteilt   
- Der explorative Interaktionseffekt (Alter × Rauchen) ist unter HC3 nicht signifikant

---

## 5. Projektinhalte

- 📓 **Jupyter Notebook**: vollständige Analyse inkl. Code, Visualisierungen und Interpretation  
- 📄 **Power-BI**: -Ergänzend- strukturierte Darstellung der Ergebnisse als Balken/Liniendiagramm
- **UPDATE: SQlite**: Eine kurze Darstellung der wichtigsten deskriptiven Eckdaten in SQlite

---

## 6. Limitationen

- Der Datensatz ist synthetisch und dient ausschließlich Demonstrationszwecken  
- Ergebnisse sind illustrativ und nicht kausal interpretierbar  

---

## Über mich:

- Masterstudent (M.Sc.) der Psychologie
- Bereits viel Erfahrung mit SPSS (Regressionsanalyse, Moderation-/Mediation in PROCESS, MANOVA, eigene Versuchsplanung). Sowohl per GUI, als auch per Syntax gearbeitet
- Auch mit Python, inkl. Tools, bereits Erfahrungen gesammelt (Studium und Selbststudium), sowie Erfahrung in der Datenpflege und Erstellung im Rahmen von Praktika (Excel und andere MS Office Anwendungen)

📫 Kontakt:  
- E-Mail: fazaud@gmail.com  
