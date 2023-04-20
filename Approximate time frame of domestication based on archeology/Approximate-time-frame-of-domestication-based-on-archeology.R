# DESCRIPTION
# Approximate time frame of domestication based on archeology

# A RequestFrom Slow Reveal Workshop

# AUTHOR: 
# Alex Gichuki

# Setup
library(ggplot2)
library(tidyverse)
library(magick)
library(cowplot)
library(grid)

# create a data frame with a single row representing the empty rectangle
df_rect <- data.frame(xmin = 0, xmax = 29, ymin = 10.4, ymax = 10.8)


####################################################################################
# creating the full plot slide10
slide10 <- ggplot() +
  geom_rect(data = df_rect, aes(xmin = xmin, xmax = xmax, ymin = ymin, ymax = ymax), 
            fill = "grey70", color = "black") +
  xlim(-2, 32) +
  ylim(0, 20) +
  theme_classic() +
  # Add the Dog
  annotation_custom(
    rasterGrob(image_read("dog.png")), xmin = -1.7, xmax = 3, ymin = 10.5, ymax = 12.5
  ) +
  # Add the goat
  annotation_custom(
    rasterGrob(image_read("goat.png")), xmin = 5, xmax = 8.5, ymin = 10.5, ymax = 12.5
  ) +
  # Add the cow
  annotation_custom(
    rasterGrob(image_read("cow.png")), xmin = 8.1, xmax = 12.5, ymin = 10, ymax = 13.2
  ) +
  # Add the cat
  annotation_custom(
    rasterGrob(image_read("cat.png")), xmin = 12.1, xmax = 13.1, ymin = 10.7, ymax = 11.6
  ) +
  # Add the horse
  annotation_custom(
    rasterGrob(image_read("horse.png")), xmin = 15, xmax = 17, ymin = 10, ymax = 13.2
  ) +
  # Add the 2 Hump camel
  annotation_custom(
    rasterGrob(image_read("2-hump-camel.png")), xmin = 18.8, xmax = 21.6, ymin = 9.8, ymax = 13.5
  ) +
  # Add the 1 Hump camel
  annotation_custom(
    rasterGrob(image_read("1-hump-camel.png")), xmin = 22.7, xmax = 25.5, ymin = 10.7, ymax = 12.4
  ) +
  # Add the 2 duck
  annotation_custom(
    rasterGrob(image_read("duck.png")), xmin = 27.3, xmax = 29.3, ymin = 10.7, ymax = 11.9
  ) +
  # Add the sheep
  annotation_custom(
    rasterGrob(image_read("sheep.png")), xmin = 3.4, xmax = 6.9, ymin = 9, ymax = 10.3
  ) +
  # Add the pig
  annotation_custom(
    rasterGrob(image_read("pig.png")), xmin = 7, xmax = 11.3, ymin = 9, ymax = 10.3
  )  +
  # Add the humped cow
  annotation_custom(
    rasterGrob(image_read("hump-cow.png")), xmin = 11.3, xmax = 13.6, ymin = 8.5, ymax = 10.8
  ) +
  # Add the llama
  annotation_custom(
    rasterGrob(image_read("llama.png")), xmin = 13.8, xmax = 15.8, ymin = 9.3, ymax = 10.2
  ) +
  # Add the alpaca
  annotation_custom(
    rasterGrob(image_read("alpaca.png")), xmin = 16.5, xmax = 18.2, ymin = 9, ymax = 10.4
  ) +
  # Add the chicken
  annotation_custom(
    rasterGrob(image_read("chicken.png")), xmin = 20.3, xmax = 21.1, ymin = 9, ymax = 10.4
  ) +
  # Add the turkey
  annotation_custom(
    rasterGrob(image_read("turkey.png")), xmin = 24.2, xmax = 25.7, ymin = 8.9, ymax = 10.6
  ) +
  # Adding the small black circles
  geom_point(aes(x = 0, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 9, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 10.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 10.9, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 12, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 13.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 17, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 18, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 19, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 20, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 20.7, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 22.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 25, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 27.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  # Adding the vertical pointing lines
  geom_segment(aes(x = 0, y = 10.1, xend = 0, yend = 11.25), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 2.3, y = 10.4, xend = 2.3, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 4.8, y = 10.4, xend = 4.8, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 7.1, y = 10.4, xend = 7.1, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 9, y = 10.4, xend = 9, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 10.9, y = 10.6, xend = 10.9, yend = 11.4), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 11.1, y = 10.1, xend = 11.1, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 12.5, y = 10.4, xend = 12.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 13.5, y = 10.4, xend = 13.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 15, y = 10.4, xend = 15, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 17, y = 10.4, xend = 17, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 19, y = 10.1, xend = 19, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 20.7, y = 9.9, xend = 20.7, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 22.5, y = 10.4, xend = 22.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 25, y = 10.1, xend = 25, yend = 10.8), color = "black", linewidth = 0.3)  +
  geom_segment(aes(x = 27.5, y = 10.4, xend = 27.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 29, y = 10, xend = 29, yend = 10.8), color = "black", linewidth = 0.3) +
  # Adding the slanting pointing lines
  geom_segment(aes(x = 5.9, y = 9.9, xend = 9, yend = 10.6), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 7.4, y = 11.5, xend = 10.5, yend = 10.6), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 9.5, y = 10, xend = 10.9, yend = 10.6), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 12.4, y = 11, xend = 11.9, yend = 10.6), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 12.9, y = 9.9, xend = 13.5, yend = 10.6), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 15.2, y = 9.7, xend = 17, yend = 10.6), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 16.4, y = 11.5, xend = 18, yend = 10.6), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 17.9, y = 10, xend = 19, yend = 10.6), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 20.1, y = 11, xend = 20, yend = 10.6), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 23.2, y = 11.5, xend = 22.5, yend = 10.6), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 27.8, y = 11.1, xend = 27.5, yend = 10.6), color = "black", linewidth = 0.3) +
  # Adding the text
  geom_text(aes(x = 0.9, y = 15, label = "Dog"), size = 4) +
  geom_text(aes(x = 6.7, y = 15, label = "Goat"), size = 4) +
  geom_text(aes(x = 10.2, y = 15, label = "Cow"), size = 4) +
  geom_text(aes(x = 12.6, y = 15, label = "Cat"), size = 4) +
  geom_text(aes(x = 16, y = 15, label = "Horse"), size = 4)  +
  geom_text(aes(x = 20.2, y = 15, label = "Camel"), size = 4) +
  geom_text(aes(x = 24.2, y = 15, label = "Camel"), size = 4) +
  geom_text(aes(x = 28.2, y = 15, label = "Duck"), size = 4) +
  geom_text(aes(x = 20.2, y = 14.3, label = "(two-humped)"), size = 4) +
  geom_text(aes(x = 24.2, y = 14.3, label = "(one-humped)"), size = 4) +
  geom_text(aes(x = 0.9, y = 13.7, label = "Eurasia"), size = 4) +
  geom_text(aes(x = 6.7, y = 13.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 10.2, y = 13.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 12.6, y = 13.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 16, y = 13.7, label = "Central Asia"), size = 4) +
  geom_text(aes(x = 20.2, y = 13, label = "Central Asia"), size = 4) +
  geom_text(aes(x = 24.2, y = 13, label = "Middle East"), size = 4) +
  geom_text(aes(x = 28.2, y = 13.7, label = "East Asia/"), size = 4) +
  geom_text(aes(x = 28.2, y = 13, label = "Middle East"), size = 4) +
  geom_text(aes(x = 10.9, y = 9.85, label = "10,000"), size = 4) +
  geom_text(aes(x = 10.9, y = 9.4, label = "years ago"), size = 3.5) +
  geom_text(aes(x = 19, y = 9.85, label = "5,000"), size = 4) +
  geom_text(aes(x = 19, y = 9.4, label = "years ago"), size = 4) +
  geom_text(aes(x = 28.65, y = 9.9, label = "Present day"), size = 4) +
  geom_text(aes(x = 5, y = 8.7, label = "Sheep"), size = 4) +
  geom_text(aes(x = 9.1, y = 8.7, label = "Pig"), size = 4) +
  geom_text(aes(x = 12.4, y = 8.7, label = "Humped Cow"), size = 4) +
  geom_text(aes(x = 15, y = 8.7, label = "Llama"), size = 4) +
  geom_text(aes(x = 17.7, y = 8.7, label = "Alpaca"), size = 4) +
  geom_text(aes(x = 20.8, y = 8.7, label = "Chicken"), size = 4) +
  geom_text(aes(x = 25, y = 8.7, label = "Turkey"), size = 4) +
  geom_text(aes(x = 5, y = 7.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 9.1, y = 7.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 12.4, y = 7.7, label = "South Asia"), size = 4) +
  geom_text(aes(x = 15, y = 7.7, label = "South"), size = 4) +
  geom_text(aes(x = 17.7, y = 7.7, label = "South"), size = 4) +
  geom_text(aes(x = 20.8, y = 7.7, label = "East Asia/"), size = 4) +
  geom_text(aes(x = 25, y = 7.7, label = "North America"), size = 4) +
  geom_text(aes(x = 15, y = 7.1, label = "America"), size = 4) +
  geom_text(aes(x = 17.7, y = 7.1, label = "America"), size = 4) +
  geom_text(aes(x = 20.8, y = 7.1, label = "Middle East"), size = 4) +
  # Adding the title
  geom_text(aes(x = 14.5, y = 15.8, 
                label = "Approximate time frame of domestication based on archeology"), 
            size = 4, fontface = "bold") +
  # Adding "source information"
  geom_text(aes(x = 1.89, y = 1, 
                label = "From"), size = 6.5) +
  geom_text(aes(x = 15.6, y = 1, 
                label = "an article on Science News on DNA evidence of plant and animal domestication"), 
            size = 6.5, color = "red") +
  geom_text(aes(x = 28.35, y = 1, 
                label = "."), size = 6.5) +
  # Remove the axis
  theme(axis.line = element_blank(),
        axis.text.x = element_blank(),
        axis.text.y = element_blank(),
        axis.ticks = element_blank(),
        axis.title.x = element_blank(),
        axis.title.y = element_blank())

slide10

# Saving the full plot slide 10
slide10
dev.copy(png, "slide10.png", width = 1340, height = 700, units = "px")
dev.off()

####################################################################################
# creating the slide9 Plot
slide9 <- ggplot() +
  geom_rect(data = df_rect, aes(xmin = xmin, xmax = xmax, ymin = ymin, ymax = ymax), 
            fill = "grey70", color = "black") +
  xlim(-2, 32) +
  ylim(0, 20) +
  theme_classic() +
  # Add the Dog
  annotation_custom(
    rasterGrob(image_read("dog.png")), xmin = -1.7, xmax = 3, ymin = 10.5, ymax = 12.5
  ) +
  # Add the goat
  annotation_custom(
    rasterGrob(image_read("goat.png")), xmin = 5, xmax = 8.5, ymin = 10.5, ymax = 12.5
  ) +
  # Add the cow
  annotation_custom(
    rasterGrob(image_read("cow.png")), xmin = 8.1, xmax = 12.5, ymin = 10, ymax = 13.2
  ) +
  # Add the cat
  annotation_custom(
    rasterGrob(image_read("cat.png")), xmin = 12.1, xmax = 13.1, ymin = 10.7, ymax = 11.6
  ) +
  # Add the horse
  annotation_custom(
    rasterGrob(image_read("horse.png")), xmin = 15, xmax = 17, ymin = 10, ymax = 13.2
  ) +
  # Add the 2 Hump camel
  annotation_custom(
    rasterGrob(image_read("2-hump-camel.png")), xmin = 18.8, xmax = 21.6, ymin = 9.8, ymax = 13.5
  ) +
  # Add the 1 Hump camel
  annotation_custom(
    rasterGrob(image_read("1-hump-camel.png")), xmin = 22.7, xmax = 25.5, ymin = 10.7, ymax = 12.4
  ) +
  # Add the 2 duck
  annotation_custom(
    rasterGrob(image_read("duck.png")), xmin = 27.3, xmax = 29.3, ymin = 10.7, ymax = 11.9
  ) +
  # Add the sheep
  annotation_custom(
    rasterGrob(image_read("sheep.png")), xmin = 3.4, xmax = 6.9, ymin = 9, ymax = 10.3
  ) +
  # Add the pig
  annotation_custom(
    rasterGrob(image_read("pig.png")), xmin = 7, xmax = 11.3, ymin = 9, ymax = 10.3
  )  +
  # Add the humped cow
  annotation_custom(
    rasterGrob(image_read("hump-cow.png")), xmin = 11.3, xmax = 13.6, ymin = 8.5, ymax = 10.8
  ) +
  # Add the llama
  annotation_custom(
    rasterGrob(image_read("llama.png")), xmin = 13.8, xmax = 15.8, ymin = 9.3, ymax = 10.2
  ) +
  # Add the alpaca
  annotation_custom(
    rasterGrob(image_read("alpaca.png")), xmin = 16.5, xmax = 18.2, ymin = 9, ymax = 10.4
  ) +
  # Add the chicken
  annotation_custom(
    rasterGrob(image_read("chicken.png")), xmin = 20.3, xmax = 21.1, ymin = 9, ymax = 10.4
  ) +
  # Add the turkey
  annotation_custom(
    rasterGrob(image_read("turkey.png")), xmin = 24.2, xmax = 25.7, ymin = 8.9, ymax = 10.6
  ) +
  # Adding the small black circles
  geom_point(aes(x = 0, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 9, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 10.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 10.9, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 12, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 13.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 17, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 18, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 19, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 20, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 20.7, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 22.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 25, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 27.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  # Adding the vertical pointing lines
  geom_segment(aes(x = 0, y = 10.1, xend = 0, yend = 11.25), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 2.3, y = 10.4, xend = 2.3, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 4.8, y = 10.4, xend = 4.8, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 7.1, y = 10.4, xend = 7.1, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 9, y = 10.4, xend = 9, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 10.9, y = 10.6, xend = 10.9, yend = 11.4), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 11.1, y = 10.1, xend = 11.1, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 12.5, y = 10.4, xend = 12.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 13.5, y = 10.4, xend = 13.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 15, y = 10.4, xend = 15, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 17, y = 10.4, xend = 17, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 19, y = 10.1, xend = 19, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 20.7, y = 9.9, xend = 20.7, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 22.5, y = 10.4, xend = 22.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 25, y = 10.1, xend = 25, yend = 10.8), color = "black", linewidth = 0.3)  +
  geom_segment(aes(x = 27.5, y = 10.4, xend = 27.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 29, y = 10, xend = 29, yend = 10.8), color = "black", linewidth = 0.3) +
  # Adding the slanting pointing lines
  geom_segment(aes(x = 5.9, y = 9.9, xend = 9, yend = 10.6), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 7.4, y = 11.5, xend = 10.5, yend = 10.6), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 9.5, y = 10, xend = 10.9, yend = 10.6), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 12.4, y = 11, xend = 11.9, yend = 10.6), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 12.9, y = 9.9, xend = 13.5, yend = 10.6), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 15.2, y = 9.7, xend = 17, yend = 10.6), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 16.4, y = 11.5, xend = 18, yend = 10.6), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 17.9, y = 10, xend = 19, yend = 10.6), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 20.1, y = 11, xend = 20, yend = 10.6), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 23.2, y = 11.5, xend = 22.5, yend = 10.6), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 27.8, y = 11.1, xend = 27.5, yend = 10.6), color = "black", linewidth = 0.3) +
  # Adding the text
  geom_text(aes(x = 0.9, y = 13.7, label = "Eurasia"), size = 4) +
  geom_text(aes(x = 6.7, y = 13.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 10.2, y = 13.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 12.6, y = 13.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 16, y = 13.7, label = "Central Asia"), size = 4) +
  geom_text(aes(x = 20.2, y = 13, label = "Central Asia"), size = 4) +
  geom_text(aes(x = 24.2, y = 13, label = "Middle East"), size = 4) +
  geom_text(aes(x = 28.2, y = 13.7, label = "East Asia/"), size = 4) +
  geom_text(aes(x = 28.2, y = 13, label = "Middle East"), size = 4) +
  geom_text(aes(x = 10.9, y = 9.85, label = "10,000"), size = 4) +
  geom_text(aes(x = 10.9, y = 9.4, label = "years ago"), size = 3.5) +
  geom_text(aes(x = 19, y = 9.85, label = "5,000"), size = 4) +
  geom_text(aes(x = 19, y = 9.4, label = "years ago"), size = 4) +
  geom_text(aes(x = 28.65, y = 9.9, label = "Present day"), size = 4) +
  geom_text(aes(x = 5, y = 7.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 9.1, y = 7.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 12.4, y = 7.7, label = "South Asia"), size = 4) +
  geom_text(aes(x = 15, y = 7.7, label = "South"), size = 4) +
  geom_text(aes(x = 17.7, y = 7.7, label = "South"), size = 4) +
  geom_text(aes(x = 20.8, y = 7.7, label = "East Asia/"), size = 4) +
  geom_text(aes(x = 25, y = 7.7, label = "North America"), size = 4) +
  geom_text(aes(x = 15, y = 7.1, label = "America"), size = 4) +
  geom_text(aes(x = 17.7, y = 7.1, label = "America"), size = 4) +
  geom_text(aes(x = 20.8, y = 7.1, label = "Middle East"), size = 4) +
  # Adding the title
  geom_text(aes(x = 14.5, y = 15.8, 
                label = "Approximate time frame of domestication based on archeology"), 
            size = 4, fontface = "bold") +
  # Remove the axis
  theme(axis.line = element_blank(),
        axis.text.x = element_blank(),
        axis.text.y = element_blank(),
        axis.ticks = element_blank(),
        axis.title.x = element_blank(),
        axis.title.y = element_blank())

slide9

# Saving the slide9 Plot
slide9
dev.copy(png, "slide9.png", width = 1340, height = 700, units = "px")
dev.off()


##################################################################################
# creating the slide8 Plot
slide8 <- ggplot() +
  geom_rect(data = df_rect, aes(xmin = xmin, xmax = xmax, ymin = ymin, ymax = ymax), 
            fill = "grey70", color = "black") +
  xlim(-2, 32) +
  ylim(0, 20) +
  theme_classic() +
  # Add the Dog
  annotation_custom(
    rasterGrob(image_read("dog.png")), xmin = -1.7, xmax = 3, ymin = 10.5, ymax = 12.5
  ) +
  # Add the goat
  annotation_custom(
    rasterGrob(image_read("goat.png")), xmin = 5, xmax = 8.5, ymin = 10.5, ymax = 12.5
  ) +
  # Add the cow
  annotation_custom(
    rasterGrob(image_read("cow.png")), xmin = 8.1, xmax = 12.5, ymin = 10, ymax = 13.2
  ) +
  # Add the cat
  annotation_custom(
    rasterGrob(image_read("cat.png")), xmin = 12.1, xmax = 13.1, ymin = 10.7, ymax = 11.6
  ) +
  # Add the horse
  annotation_custom(
    rasterGrob(image_read("horse.png")), xmin = 15, xmax = 17, ymin = 10, ymax = 13.2
  ) +
  # Add the 2 Hump camel
  annotation_custom(
    rasterGrob(image_read("2-hump-camel.png")), xmin = 18.8, xmax = 21.6, ymin = 9.8, ymax = 13.5
  ) +
  # Add the 1 Hump camel
  annotation_custom(
    rasterGrob(image_read("1-hump-camel.png")), xmin = 22.7, xmax = 25.5, ymin = 10.7, ymax = 12.4
  ) +
  # Add the 2 duck
  annotation_custom(
    rasterGrob(image_read("duck.png")), xmin = 27.3, xmax = 29.3, ymin = 10.7, ymax = 11.9
  ) +
  # Add the sheep
  annotation_custom(
    rasterGrob(image_read("sheep.png")), xmin = 3.4, xmax = 6.9, ymin = 9, ymax = 10.3
  ) +
  # Add the pig
  annotation_custom(
    rasterGrob(image_read("pig.png")), xmin = 7, xmax = 11.3, ymin = 9, ymax = 10.3
  )  +
  # Add the humped cow
  annotation_custom(
    rasterGrob(image_read("hump-cow.png")), xmin = 11.3, xmax = 13.6, ymin = 8.5, ymax = 10.8
  ) +
  # Add the llama
  annotation_custom(
    rasterGrob(image_read("llama.png")), xmin = 13.8, xmax = 15.8, ymin = 9.3, ymax = 10.2
  ) +
  # Add the alpaca
  annotation_custom(
    rasterGrob(image_read("alpaca.png")), xmin = 16.5, xmax = 18.2, ymin = 9, ymax = 10.4
  ) +
  # Add the chicken
  annotation_custom(
    rasterGrob(image_read("chicken.png")), xmin = 20.3, xmax = 21.1, ymin = 9, ymax = 10.4
  ) +
  # Add the turkey
  annotation_custom(
    rasterGrob(image_read("turkey.png")), xmin = 24.2, xmax = 25.7, ymin = 8.9, ymax = 10.6
  ) +
  # Adding the small black circles
  geom_point(aes(x = 0, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 9, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 10.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 10.9, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 12, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 13.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 17, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 18, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 19, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 20, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 20.7, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 22.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 25, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 27.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  # Adding the vertical pointing lines
  geom_segment(aes(x = 0, y = 10.1, xend = 0, yend = 11.25), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 2.3, y = 10.4, xend = 2.3, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 4.8, y = 10.4, xend = 4.8, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 7.1, y = 10.4, xend = 7.1, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 9, y = 10.4, xend = 9, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 10.9, y = 10.6, xend = 10.9, yend = 11.4), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 11.1, y = 10.1, xend = 11.1, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 12.5, y = 10.4, xend = 12.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 13.5, y = 10.4, xend = 13.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 15, y = 10.4, xend = 15, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 17, y = 10.4, xend = 17, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 19, y = 10.1, xend = 19, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 20.7, y = 9.9, xend = 20.7, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 22.5, y = 10.4, xend = 22.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 25, y = 10.1, xend = 25, yend = 10.8), color = "black", linewidth = 0.3)  +
  geom_segment(aes(x = 27.5, y = 10.4, xend = 27.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 29, y = 10, xend = 29, yend = 10.8), color = "black", linewidth = 0.3) +
  # Adding the slanting pointing lines
  geom_segment(aes(x = 5.9, y = 9.9, xend = 9, yend = 10.6), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 7.4, y = 11.5, xend = 10.5, yend = 10.6), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 9.5, y = 10, xend = 10.9, yend = 10.6), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 12.4, y = 11, xend = 11.9, yend = 10.6), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 12.9, y = 9.9, xend = 13.5, yend = 10.6), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 15.2, y = 9.7, xend = 17, yend = 10.6), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 16.4, y = 11.5, xend = 18, yend = 10.6), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 17.9, y = 10, xend = 19, yend = 10.6), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 20.1, y = 11, xend = 20, yend = 10.6), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 23.2, y = 11.5, xend = 22.5, yend = 10.6), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 27.8, y = 11.1, xend = 27.5, yend = 10.6), color = "black", linewidth = 0.3) +
  # Adding the text
  geom_text(aes(x = 0.9, y = 13.7, label = "Eurasia"), size = 4) +
  geom_text(aes(x = 6.7, y = 13.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 10.2, y = 13.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 12.6, y = 13.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 16, y = 13.7, label = "Central Asia"), size = 4) +
  geom_text(aes(x = 20.2, y = 13, label = "Central Asia"), size = 4) +
  geom_text(aes(x = 24.2, y = 13, label = "Middle East"), size = 4) +
  geom_text(aes(x = 28.2, y = 13.7, label = "East Asia/"), size = 4) +
  geom_text(aes(x = 28.2, y = 13, label = "Middle East"), size = 4) +
  geom_text(aes(x = 10.9, y = 9.85, label = "10,000"), size = 4) +
  geom_text(aes(x = 10.9, y = 9.4, label = "years ago"), size = 3.5) +
  geom_text(aes(x = 19, y = 9.85, label = "5,000"), size = 4) +
  geom_text(aes(x = 19, y = 9.4, label = "years ago"), size = 4) +
  geom_text(aes(x = 28.65, y = 9.9, label = "Present day"), size = 4) +
  geom_text(aes(x = 5, y = 7.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 9.1, y = 7.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 12.4, y = 7.7, label = "South Asia"), size = 4) +
  geom_text(aes(x = 15, y = 7.7, label = "South"), size = 4) +
  geom_text(aes(x = 17.7, y = 7.7, label = "South"), size = 4) +
  geom_text(aes(x = 20.8, y = 7.7, label = "East Asia/"), size = 4) +
  geom_text(aes(x = 25, y = 7.7, label = "North America"), size = 4) +
  geom_text(aes(x = 15, y = 7.1, label = "America"), size = 4) +
  geom_text(aes(x = 17.7, y = 7.1, label = "America"), size = 4) +
  geom_text(aes(x = 20.8, y = 7.1, label = "Middle East"), size = 4) +
  # Remove the axis
  theme(axis.line = element_blank(),
        axis.text.x = element_blank(),
        axis.text.y = element_blank(),
        axis.ticks = element_blank(),
        axis.title.x = element_blank(),
        axis.title.y = element_blank())

slide8

# Saving the slide8 Plot
slide8
dev.copy(png, "slide8.png", width = 1340, height = 700, units = "px")
dev.off()


###############################################################################
# creating the slide7 Plot
slide7 <- ggplot() +
  geom_rect(data = df_rect, aes(xmin = xmin, xmax = xmax, ymin = ymin, ymax = ymax), 
            fill = "grey70", color = "black") +
  xlim(-2, 32) +
  ylim(0, 20) +
  theme_classic() +
  # Add the Dog
  annotation_custom(
    rasterGrob(image_read("dog.png")), xmin = -1.7, xmax = 3, ymin = 10.5, ymax = 12.5
  ) +
  # Add the goat
  annotation_custom(
    rasterGrob(image_read("goat.png")), xmin = 5, xmax = 8.5, ymin = 10.5, ymax = 12.5
  ) +
  # Add the 2 Hump camel
  annotation_custom(
    rasterGrob(image_read("2-hump-camel.png")), xmin = 18.8, xmax = 21.6, ymin = 9.8, ymax = 13.5
  ) +
  # Add the 1 Hump camel
  annotation_custom(
    rasterGrob(image_read("1-hump-camel.png")), xmin = 22.7, xmax = 25.5, ymin = 10.7, ymax = 12.4
  ) +
  # Add the alpaca
  annotation_custom(
    rasterGrob(image_read("alpaca.png")), xmin = 16.5, xmax = 18.2, ymin = 9, ymax = 10.4
  ) +
  # Adding the small black circles
  geom_point(aes(x = 0, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 9, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 10.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 10.9, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 12, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 13.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 17, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 18, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 19, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 20, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 20.7, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 22.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 25, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 27.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  # Adding the vertical pointing lines
  geom_segment(aes(x = 0, y = 10.1, xend = 0, yend = 11.25), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 2.3, y = 10.4, xend = 2.3, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 4.8, y = 10.4, xend = 4.8, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 7.1, y = 10.4, xend = 7.1, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 9, y = 10.4, xend = 9, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 11.1, y = 10.1, xend = 11.1, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 12.5, y = 10.4, xend = 12.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 13.5, y = 10.4, xend = 13.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 15, y = 10.4, xend = 15, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 17, y = 10.4, xend = 17, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 19, y = 10.1, xend = 19, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 22.5, y = 10.4, xend = 22.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 27.5, y = 10.4, xend = 27.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 29, y = 10, xend = 29, yend = 10.8), color = "black", linewidth = 0.3) +
  # Add the slanting lines
  geom_segment(aes(x = 7.4, y = 11.5, xend = 10.5, yend = 10.6), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 17.9, y = 10, xend = 19, yend = 10.6), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 20.1, y = 11, xend = 20, yend = 10.6), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 23.2, y = 11.5, xend = 22.5, yend = 10.6), color = "black", linewidth = 0.3) +
  # Adding the text
  geom_text(aes(x = 0.9, y = 13.7, label = "Eurasia"), size = 4) +
  geom_text(aes(x = 6.7, y = 13.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 10.2, y = 13.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 12.6, y = 13.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 16, y = 13.7, label = "Central Asia"), size = 4) +
  geom_text(aes(x = 20.2, y = 13, label = "Central Asia"), size = 4) +
  geom_text(aes(x = 24.2, y = 13, label = "Middle East"), size = 4) +
  geom_text(aes(x = 28.2, y = 13.7, label = "East Asia/"), size = 4) +
  geom_text(aes(x = 28.2, y = 13, label = "Middle East"), size = 4) +
  geom_text(aes(x = 10.9, y = 9.85, label = "10,000"), size = 4) +
  geom_text(aes(x = 10.9, y = 9.4, label = "years ago"), size = 3.5) +
  geom_text(aes(x = 19, y = 9.85, label = "5,000"), size = 4) +
  geom_text(aes(x = 19, y = 9.4, label = "years ago"), size = 4) +
  geom_text(aes(x = 28.65, y = 9.9, label = "Present day"), size = 4) +
  geom_text(aes(x = 5, y = 7.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 9.1, y = 7.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 12.4, y = 7.7, label = "South Asia"), size = 4) +
  geom_text(aes(x = 15, y = 7.7, label = "South"), size = 4) +
  geom_text(aes(x = 17.7, y = 7.7, label = "South"), size = 4) +
  geom_text(aes(x = 20.8, y = 7.7, label = "East Asia/"), size = 4) +
  geom_text(aes(x = 25, y = 7.7, label = "North America"), size = 4) +
  geom_text(aes(x = 15, y = 7.1, label = "America"), size = 4) +
  geom_text(aes(x = 17.7, y = 7.1, label = "America"), size = 4) +
  geom_text(aes(x = 20.8, y = 7.1, label = "Middle East"), size = 4) +
  # Remove the axis
  theme(axis.line = element_blank(),
        axis.text.x = element_blank(),
        axis.text.y = element_blank(),
        axis.ticks = element_blank(),
        axis.title.x = element_blank(),
        axis.title.y = element_blank())

slide7

# Saving the slide7 Plot
slide7
dev.copy(png, "slide7.png", width = 1340, height = 700, units = "px")
dev.off()


###############################################################################
# creating the slide6 Plot
slide6 <- ggplot() +
  geom_rect(data = df_rect, aes(xmin = xmin, xmax = xmax, ymin = ymin, ymax = ymax), 
            fill = "grey70", color = "black") +
  xlim(-2, 32) +
  ylim(0, 20) +
  theme_classic() +
  # Adding the small black circles
  geom_point(aes(x = 0, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 9, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 10.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 10.9, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 12, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 13.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 17, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 18, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 19, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 20, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 20.7, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 22.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 25, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 27.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  # Adding the vertical pointing lines
  geom_segment(aes(x = 0, y = 10.1, xend = 0, yend = 11.25), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 2.3, y = 10.4, xend = 2.3, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 4.8, y = 10.4, xend = 4.8, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 7.1, y = 10.4, xend = 7.1, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 9, y = 10.4, xend = 9, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 11.1, y = 10.1, xend = 11.1, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 12.5, y = 10.4, xend = 12.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 13.5, y = 10.4, xend = 13.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 15, y = 10.4, xend = 15, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 17, y = 10.4, xend = 17, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 19, y = 10.1, xend = 19, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 22.5, y = 10.4, xend = 22.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 27.5, y = 10.4, xend = 27.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 29, y = 10, xend = 29, yend = 10.8), color = "black", linewidth = 0.3) +
  # Adding the text
  geom_text(aes(x = 0.9, y = 13.7, label = "Eurasia"), size = 4) +
  geom_text(aes(x = 6.7, y = 13.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 10.2, y = 13.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 12.6, y = 13.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 16, y = 13.7, label = "Central Asia"), size = 4) +
  geom_text(aes(x = 20.2, y = 13, label = "Central Asia"), size = 4) +
  geom_text(aes(x = 24.2, y = 13, label = "Middle East"), size = 4) +
  geom_text(aes(x = 28.2, y = 13.7, label = "East Asia/"), size = 4) +
  geom_text(aes(x = 28.2, y = 13, label = "Middle East"), size = 4) +
  geom_text(aes(x = 10.9, y = 9.85, label = "10,000"), size = 4) +
  geom_text(aes(x = 10.9, y = 9.4, label = "years ago"), size = 3.5) +
  geom_text(aes(x = 19, y = 9.85, label = "5,000"), size = 4) +
  geom_text(aes(x = 19, y = 9.4, label = "years ago"), size = 4) +
  geom_text(aes(x = 28.65, y = 9.9, label = "Present day"), size = 4) +
  geom_text(aes(x = 5, y = 7.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 9.1, y = 7.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 12.4, y = 7.7, label = "South Asia"), size = 4) +
  geom_text(aes(x = 15, y = 7.7, label = "South"), size = 4) +
  geom_text(aes(x = 17.7, y = 7.7, label = "South"), size = 4) +
  geom_text(aes(x = 20.8, y = 7.7, label = "East Asia/"), size = 4) +
  geom_text(aes(x = 25, y = 7.7, label = "North America"), size = 4) +
  geom_text(aes(x = 15, y = 7.1, label = "America"), size = 4) +
  geom_text(aes(x = 17.7, y = 7.1, label = "America"), size = 4) +
  geom_text(aes(x = 20.8, y = 7.1, label = "Middle East"), size = 4) +
  # Remove the axis
  theme(axis.line = element_blank(),
        axis.text.x = element_blank(),
        axis.text.y = element_blank(),
        axis.ticks = element_blank(),
        axis.title.x = element_blank(),
        axis.title.y = element_blank())

slide6

# Saving the slide6 Plot
slide6
dev.copy(png, "slide6.png", width = 1340, height = 700, units = "px")
dev.off()


###############################################################################
# creating the slide5 Plot
slide5 <- ggplot() +
  geom_rect(data = df_rect, aes(xmin = xmin, xmax = xmax, ymin = ymin, ymax = ymax), 
            fill = "grey70", color = "black") +
  xlim(-2, 32) +
  ylim(0, 20) +
  theme_classic() +
  # Adding the small black circles
  geom_point(aes(x = 0, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 9, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 10.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 10.9, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 12, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 13.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 17, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 18, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 19, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 20, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 20.7, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 22.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 25, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 27.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  # Adding the vertical pointing lines
  geom_segment(aes(x = 0, y = 10.1, xend = 0, yend = 11.25), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 2.3, y = 10.4, xend = 2.3, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 4.8, y = 10.4, xend = 4.8, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 7.1, y = 10.4, xend = 7.1, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 9, y = 10.4, xend = 9, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 11.1, y = 10.1, xend = 11.1, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 12.5, y = 10.4, xend = 12.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 13.5, y = 10.4, xend = 13.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 15, y = 10.4, xend = 15, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 17, y = 10.4, xend = 17, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 19, y = 10.1, xend = 19, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 22.5, y = 10.4, xend = 22.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 27.5, y = 10.4, xend = 27.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 29, y = 10, xend = 29, yend = 10.8), color = "black", linewidth = 0.3) +
  # Adding the text
  geom_text(aes(x = 0.9, y = 13.7, label = "Eurasia"), size = 4) +
  geom_text(aes(x = 6.7, y = 13.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 10.2, y = 13.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 12.6, y = 13.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 16, y = 13.7, label = "Central Asia"), size = 4) +
  geom_text(aes(x = 20.2, y = 13, label = "Central Asia"), size = 4) +
  geom_text(aes(x = 24.2, y = 13, label = "Middle East"), size = 4) +
  geom_text(aes(x = 28.2, y = 13.7, label = "East Asia/"), size = 4) +
  geom_text(aes(x = 28.2, y = 13, label = "Middle East"), size = 4) +
  geom_text(aes(x = 10.9, y = 9.85, label = "10,000"), size = 4) +
  geom_text(aes(x = 10.9, y = 9.4, label = "years ago"), size = 3.5) +
  geom_text(aes(x = 19, y = 9.85, label = "5,000"), size = 4) +
  geom_text(aes(x = 19, y = 9.4, label = "years ago"), size = 4) +
  geom_text(aes(x = 28.65, y = 9.9, label = "Present day"), size = 4) +
  geom_text(aes(x = 5, y = 7.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 9.1, y = 7.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 12.4, y = 7.7, label = "South Asia"), size = 4) +
  geom_text(aes(x = 20.8, y = 7.7, label = "East Asia/"), size = 4) +
  geom_text(aes(x = 20.8, y = 7.1, label = "Middle East"), size = 4) +
  # Remove the axis
  theme(axis.line = element_blank(),
        axis.text.x = element_blank(),
        axis.text.y = element_blank(),
        axis.ticks = element_blank(),
        axis.title.x = element_blank(),
        axis.title.y = element_blank())

slide5

# Saving the slide5 Plot
slide5
dev.copy(png, "slide5.png", width = 1340, height = 700, units = "px")
dev.off()


###############################################################################
# creating the slide4 Plot
slide4 <- ggplot() +
  geom_rect(data = df_rect, aes(xmin = xmin, xmax = xmax, ymin = ymin, ymax = ymax), 
            fill = "grey70", color = "black") +
  xlim(-2, 32) +
  ylim(0, 20) +
  theme_classic() +
  # Adding the small black circles
  geom_point(aes(x = 0, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 9, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 10.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 10.9, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 12, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 13.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 17, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 18, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 19, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 20, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 20.7, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 22.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 25, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 27.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  # Adding the vertical pointing lines
  geom_segment(aes(x = 0, y = 10.1, xend = 0, yend = 11.25), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 2.3, y = 10.4, xend = 2.3, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 4.8, y = 10.4, xend = 4.8, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 7.1, y = 10.4, xend = 7.1, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 9, y = 10.4, xend = 9, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 11.1, y = 10.1, xend = 11.1, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 12.5, y = 10.4, xend = 12.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 13.5, y = 10.4, xend = 13.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 15, y = 10.4, xend = 15, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 17, y = 10.4, xend = 17, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 19, y = 10.1, xend = 19, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 22.5, y = 10.4, xend = 22.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 27.5, y = 10.4, xend = 27.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 29, y = 10, xend = 29, yend = 10.8), color = "black", linewidth = 0.3) +
  # Adding the text
  geom_text(aes(x = 6.7, y = 13.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 10.2, y = 13.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 12.6, y = 13.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 24.2, y = 13, label = "Middle East"), size = 4) +
  geom_text(aes(x = 10.9, y = 9.85, label = "10,000"), size = 4) +
  geom_text(aes(x = 10.9, y = 9.4, label = "years ago"), size = 3.5) +
  geom_text(aes(x = 19, y = 9.85, label = "5,000"), size = 4) +
  geom_text(aes(x = 19, y = 9.4, label = "years ago"), size = 4) +
  geom_text(aes(x = 28.65, y = 9.9, label = "Present day"), size = 4) +
  geom_text(aes(x = 5, y = 7.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 9.1, y = 7.7, label = "Middle East"), size = 4) +
  geom_text(aes(x = 20.8, y = 7.7, label = "East Asia/"), size = 4) +
  geom_text(aes(x = 20.8, y = 7.1, label = "Middle East"), size = 4) +
  # Remove the axis
  theme(axis.line = element_blank(),
        axis.text.x = element_blank(),
        axis.text.y = element_blank(),
        axis.ticks = element_blank(),
        axis.title.x = element_blank(),
        axis.title.y = element_blank())

slide4

# Saving the slide4 Plot
slide4
dev.copy(png, "slide4.png", width = 1340, height = 700, units = "px")
dev.off()


###############################################################################
# creating the slide3 Plot
slide3 <- ggplot() +
  geom_rect(data = df_rect, aes(xmin = xmin, xmax = xmax, ymin = ymin, ymax = ymax), 
            fill = "grey70", color = "black") +
  xlim(-2, 32) +
  ylim(0, 20) +
  theme_classic() +
  # Adding the small black circles
  geom_point(aes(x = 0, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 9, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 10.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 10.9, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 12, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 13.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 17, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 18, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 19, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 20, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 20.7, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 22.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 25, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 27.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  # Adding the vertical pointing lines
  geom_segment(aes(x = 0, y = 10.1, xend = 0, yend = 11.25), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 2.3, y = 10.4, xend = 2.3, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 4.8, y = 10.4, xend = 4.8, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 7.1, y = 10.4, xend = 7.1, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 9, y = 10.4, xend = 9, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 11.1, y = 10.1, xend = 11.1, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 12.5, y = 10.4, xend = 12.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 13.5, y = 10.4, xend = 13.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 15, y = 10.4, xend = 15, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 17, y = 10.4, xend = 17, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 19, y = 10.1, xend = 19, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 22.5, y = 10.4, xend = 22.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 27.5, y = 10.4, xend = 27.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 29, y = 10, xend = 29, yend = 10.8), color = "black", linewidth = 0.3) +
  # Adding the text
  geom_text(aes(x = 10.9, y = 9.85, label = "10,000"), size = 4) +
  geom_text(aes(x = 10.9, y = 9.4, label = "years ago"), size = 3.5) +
  geom_text(aes(x = 19, y = 9.85, label = "5,000"), size = 4) +
  geom_text(aes(x = 19, y = 9.4, label = "years ago"), size = 4) +
  geom_text(aes(x = 28.65, y = 9.9, label = "Present day"), size = 4) +
  # Remove the axis
  theme(axis.line = element_blank(),
        axis.text.x = element_blank(),
        axis.text.y = element_blank(),
        axis.ticks = element_blank(),
        axis.title.x = element_blank(),
        axis.title.y = element_blank())

slide3

# Saving the full plot slide3 Plot
slide3
dev.copy(png, "slide3.png", width = 1340, height = 700, units = "px")
dev.off()


###############################################################################
# creating the slide2 Plot
slide2 <- ggplot() +
  geom_rect(data = df_rect, aes(xmin = xmin, xmax = xmax, ymin = ymin, ymax = ymax), 
            fill = "grey70", color = "black") +
  xlim(-2, 32) +
  ylim(0, 20) +
  theme_classic() +
  # Adding the small black circles
  geom_point(aes(x = 0, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 9, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 10.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 10.9, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 12, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 13.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 17, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 18, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 19, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 20, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 20.7, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 22.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 25, y = 10.6), shape = 19, fill = "black", size = 2) +
  geom_point(aes(x = 27.5, y = 10.6), shape = 19, fill = "black", size = 2) +
  # Adding the vertical pointing lines
  geom_segment(aes(x = 2.3, y = 10.4, xend = 2.3, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 4.8, y = 10.4, xend = 4.8, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 7.1, y = 10.4, xend = 7.1, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 9, y = 10.4, xend = 9, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 12.5, y = 10.4, xend = 12.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 13.5, y = 10.4, xend = 13.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 15, y = 10.4, xend = 15, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 17, y = 10.4, xend = 17, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 22.5, y = 10.4, xend = 22.5, yend = 10.8), color = "black", linewidth = 0.3) +
  geom_segment(aes(x = 27.5, y = 10.4, xend = 27.5, yend = 10.8), color = "black", linewidth = 0.3) +
  # Remove the axis
  theme(axis.line = element_blank(),
        axis.text.x = element_blank(),
        axis.text.y = element_blank(),
        axis.ticks = element_blank(),
        axis.title.x = element_blank(),
        axis.title.y = element_blank())

slide2

# Saving the slide2 Plot
slide2
dev.copy(png, "slide2.png", width = 1340, height = 700, units = "px")
dev.off()

#######################################################################################
