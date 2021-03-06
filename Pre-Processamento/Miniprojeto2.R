setwd("W:/powerbi/cap12/miniprojeto2")

getwd()

install.packages("dplyr")
installed.packages("data.table")
install.packages("data.table")

library(dplyr)
library(ggplot2)
library(data.table)

#tarefa 1

dados_iris <- iris
View(dados_iris)

medias_iris <- summarize(group_by(dados_iris, Species),
                         media_sepal_length = mean(Sepal.Length),
                         media_sepal_width = mean(Sepal.Width),
                         media_petal_length = mean(Petal.Length),
                         media_petal_width = mean(Petal.Width))
View(medias_iris)

#tarefa 2
dados_iris_id <- data.table(dados_iris)
View(dados_iris_id)
dados_iris_id$Sepal.Length <- as.integer(dados_iris_id$Sepal.Length)
View(dados_iris_id)

#tarefa 3
ggplot(data = dados_iris, aes(x = Petal.Width, y = Petal.Length)) +
  geom_point(aes(color = Species), size = 3) +
  ggtitle("Largura e Comprimento das P�talas") +
  labs( x = "Largura da P�tala",
        y = "Comprimento da P�tala") +
  theme_bw() +
  theme(title = element_text(size = 15, color = "turquoise4"))

colors()

graf_sepal <- ggplot(data = dados_iris, aes(x = Sepal.Width, y = Sepal.Length)) +
  geom_point(aes(color = Species), size = 3) +
  ggtitle("Largura e Comprimento das S�palas") +
  labs( x = "Largura da S�pala",
        y = "Comprimento da S�pala") +
  theme_bw() +
  theme(title = element_text(size = 15, color = "yellowgreen"))

plot(graf_sepal)
 