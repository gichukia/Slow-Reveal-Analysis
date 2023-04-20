# DESCRIPTION
# 41. Nativity of the foreign Born Population: 1890
# https://www.loc.gov/resource/g3701gm.gct00010/?sp=34&r=0.427,0.311,0.811,0.355,0

# AUTHOR: 
# Alex Gichuki


# Plotting Graph 41

# Setup
library(tidyverse)
library(showtext)

# Fonts
font_add_google("Dynalight", "Dynalight")
font_add_google("Puritan", "Puritan")
showtext_auto()

# Creating a data frame for # 41
countries <- c("GERMANY", "IRELAND", "CANADA", "ENGLAND", "SWEDEN", "NORWAY", 
               "SCOTLAND", "RUSSIA", "ITALY", "POLAND", "DENMARK", "AUSTRIA", 
               "BOHEMIA", "FRANCE", "CHINA", "SWITZERLAND", "WALES")

number <- c(27.9, 18.3, 8.9, 9.1, 4.8, 3.1, 2.4, 1.9, 1.8, 1.6, 1.3, 1.2, 1.15,
            1.1, 1, 0.95, 0.90)

df <- data.frame(countries, number)

# Plotting graph 41
plot41 <- ggplot(df, aes(x = number, y = reorder(countries, -number))) +
  annotate("segment", x = 0, xend = 0, y = 0, yend = 20) +
  annotate("segment", x = seq(0, 30, 2), xend = seq(0, 30, 2), y = -1, yend = 18) +
  annotate("segment", x = -5, xend = 30, y =18, yend =18) +
  scale_x_continuous(breaks = seq(2, 28, 2), position = "top") +
  geom_bar(stat = "identity", width = 0.7, fill = "#2e2c26") +
  scale_y_discrete(limits = rev) +
  labs(title = "41. NATIVITY OF THE FOREIGN BORN POPULATION : 1890.",
       subtitle = "COUNTRIES.") +
  coord_cartesian(xlim = c(-3,28), ylim = c(1,18.2)) +
  labs(y = NULL, x = "[Hundreds of thousands.]")  +
  theme(axis.title.x = element_text(family = "Puritan", size = 21),
        axis.ticks.x = element_blank(),
        axis.ticks.y = element_blank(),
        # Text sizes are adjusted to fit the saved png
        axis.text.x = element_text(colour = "gray21", face = "bold", family = "Puritan", size = 19),
        axis.text.y = element_text(vjust = -0.01,hjust = 0.05,margin = margin(l = 35, r = -45),
                                   colour = "gray21", face = "bold", family = "Puritan", size = 19),
        axis.text.x.top = element_text(margin = margin(t = 10, b = -18)),
        plot.title = element_text(hjust = 0.5, family = "Puritan", size = 25),
        plot.subtitle = element_text(size =19, hjust = .02, vjust = -18, family = "Puritan"),
        panel.border = element_rect(fill = NA),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_rect(fill = "white", colour = "white"),
        plot.background = element_rect(fill = "white", colour = "white")) 


# Saving the plot with custom dimensions
ggsave("Nativity of foreign born population - 1890 #41.png",
       plot41, height = 8, width = 8)


