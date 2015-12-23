#Each time you open a new RStudio session, you need to run the following three commands.
#Highlight them and press Run or CTRL+ENTER
require(mosaic)
require(openintro)
require(MASS)

#Read in the Single dataset
Single<-read.csv("http://www.math.usu.edu/cfairbourn/Stat2300/RStudioFiles/data/Single.csv")

#In this example we want to make a barchart for the nominal variable Roof.Style: 

#run the command below:
barchart(Single$Roof.Style)  # This tells R which variable to graph
#Notice the name of the data set, Single is first, followed by a $ and
#the name of the variable Roof.Style

#change to vertical bars
barchart(Single$Roof.Style,  # This tells R which variable to graph
         horizontal = FALSE) # This tells R to graph vertical bars

#add chart label
barchart(Single$Roof.Style,      # This tells R which variable to graph
         horizontal = FALSE,   # This tells R to graph vertical bars
         main = "Roof Style")  #This creates the chart label

#change bar color
barchart(Single$Roof.Style,     # This tells R which variable to graph
         horizontal = FALSE,  # This tells R to graph vertical bars
         main = "Roof Style", # This creates the chart label. 
                              # Notice the quotes around the title.
         col = "skyblue4")    # This specifies the fill color of the bars.
                              # You can see a full list of colors to choose from 
                              # at http://research.stowers-institute.org/efg/R/Color/Chart/ColorChart.pdf

#change vertical axis label. Note ylab stands for y axis label.
#You can use the command xlab in a similar way to change the 
#horizontal x axis label if you like.
barchart(Single$Roof.Style,     # This tells R which variable to graph
         horizontal = FALSE,  # This tells R to graph vertical bars
         main = "Roof Style", # This creates the chart label
         col = "skyblue4",    # This specifies the fill color of the bars
         ylab = "Count")      # This creates the y-axis label


#Make a contingency table for Central.Air and Lot.Config
contable<-xtabs(~Central.Air+Lot.Config, data=Single)
#Read the output from your table
ftable(contable)
