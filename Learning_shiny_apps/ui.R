#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinydashboard)

# Define UI for application that draws a histogram
ui <- dashboardPage(
  dashboardHeader(
    title = "TESTING dashboardheader",
    titleWidth = 30,
    tags$li(class = "dropdown",
            tags$a(("Investigating Shiny models, a HRQL perspective")
            )),
    tags$li(a(href = "https://www.bresmed.com"),
            class = "dropdown")
  ),
  dashboardSidebar(
    width = 250,
    sidebarMenu(
      menuItem(
        "BresMed Shiny model",
        tabName = "tab_Shiny",
        icon = icon("user")
      ),
      menuItem(
        "Introduction",
        tabName = "tab_Intro",
        icon = icon("life-ring")
      ),
      menuItem(
        "Model settings",
        tabName = "tab_general",
        icon = icon("home", lib = "glyphicon"),
        menuSubItem("Model type", tabName = "tab_Model_type"),
        menuSubItem("Other model settings", tabName = "tab_Model_set")),
      menuItem(
        "Inputs",
        tabName = "tab_Inputs",
        icon = icon("pencil", lib = "glyphicon"),
        menuSubItem("Drug costs", tabName = "tab_Drug_costs"),
        menuSubItem("Resource use", tabName = "tab_Resource_use"),
        menuSubItem("Adverse events", tabName = "tab_Adverse_events"),
        menuSubItem("Utilities", tabName = "tab_Utilities")
      ),
      menuItem(
        "Data in model",
        tabName = "tab_modeldata",
        icon = icon("stats", lib = "glyphicon"),
        menuSubItem("Trial data", tabName = "tab_Trial_data"),
        menuSubItem("Propensity score matching data", tabName = "tab_PropScore_data"),
        menuSubItem("KM data", tabName = "tab_KM_data"),
        menuSubItem("General population", tabName = "tab_Gen_pop")
      ),
      menuItem(
        "Efficacy",
        tabName = "tab_Efficacy",
        icon = icon("eye-open", lib = "glyphicon"),
        menuSubItem("Select curves", tabName = "tab_Select_curve"),
        menuSubItem("Active curves", tabName = "tab_Active_curve")
      ),
      menuItem(
        "Parameters list",
        tabName = "tab_Param_list",
        icon = icon("list-ul")
      ),
      menuItem("Model results", tabName = "tab_Model_res", icon = icon("table")),
      menuItem(
        "Results analysis",
        tabName = "tab_Res_analysis",
        icon = icon("bar-chart-o"),
        menuSubItem("Scenario analysis", tabName = "tab_Scen_analysis"),
        menuSubItem("Probabilistic sensitivity analysis", tabName = "tab_Prob_analysis"),
        menuSubItem("Deterministic sensitivity analysis", tabName = "tab_Det_analysis")
      ),
      menuItem(
        "Model QC",
        tabName = "tab_Model_QC",
        icon = icon("check", lib = "glyphicon")
      ),
      menuItem(
        "Budget impact analysis",
        tabName = "tab_BI_analysis",
        icon = icon("piggy-bank", lib = "glyphicon")
      ),
      menuItem(
        "References and information",
        tabName = "tab_Ref_info",
        icon = icon("user")
      )
    )
  )
)
