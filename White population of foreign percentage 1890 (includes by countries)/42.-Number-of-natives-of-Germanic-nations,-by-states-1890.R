# DESCRIPTION
# 42. Number of natives of Germanic Nations, by states: 1890
# https://www.loc.gov/resource/g3701gm.gct00010/?sp=34&r=0.364,0.517,0.718,0.33,0


# AUTHOR: 
# Alex Gichuki

# Setup
library(tidyverse)
library(showtext)
library(scales)

# Fonts
font_add_google("Dynalight", "Dynalight")
font_add_google("Puritan", "Puritan")
showtext_auto()

# Creating a data frame for # 38
# The data is estimated from the primary plot
states <- c("NEW YORK", "ILLINOIS", "WISCONSIN", "PENNSYLVANIA", "OHIO", "MICHIGAN",
            "IOWA", 'MISSOURI', "MINNESOTA", "NEW JERSEY", "INDIANA", "NEBRASKA",
            "CALIFORNIA", "TEXAS", 'KANSAS', "MARYLAND", "KENTUCKY", "MASSACHUSETTS",
            "CONNECTICUT", "SOUTH DAKOTA", "COLORADO", "WASHINGTON", "LOUISIANA", 
            "OREGON")

number <- c(505000, 365000, 280000, 260000, 255000, 175000, 140000, 135000, 130000, 
            125000, 87000, 80000, 75000, 60000, 55000, 53000, 37000, 35000, 34000,
            24000, 23000, 22000, 21500, 20000)

df <- data.frame(states, number)

# Plotting Graph 42
plot42 <- ggplot(df, aes(x = number, y = reorder(states, -number))) +
  annotate("segment", x = 0, xend = 0, y = 0, yend = 28) +
  annotate("segment", x = seq(0, 600000, 50000), xend = seq(0, 600000, 50000), y = 0, yend = 25) +
  annotate("segment", x = -100000, xend = 600000, y =25, yend =25) +
  scale_x_continuous(breaks = seq(100000, 500000, 100000), position = "top", labels = comma) +
  geom_bar(stat = "identity", width = 0.7, fill = "#2e2c26") +
  scale_y_discrete(limits = rev) +
  labs(title = "42. NUMBER OF NATIVES OF GERMANIC NATIONS, BY STATES: 1890.",
       subtitle = "STATES.") +
  coord_cartesian(xlim = c(-40000, 565000), ylim = c(1, 25.5)) +
  labs(y = NULL, x = NULL)  +
  theme(axis.ticks.x = element_blank(),
        axis.ticks.y = element_blank(),
        # Text sizes are adjusted to fit the saved png
        axis.text.x = element_text(colour = "gray21", face = "bold", family = "Puritan", size = 19),
        axis.text.y = element_text(vjust = -0.01,hjust = 0.05,margin = margin(l = 35, r = -55),
                                   colour = "gray21", face = "bold", family = "Puritan", size = 19),
        axis.text.x.top = element_text(margin = margin(t = 5, b = -11)),
        plot.title = element_text(hjust = 0.5, family = "Puritan", size = 25),
        plot.subtitle = element_text(size = 18, hjust = .02, vjust = -11, family = "Puritan"),
        panel.border = element_rect(fill = NA),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_rect(fill = "white", colour = "white"),
        plot.background = element_rect(fill = "white", colour = "white")) 

plot42

# Saving the plot with custom dimensions
ggsave("Number of natives of Germanic Nations, by states - 1890 #42.png",
       plot42, height = 8, width = 8)
