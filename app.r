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
            tags$div(class = "content-section",
                # Imagen desde la web - Reemplaza esta URL con la URL de tu imagen
                tags$img(
                    src = "https://raw.githubusercontent.com/mimurillof/Proyecto-Pagina-Web/refs/heads/main/www/Foto_Miguel_A_Murillo.jpg",  # Reemplaza con tu URL
                    class = "profile-image"
                ),
                
                tags$h1("Bienvenido a mi página personal"),
                tags$hr(),
                tags$h4("Soy [Tu Nombre]"),
                tags$p("Desarrollador/Científico de datos/[Tu profesión]"),
                tags$p("Aquí puedes escribir una breve biografía..."),
                
                # Iconos de contacto (ahora en blanco por el tema oscuro)
                tags$div(class = "contact-icons",
                    tags$a(href = "mailto:tu@gmail.com",
                      fa("envelope")),
                    tags$a(href = "https://github.com/tu-usuario",
                      fa("github")),
                    tags$a(href = "https://linkedin.com/in/tu-perfil",
                      fa("linkedin")),
                    tags$a(href = "https://kaggle.com/tu-usuario",
                      fa("kaggle")),
                    tags$a(href = "https://wa.me/TuNumeroCon54",
                      fa("whatsapp"))
                )
            )
        ),
        
        # Página Sobre Mí
        tabPanel("Sobre Mí",
            tags$div(class = "content-section",
                tags$h2("Sobre Mí"),
                tags$h3("Habilidades"),
                tags$ul(
                    tags$li("R y Análisis de Datos"),
                    tags$li("Desarrollo Web con Shiny"),
                    tags$li("Visualización de Datos")
                )
            )
        ),
        
        # Página de Proyectos
        tabPanel("Proyectos",
            tags$div(class = "content-section",
                tags$h2("Mis Proyectos"),
                tags$div(class = "row",
                    tags$div(class = "col-md-4",
                        tags$div(class = "card mb-3",
                            tags$h3(class = "card-header", "Card header"),
                            tags$div(class = "card-body",
                                tags$h5(class = "card-title", "Special title treatment"),
                                tags$h6(class = "card-subtitle text-muted", "Support card subtitle")
                            ),
                            tags$svg(xmlns = "http://www.w3.org/2000/svg", class = "d-block user-select-none", width = "100%", height = "200", `aria-label` = "Placeholder: Image cap", focusable = "false", role = "img", preserveAspectRatio = "xMidYMid slice", viewBox = "0 0 318 180", style = "font-size:1.125rem;text-anchor:middle",
                                tags$rect(width = "100%", height = "100%", fill = "#868e96"),
                                tags$text(x = "50%", y = "50%", fill = "#dee2e6", dy = ".3em", "Image cap")
                            ),
                            tags$div(class = "card-body",
                                tags$p(class = "card-text", "Some quick example text to build on the card title and make up the bulk of the card's content.")
                            ),
                            tags$ul(class = "list-group list-group-flush",
                                tags$li(class = "list-group-item", "Cras justo odio"),
                                tags$li(class = "list-group-item", "Dapibus ac facilisis in"),
                                tags$li(class = "list-group-item", "Vestibulum at eros")
                            ),
                            tags$div(class = "card-body",
                                tags$a(href = "#", class = "card-link", "Card link"),
                                tags$a(href = "#", class = "card-link", "Another link")
                            ),
                            tags$div(class = "card-footer text-muted", "2 days ago")
                        )
                    ),
                    tags$div(class = "col-md-4",
                        tags$div(class = "card mb-3",
                            tags$h3(class = "card-header", "Card header"),
                            tags$div(class = "card-body",
                                tags$h5(class = "card-title", "Special title treatment"),
                                tags$h6(class = "card-subtitle text-muted", "Support card subtitle")
                            ),
                            tags$svg(xmlns = "http://www.w3.org/2000/svg", class = "d-block user-select-none", width = "100%", height = "200", `aria-label` = "Placeholder: Image cap", focusable = "false", role = "img", preserveAspectRatio = "xMidYMid slice", viewBox = "0 0 318 180", style = "font-size:1.125rem;text-anchor:middle",
                                tags$rect(width = "100%", height = "100%", fill = "#868e96"),
                                tags$text(x = "50%", y = "50%", fill = "#dee2e6", dy = ".3em", "Image cap")
                            ),
                            tags$div(class = "card-body",
                                tags$p(class = "card-text", "Some quick example text to build on the card title and make up the bulk of the card's content.")
                            ),
                            tags$ul(class = "list-group list-group-flush",
                                tags$li(class = "list-group-item", "Cras justo odio"),
                                tags$li(class = "list-group-item", "Dapibus ac facilisis in"),
                                tags$li(class = "list-group-item", "Vestibulum at eros")
                            ),
                            tags$div(class = "card-body",
                                tags$a(href = "#", class = "card-link", "Card link"),
                                tags$a(href = "#", class = "card-link", "Another link")
                            ),
                            tags$div(class = "card-footer text-muted", "2 days ago")
                        )
                    ),
                    tags$div(class = "col-md-4",
                        tags$div(class = "card mb-3",
                            tags$h3(class = "card-header", "Card header"),
                            tags$div(class = "card-body",
                                tags$h5(class = "card-title", "Special title treatment"),
                                tags$h6(class = "card-subtitle text-muted", "Support card subtitle")
                            ),
                            tags$svg(xmlns = "http://www.w3.org/2000/svg", class = "d-block user-select-none", width = "100%", height = "200", `aria-label` = "Placeholder: Image cap", focusable = "false", role = "img", preserveAspectRatio = "xMidYMid slice", viewBox = "0 0 318 180", style = "font-size:1.125rem;text-anchor:middle",
                                tags$rect(width = "100%", height = "100%", fill = "#868e96"),
                                tags$text(x = "50%", y = "50%", fill = "#dee2e6", dy = ".3em", "Image cap")
                            ),
                            tags$div(class = "card-body",
                                tags$p(class = "card-text", "Some quick example text to build on the card title and make up the bulk of the card's content.")
                            ),
                            tags$ul(class = "list-group list-group-flush",
                                tags$li(class = "list-group-item", "Cras justo odio"),
                                tags$li(class = "list-group-item", "Dapibus ac facilisis in"),
                                tags$li(class = "list-group-item", "Vestibulum at eros")
                            ),
                            tags$div(class = "card-body",
                                tags$a(href = "#", class = "card-link", "Card link"),
                                tags$a(href = "#", class = "card-link", "Another link")
                            ),
                            tags$div(class = "card-footer text-muted", "2 days ago")
                        )
                    )
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