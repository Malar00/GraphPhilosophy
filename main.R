# Title     : TODO
# Objective : TODO
# Created by: Jan Sitarski & Konstatny Krzemien
# Created on: 26/01/2020

library(igraph)
library(networkD3)

data <- data.frame(
  from=c("Filozofia","Filozofia","Filozofia","Filozofia","Filozofia","Aksjologia","Aksjologia","Logika",
         "Ontologia","Ontologia","Ontologia","Epistemologia","Epistemologia","Epistemologia","Epistemologia","Aksjologia","Aksjologia","Aksjologia","Estetyka","Estetyka","Estetyka","Estetyka","Etyka","Etyka","Etyka","Etyka","Antropologia","Antropologia","Antropologia","Antropologia","Logika","Logika","Logika","H.Filozofii"),
  to=c("Epistemologia","Ontologia","Antropologia","Aksjologia","Logika","Etyka","Estetyka","H.Filozofii",
       "Czas","Przestrzen","Istota","Kartezjusz","Tezeusz","Jezyk","Sokrates","Wartosci","Tworczosc","Szczescie","Artysta","Piekno","Sztuka","Deontologia","Wartosci","Zlo","Dobro","Kumare","Schopenhauer","Czlowieczenstwo","Nietzsche","Sofia","Arystoteles","Schron","Zagatki","Tatarkiewicz")
)

p <- simpleNetwork(data, height="100px", width="100px",
        Source = 1,
        Target = 2,
        linkDistance = 5,
        charge = -900,
        fontSize = 14,
        linkColour = "#666",
        nodeColour = "#69b3a2",
        opacity = 0.9,
        zoom = T
        )

library(htmlwidgets)
saveWidget(p, file=paste0( getwd(), "networkInteractive.html"))
