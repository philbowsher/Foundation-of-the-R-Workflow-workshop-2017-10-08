# data are from 

# library("rgdal")

# Torn = readOGR(dsn = ".", layer = "torn")

# Torn$Year = as.integer(Torn$yr)
# Torn = subset(Torn, Year > 2010)

# View(Torn)

#Torn1 <- as_tibble(Torn)
#Torn1 %>% write_csv('Torn.csv')

Torn <- read_csv("/home/phil/Foundation-of-the-R-Workflow-workshop-2017-10-08/data/torn/Torn.csv")

Torn1 <- Torn[ which((Torn$st=='IL' | Torn$st=='IA') & Torn$yr== 2016), ]

View(Torn1)

library("leaflet") 

leaflet() %>% addTiles() %>% setView(-90.424373, 41.476831, zoom = 9) %>% 
  
  addMarkers(data = Torn1, lat = ~ slat, lng = ~ slon, popup = Torn1$date)

# Torn2 <- as_tibble(Torn1)

# Torn2 %>% write_csv('Torn2.csv')
