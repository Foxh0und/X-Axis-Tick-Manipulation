require( ggplot2 )
require( reshape2 )

source( "Functions.R" )

lData <- read.csv( "Data//IAC Co2 Data.csv" )
lData <- lData[,1:2]
lDataMelt <- melt( lData, id = "year" )

ggplot( data = lDataMelt, aes( year, y = value, group = variable ) ) +
  geom_line( color = "steelblue" ) +
  ggtitle("Average Co2 Levels") +
  ylab( "Co2" ) +
  xlab( "Year" ) +
  theme( plot.title = element_text( hjust = 0.5 ) )

ggsave( "Plots/VanillaPlot.png")

ggplot( data = lDataMelt, aes( year, y = value, group = variable ) ) +
  geom_line( color = "steelblue" ) +
  scale_x_continuous( breaks = seq( min( lDataMelt$year ), max( lDataMelt$year ) ) ) +
  ggtitle("Average Co2 Levels") +
  ylab( "Co2" ) +
  xlab( "Year" ) +
  theme(  plot.title = element_text( hjust = 0.5 ) )

ggsave( "Plots/Busy.png")


ggplot( data = lDataMelt, aes( year, y = value, group = variable ) ) +
  geom_line( color = "steelblue" ) +
  scale_x_continuous( breaks = seq( min( lDataMelt$year ), max( lDataMelt$year ) ), labels = createLabels( lDataMelt, 100 ) ) +
  ggtitle("Average Co2 Levels") +
  ylab( "Co2" ) +
  xlab( "Year" ) +
  theme( axis.text.x = element_text( angle = 45, hjust = 1 ), plot.title = element_text( hjust = 0.5 ) )

ggsave( "Plots/Tidy.png")
