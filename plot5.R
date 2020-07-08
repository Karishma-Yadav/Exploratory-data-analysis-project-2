baltimoreMotor <- subset(NEI, NEI$fips == "24510" & NEI$type == "ON-ROAD")
baltimoreMotorAGG <- aggregate(Emissions ~ year, baltimoreMotor, sum)

ggplot(baltimoreMotorAGG, aes(year, Emissions)) +
    geom_line(col = "steelblue3") +
    geom_point(col = "steelblue3") +
    ggtitle(expression("Baltimore " ~ PM[2.5] ~ "Motor Vehicle Emissions by Year")) +
    xlab("Year") +
    ylab(expression(~PM[2.5]~ "Motor Vehicle Emissions"))