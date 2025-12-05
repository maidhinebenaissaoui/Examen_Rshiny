library(shiny)
library(dplyr)
library(DT)
library(bslib)
library(thematic)
library(plotly)
library(ggplot2)
library(shinylive)
data("diamonds")

#UI
ui <- page_fluid(
  theme = bs_theme(version = 4 , bootswatch = "minty"), 
  titlePanel("Exploration Diamonds"),  #Titre de l'app
  
  sidebarLayout(                      #Partie avec le choix des couleurs/ prix et slide bar 
    
    sidebarPanel(
      
      radioButtons(inputId = "couleur_graph_rose",
                   label = "Colorier en rose ?",#Titre
                   choices = c("Oui", "Non"), #boutons avec les deux choix 
                   selected = "non"),  #non de base
      selectInput(inputId = "choix_couleurs_filtre",
                  label = "Choisir une couleur à filtrer :", #Titre 
                  choices = levels(diamonds$color), #Onglet avec les couleurs des diamands comme choix 
                  selected = "D") ,  #D de base 
      sliderInput(inputId = "choix_prix_filtre",
                  label = "Prix maximum :", #Titre 
                  min = 0,
                  max = 20000,
                  value = 5000),
      
      actionButton(inputId = "bouton_visu_graph", #Bouton lancant graph (voir partie Serveur)
                   label = "Visualiser le graph")#Valeur de base  
    )))  