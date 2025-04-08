# Charger les librairies nécessaires
library(ggplot2)

# Créer un jeu de données simple mais visuellement intéressant
data <- data.frame(
  x = rnorm(100),
  y = rnorm(100),
  group = sample(c("A", "B", "C"), 100, replace = TRUE)
)

# Créer un graphique en nuage de points avec ggplot2
p <- ggplot(data, aes(x = x, y = y, color = group)) +
  geom_point(size = 3, alpha = 0.7) +
  theme_minimal() +
  labs(
    title = "Nuage de points groupé",
    x = "Valeur X",
    y = "Valeur Y",
    color = "Groupe"
  )

# Afficher le graphique
print(p)
