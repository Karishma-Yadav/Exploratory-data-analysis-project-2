baltimore <- subset(NEI, NEI$fips == "24510")
baltimoreType <- aggregate(Emissions ~ year + type, baltimore, sum)

ggplot(baltimoreType, aes(year, Emissions, col = type)) +
    geom_line() +
    geom_point() +
    ggtitle(expression("Total Baltimore " ~ PM[2.5] ~ "Emissions by Type and Year")) +
    ylab(expression("Total Baltimore " ~ PM[2.5] ~ "Emissions")) +
    xlab("Year") +
    scale_colour_discrete(name = "Type of sources") +
    theme(legend.title = element_text(face = "bold"))

