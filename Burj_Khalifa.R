# Burj Khalifa - https://en.wikipedia.org/wiki/Burj_Khalifa

require(ggplot2)

theme_update(plot.title = element_text(hjust = 0.5))

data <- read.csv("burj_khalifa_dataset.csv")

sc <- ggplot(data, aes(data$normal_error))
sc <- sc + geom_histogram(aes(y = ..density..), binwidth = 0.0002) + labs(x="Not So Random Error (NSRE)", title="Burj Khalifa! Is that you?") + theme(legend.position="none")
sc
