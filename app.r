# app.R
library(shiny)
library(shinythemes)
library(fontawesome)

# UI
ui <- fluidPage(
    theme = shinytheme("darkly"),
    tags$head(
        includeCSS("styles.css")  # Incluye el archivo CSS
    ),
    
    # Eliminamos el padding predeterminado del fluidPage
    tags$style(type="text/css", "
        .container-fluid {
            padding-left: 0;
            padding-right: 0;
        }
    "),
    
    navbarPage(
        "Mi Página Personal",
        id = "navbar",
        fluid = TRUE,  # Asegura que la barra de navegación sea fluida
        
        # Página de inicio
        tabPanel("Inicio",
            div(class = "content-section",
                # Imagen desde la web - Reemplaza esta URL con la URL de tu imagen
                tags$img(
                    src = "https://raw.githubusercontent.com/mimurillof/Proyecto-Pagina-Web/refs/heads/main/www/Foto_Miguel_A_Murillo.jpg",  # Reemplaza con tu URL
                    class = "profile-image"
                ),
                
                h1("Bienvenido a mi página personal"),
                hr(),
                h4("Soy [Tu Nombre]"),
                p("Desarrollador/Científico de datos/[Tu profesión]"),
                p("Aquí puedes escribir una breve biografía..."),
                
                # Iconos de contacto (ahora en blanco por el tema oscuro)
                div(class = "contact-icons",
                    a(href = "mailto:tu@gmail.com",
                      fa("envelope")),
                    a(href = "https://github.com/tu-usuario",
                      fa("github")),
                    a(href = "https://linkedin.com/in/tu-perfil",
                      fa("linkedin")),
                    a(href = "https://kaggle.com/tu-usuario",
                      fa("kaggle")),
                    a(href = "https://wa.me/TuNumeroCon54",
                      fa("whatsapp"))
                )
            )
        ),
        
        # Página Sobre Mí
        tabPanel("Sobre Mí",
            div(class = "content-section",
                h2("Sobre Mí"),
                h3("Habilidades"),
                tags$ul(
                    tags$li("R y Análisis de Datos"),
                    tags$li("Desarrollo Web con Shiny"),
                    tags$li("Visualización de Datos")
                )
            )
        ),
        
        # Página de Proyectos
        tabPanel("Proyectos",
            div(class = "content-section",
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

# Server
server <- function(input, output) {
}

# Ejecutar la aplicación
shinyApp(ui = ui, server = server)