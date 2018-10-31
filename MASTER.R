#Master script
#just runs the ui and server

# UI ----------------------------------------------------------------------
# *UI: user interface -----------------------------------------------------
source("./Learning_shiny_apps/ui.R")
# *UI: Aesthetics -----------------------------------------------------

# server ------------------------------------------------------------------
source("./Learning_shiny_apps/server.R")

# Run the app -----------------------------------------------------------
shinyApp(ui = ui,server = server)
