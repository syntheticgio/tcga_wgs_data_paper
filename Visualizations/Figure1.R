# Distribution of variants by cancer count.  Various visualization types.  Boxplot was used in the paper.
# NOTE: file location with the combined counts for each cancer type will need to be updated on line 10.

# Libraries
library(tidyverse)
library(hrbrthemes)
library(viridis)

# Read in data table
data <- read.csv(file="<FILE LOCATION>")

# Boxplot Plot
data %>%
    ggplot( aes(x=cancer, y=variant_count, fill=cancer)) +
    geom_boxplot(varwidth=TRUE) +
    scale_fill_viridis(discrete = TRUE, alpha=0.6) +
    geom_jitter(color="black", size=0.4, alpha=0.9) +
    theme_ipsum() +
    theme(
        legend.position="none",
        plot.title = element_text(size=13),
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5)
    ) +
    ggtitle("Distribution of variants by cancer group") +
    xlab("Cancer Type") + ylab("Variant Count")


# Density Plot
ggplot(data=data, aes(x=variant_count, group=cancer, fill=cancer)) +
    geom_density(adjust=1.5, position="fill") +
    theme_ipsum() +
    theme(
        legend.position="right"
    ) +
    xlab("Variant Count") +
    ylab("") +
    ggtitle("Cancer Groups by Variant Density")


# Ridge Plot
ggplot(data, aes(x = `variant_count`, y = `cancer`, fill = ..x..)) +
    geom_density_ridges_gradient(scale = 3, rel_min_height = 0.01) +
    scale_fill_viridis(name = "Temp. [F]", option = "C") +
    labs(title = 'Distribution of variant counts within cancer samples') +
    theme_ipsum() +
    theme(
        legend.position="none",
        panel.spacing = unit(0.1, "lines"),
        strip.text.x = element_text(size = 8)
    ) +
    xlab("Variant Count") +
    ylab("Cancer")


# Violin Plot
data %>%
    ggplot( aes(x=cancer, y=variant_count, fill=cancer)) +
    geom_violin() +
    scale_fill_viridis(discrete = TRUE, alpha=0.6, option="A") +
    theme_ipsum() +
    theme(
        legend.position="right",
        plot.title = element_text(size=13),
        axis.text.x = element_text(angle=90, hjust=1, vjust=0.5)
    ) +
    ggtitle("Distribution of Variant Counts Within Cancer Groups") +
    xlab("Cancer Type") + ylab("Variant Count")
