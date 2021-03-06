# This function showcases how one might write a function to be used as an
# RStudio project template. This function will be called when the user invokes
# the New Project wizard using the project template defined in the template file
# at:
#
#   inst/rstudio/templates/project/hello_world.dcf
#
# The function itself just echos its inputs and outputs to a file called INDEX,
# which is then opened by RStudio when the new project is opened.
init_project <- function(path, ...) {

  # ensure path exists
  dir.create(path, recursive = TRUE, showWarnings = FALSE)
  
  # set working directory
  setwd(file.path(getwd(), path))

  # create new folders
  dir.create("src")
  dir.create("data")
  dir.create("output")
  
  # create a test.R file
  file.create("src/test.R")
  
  # Update gitignore file
  writeLines(c("# R specific files", ".Rhistory", ".Rapp.history", ".RData", ".Ruserdata", ".Rproj.user", "*.Rproj", "", "# data folder", "data", "Test file", "src/test.R"), ".gitignore")

}
