# app.R
library(shiny)
library(shinythemes)
library(fontawesome)

# Estilo CSS actualizado
custom_css <- "
body {
    padding: 0;
    margin: 0;
    width: 100%;
}
.container-fluid {
    padding-left: 0;
    padding-right: 0;
}
.navbar {
    margin-bottom: 0;
    border-radius: 0;
}
.navbar-default {
    border: none;
}
.content-section {
    text-align: center;
    padding: 20px;
    max-width: 1200px;
    margin: 0 auto;
}
.contact-icons {
    font-size: 2em;
    margin: 20px 0;
}
.contact-icons a {
    margin: 0 15px;
    color: #FFFFFF;
    text-decoration: none;
}
.contact-icons a:hover {
    opacity: 0.7;
    color: #FFFFFF;
}
.profile-image {
    width: 300px;
    height: 300px;
    border-radius: 50%;
    object-fit: cover;
    margin: 20px;
    box-shadow: 0 4px 6px rgba(0,0,0,0.1);
}
"

# UI
ui <- fluidPage(
    theme = shinytheme("darkly"),
    tags$head(
        tags$style(custom_css)
    ),
    
    # Eliminamos el padding predeterminado del fluidPage
    tags$style(type="text/css", "
        .container-fluid {
            padding-left: 0;
            padding-right: 0;
        }
    "),
    
    navbarPage(
        "Miguel A. Murillo",  # Título de la página
        id = "navbar",
        fluid = TRUE,
        
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
                h4("Soy Miguel Angel Murillo Frias"),
                p("Desarrollador/Científico de datos/Analista Financiero"),
                p("Nací en la vibrante ciudad de Bogotá, Colombia, un lugar renombrado por su rica cultura y su papel crucial en la educación y la tecnología a lo largo de América Latina. Soy estudiante de estadística en la Universidad Nacional de Colombia y de análisis y desarrollo de software en el SENA, lo que me coloca en una posición privilegiada para integrar la teoría matemática con aplicaciones tecnológicas prácticas. Mi pasión por la ciencia ficción y la tecnología, sumada a mi interés en los avances de la inteligencia artificial, me proporcionan no solo una comprensión profunda de las herramientas actuales, sino que también me preparan para ser parte de la vanguardia de innovadores en sectores productivos. Con mi educación y mi entusiasmo, estoy destinado a hacer una contribución significativa al mundo de la tecnología y la estadística."),
                
                # Iconos de contacto
                div(class = "contact-icons",
                    a(href = "mimurillof@unal.edu.co",
                      fa("envelope")),
                    a(href = "https://github.com/mimurillof",
                      fa("github")),
                    a(href = "https://www.linkedin.com/in/miguel-angel-murillo-frias-66baaa244/",
                      fa("linkedin")),
                    a(href = "https://www.kaggle.com/miguelangelmurillo",
                      fa("kaggle")),
                    a(href = "https://wa.link/sarz8h",
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