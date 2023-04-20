# DESCRIPTION
# 45. Number of Natives of Canada and Newfoundland, By States: 1890
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

# Creating a data frame for # 45
# The data is estimated from the primary plot
states <-  c("MASSACHUSETTS", "MICHIGAN", 'NEW YORK', "MAINE", "NEW HAMPSHIRE",
             "MINNESOTA", "ILLINOIS", "WISCONSIN", "RHODE ISLAND", "CALIFORNIA",
             "VERMONT", "NORTH DAKOTA", "CONNECTICUT", "IOWA", "WASHINGTON", "OHIO",
             "PENNSYLVANIA", "NEBRASKA", 'KANSAS')

number <- c(210000, 175000, 93000, 53000, 48500, 43000, 40000, 33000, 27000, 25000,
            24500, 24300, 24200, 23000, 22500, 21500, 20500, 20000, 19500)


df <- data.frame(states, number)

#  Plotting Graph 45
plot45 <- ggplot(df, aes(x = number, y = reorder(states, -number))) +
  annotate("segment", x = 0, xend = 0, y = 0, yend = 20.5) +
  annotate("segment", x = seq(0, 250000, 50000), xend = seq(0, 250000, 50000), y = 0, yend = 19.7) +
  annotate("segment", x = -100000, xend = 250000, y = 19.7, yend = 19.7) +
  scale_x_continuous(breaks = seq(100000, 200000, 100000), position = "top", labels = comma) +
  geom_bar(stat = "identity", width = 0.6, fill = "#2e2c26") +
  scale_y_discrete(limits = rev) +
  labs(title = "45. NUMBER OF NATIVES OF CANADA AND NEWFOUNDLAND,
       BY STATES: 1890.",
       subtitle = "STATES.") +
  coord_cartesian(xlim = c(-40000, 225000), ylim = c(1, 19.9)) +
  labs(y = NULL, x = NULL)  +
  theme(axis.ticks.x = element_blank(),
        axis.ticks.y = element_blank(),
        # Text sizes are adjusted to fit the saved png
        axis.text.x = element_text(colour = "gray21", face = "bold", family = "Puritan", size = 22),
        axis.text.y = element_text(vjust = -0.01,hjust = 0.05,margin = margin(l = 35, r = -55),
                                   colour = "gray21", face = "bold", family = "Puritan", size = 22),
        axis.text.x.top = element_text(margin = margin(t = 5, b = -11)),
        plot.title = element_text(hjust = 0.5, family = "Puritan", size = 27),
        plot.subtitle = element_text(size = 20, hjust = .02, vjust = -11, family = "Puritan"),
        panel.border = element_rect(fill = NA),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_rect(fill = "white", colour = "white"),
        plot.background = element_rect(fill = "white", colour = "white")) 


plot45

# Saving the plot with custom dimensions
ggsave("Number of natives of Canada and Newfoundland, by states - 1890 #45.png",
       plot45, height = 8, width = 8) 
