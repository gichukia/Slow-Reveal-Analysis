# DESCRIPTION
# 43. Number of natives of Ireland, by states: 1890
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

# Creating a data frame for # 43
# The data is estimated from the primary plot
states <- c("NEW YORK", "MASSACHUSETTS", "PENNSYLVANIA", "ILLINOIS", "NEW JERSEY",
            "CONNECTICUT", "OHIO", "CALIFORNIA", "MISSOURI", "MICHIGAN", "RHODE ISLAND",
            "IOWA", 'WISCONSIN', "INDIANA", "MARYLAND", "NEBRASKA", "KANSAS",
            "NEW HAMPSHIRE", "KENTUCKY", "COLORADO", "MAINE")

number <- c(480000, 260000, 240000, 125000, 101000, 75000, 70000, 67000, 42000, 40000,
            39000, 38500, 33000, 24000, 23000, 22000, 21000, 20000, 195000, 18300,
            18000)


df <- data.frame(states, number)


# Plotting Graph 43
plot43 <- ggplot(df, aes(x = number, y = reorder(states, -number))) +
  annotate("segment", x = 0, xend = 0, y = 0, yend = 23.5) +
  annotate("segment", x = seq(0, 600000, 50000), xend = seq(0, 600000, 50000), y = 0, yend = 22) +
  annotate("segment", x = -100000, xend = 600000, y = 22, yend = 22) +
  scale_x_continuous(breaks = seq(100000, 500000, 100000), position = "top", labels = comma) +
  geom_bar(stat = "identity", width = 0.7, fill = "#2e2c26") +
  scale_y_discrete(limits = rev) +
  labs(title = "43. NUMBER OF NATIVES OF IRELAND, BY STATES: 1890.",
       subtitle = "STATES.") +
  coord_cartesian(xlim = c(-40000, 565000), ylim = c(1, 22.5)) +
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


plot43

# Saving the plot with custom dimensions
ggsave("Number of natives of Ireland, by states - 1890 #43.png",
       plot43, height = 8, width = 8)
