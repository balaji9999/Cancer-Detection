#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("cancer data"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            radioButtons("s","select x-axis:",
                         list("radius_mean"="a1","texture_mean"='b1',"perimeter_mean"="c1","area_mean"="d1","smoothness_mean"="e1","compactness_mean"="f1","concavity_mean"="g1","concave.points_mean"="h1","symmetry_mean"="i1","fractal_dimension_mean"="j1","radius_se"="k1","texture_se"="l1","perimeter_se"="m1","area_se"="n1","smoothness_se"="o1","compactness_se"="p1","concavity_se"="q1","concave.points_se"="r1","symmetry_se"="s1","fractal_dimension_se"="t1","radius_worst"="u1","texture_worst"="v1","perimeter_worst"="w1","area_worst"="x1","smoothness_worst"="y1","compactness_worst"="z1","concavity_worst"="a11","concave.points_worst"="b11","symmetry_worst"="c11","fractal_dimension_worst"="d11","diagnosis"="e11")),
            radioButtons("k","select y-axis:",
                         list("radius_mean"="a2","texture_mean"='b2',"perimeter_mean"="c2","area_mean"="d2","smoothness_mean"="e2","compactness_mean"="f2","concavity_mean"="g2","concave.points_mean"="h2","symmetry_mean"="i2","fractal_dimension_mean"="j2","radius_se"="k2","texture_se"="l2","perimeter_se"="m2","area_se"="n2","smoothness_se"="o2","compactness_se"="p2","concavity_se"="q2","concave.points_se"="r2","symmetry_se"="s2","fractal_dimension_se"="t2","radius_worst"="u2","texture_worst"="v2","perimeter_worst"="w2","area_worst"="x2","smoothness_worst"="y2","compactness_worst"="z2","concavity_worst"="a12","concave.points_worst"="b12","symmetry_worst"="c12","fractal_dimension_worst"="d12","diagnosis"="e12"))
        ),

        # Show a plot of the generated distribution
        mainPanel(
           plotOutput("distPlot")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$distPlot <- renderPlot({
        # generate bins based on input$bins from ui.R
        if(input$s=='a1'){i<-1}
        if(input$s=='b1'){i<-2}
        if(input$s=='c1'){i<-3}
        if(input$s=='d1'){i<-4}
        if(input$s=='e1'){i<-5}
        if(input$s=='f1'){i<-6}
        if(input$s=='g1'){i<-7}
        if(input$s=='h1'){i<-8}
        if(input$s=='i1'){i<-9}
        if(input$s=='j1'){i<-10}
        if(input$s=='k1'){i<-11}
        if(input$s=='l1'){i<-12}
        if(input$s=='m1'){i<-13}
        if(input$s=='n1'){i<-14}
        if(input$s=='o1'){i<-15}
        if(input$s=='p1'){i<-16}
        if(input$s=='q1'){i<-17}
        if(input$s=='r1'){i<-18}
        if(input$s=='s1'){i<-19}
        if(input$s=='t1'){i<-20}
        if(input$s=='u1'){i<-21}
        if(input$s=='v1'){i<-22}
        if(input$s=='w1'){i<-23}
        if(input$s=='x1'){i<-24}
        if(input$s=='y1'){i<-25}
        if(input$s=='z1'){i<-26}
        if(input$s=='a11'){i<-27}
        if(input$s=='b11'){i<-28}
        if(input$s=='c11'){i<-29}
        if(input$s=='d11'){i<-30}
        if(input$s=='e11'){i<-31}
        if(input$k=='a2'){j<-1}
        if(input$k=='b2'){j<-2}
        if(input$k=='c2'){j<-3}
        if(input$k=='d2'){j<-4}
        if(input$k=='e2'){j<-5}
        if(input$k=='f2'){j<-6}
        if(input$k=='g2'){j<-7}
        if(input$k=='h2'){j<-8}
        if(input$k=='i2'){j<-9}
        if(input$k=='j2'){j<-10}
        if(input$k=='k2'){j<-11}
        if(input$k=='l2'){j<-12}
        if(input$k=='m2'){j<-13}
        if(input$k=='n2'){j<-14}
        if(input$k=='o2'){j<-15}
        if(input$k=='p2'){j<-16}
        if(input$k=='q2'){j<-17}
        if(input$k=='r2'){j<-18}
        if(input$k=='s2'){j<-19}
        if(input$k=='t2'){j<-20}
        if(input$k=='u2'){j<-21}
        if(input$k=='v2'){j<-22}
        if(input$k=='w2'){j<-23}
        if(input$k=='x2'){j<-24}
        if(input$k=='y2'){j<-25}
        if(input$k=='z2'){j<-26}
        if(input$k=='a12'){j<-27}
        if(input$k=='b12'){j<-28}
        if(input$k=='c12'){j<-29}
        if(input$k=='d12'){j<-30}
        if(input$k=='e12'){j<-32}
        cancerdata=read.csv("C:/Users/Admin/Documents/cancer123.csv")
        x<-cancerdata[,i]
        y<-cancerdata[,j]
        plot(x,y)
        

        
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
