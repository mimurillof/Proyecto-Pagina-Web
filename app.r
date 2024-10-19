# app.R
library(shiny)
library(shinythemes)
library(fontawesome)

# Estilo CSS personalizado
custom_css <- "
.navbar {
    background-color: #000000 !important;
}
.navbar-default .navbar-nav > li > a {
    color: #FFFFFF !important;
}
.navbar-default .navbar-brand {
    color: #FFFFFF !important;
}
.contact-icons {
    font-size: 2em;
    margin: 20px 0;
}
.contact-icons a {
    margin: 0 15px;
    color: #000000;
    text-decoration: none;
}
.contact-icons a:hover {
    opacity: 0.7;
}
.bio-section {
    text-align: center;
    padding: 20px;
    margin-bottom: 30px;
}
.profile-image-container {
    width: 250px;
    height: 250px;
    margin: 0 auto 30px auto;
    border-radius: 50%;
    overflow: hidden;
    border: 3px solid #f8f9fa;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}
.profile-image {
    width: 100%;
    height: 100%;
    object-fit: cover;
}
.profile-section {
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 20px;
    background-color: white;
    border-radius: 10px;
    margin: 20px 0;
}
"

# UI
ui <- fluidPage(
  theme = shinytheme("flatly"),
  tags$head(
    tags$style(custom_css)
  ),
  
  # Barra de navegación
  navbarPage(
    "Miguel Angel Murillo Frias",
    
    # Página de inicio
    tabPanel("Inicio",
             fluidRow(
               column(12, 
                      div(class = "profile-section",
                          # Contenedor para la foto de perfil
                          div(class = "profile-image-container",
                              tags$img(
                                src = "www/Foto_Miguel_A_Murillo.jpg", # Aquí deberás poner la ruta a tu foto
                                class = "profile-image",
                                alt = "Foto de perfil"
                              )
                          ),
                          
                          h1("Bienvenido a mi página personal"),
                          hr(),
                          h4("Soy [Tu Nombre]"),
                          p("Desarrollador/Científico de datos/[Tu profesión]"),
                          p("Aquí puedes escribir una breve biografía que describa tu experiencia, 
                          intereses y objetivos profesionales. Este texto ayudará a los visitantes 
                          a conocerte mejor y entender tu perfil profesional."),
                          
                          # Sección de contactos con iconos
                          div(class = "contact-icons",
                              # Gmail
                              a(href = "mailto:tu@gmail.com",
                                title = "Email",
                                fa("envelope", fill = "black")),
                              
                              # GitHub
                              a(href = "https://github.com/tu-usuario",
                                title = "GitHub",
                                fa("github", fill = "black")),
                              
                              # LinkedIn
                              a(href = "https://linkedin.com/in/tu-perfil",
                                title = "LinkedIn",
                                fa("linkedin", fill = "black")),
                              
                              # Kaggle
                              a(href = "https://kaggle.com/tu-usuario",
                                title = "Kaggle",
                                fa("kaggle", fill = "black")),
                              
                              # WhatsApp
                              a(href = "https://wa.me/TuNumeroCon54",
                                title = "WhatsApp",
                                fa("whatsapp", fill = "black"))
                          )
                      )
               )
             )
    ),
    
    # Página Sobre Mí
    tabPanel("Sobre Mí",
             fluidRow(
               column(8, offset=2,
                      h2("Sobre Mí"),
                      h3("Habilidades"),
                      tags$ul(
                        tags$li("R y Análisis de Datos"),
                        tags$li("Desarrollo Web con Shiny"),
                        tags$li("Visualización de Datos")
                      )
               )
             )
    ),
    
    # Página de Proyectos
    tabPanel("Proyectos",
             fluidRow(
               column(8, offset=2,
                      h2("Mis Proyectos"),
                      div(
                        h3("Proyecto 1"),
                        p("Descripción del proyecto..."),
                        hr(),
                        h3("Proyecto 2"),
                        p("Descripción del proyecto...")
                      )
               )
             )
    )
  )
)

# Server
server <- function(input, output) {
  # Aquí puedes agregar la lógica del servidor si es necesaria
}

# Ejecutar la aplicación
shinyApp(ui = ui, server = server)