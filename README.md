Réalisé par Maidhine Benaissaoui

Examen R Shiny : Reproduction d'Application

Ce dépôt contient le code source pour l'examen de programmation R Shiny.

📅 Échéance

Date limite : 07 décembre 2025

🎯 Objectif

L'objectif est de reproduire fidèlement l'application Shiny suivante :

🔗 https://ensp-exam.vercel.app/

🛠 Spécifications Techniques

Interface & Thème

Utilisation d'un thème Bootstrap 5 (bslib).

Inputs : radioButtons, selectInput, sliderInput, actionButton.

Données

Utilisation du jeu de données diamonds inclus dans le package ggplot2.

Visualisations

Graphique interactif : Nuage de points réalisé avec ggplot2 et converti en plotly.

Tableau de données : Affichage interactif avec le package DT.

📦 Packages Requis

Pour lancer l'application, les librairies suivantes sont nécessaires :

library(shiny)
library(dplyr)
library(ggplot2)
library(shinylive)
library(DT)
library(bslib)
library(thematic)
library(plotly)
 
