library(sf)
library(dplyr)
library(readr)
library(ggplot2)

Gii_df <- st_read("2010-2019.csv")
world_data<- st_read("World_Countries_(Generalized)_9029012925078512962.geojson")


# head(world_data)
# head(Gii_df)
colnames(Gii_df) <- c("COUNTRY", "GII_2010", "2011","2012","2013","2014","2015","2016","2017","2018","GII_2019")

 
merged_sf <- world_data %>%
  left_join(Gii_df, by = "COUNTRY")

merged_sf <- merged_sf %>%
  mutate(
    GII_2010 = as.numeric(GII_2010),
    GII_2019 = as.numeric(GII_2019),
    GII_diff_2010_2019 = GII_2019 - GII_2010
  )
ggplot(merged_sf) +
  geom_sf(aes(fill = GII_diff_2010_2019)) +
  scale_fill_viridis_c(name = "GII Difference (2010-2019)", option = "C") +
  labs(title = "Global Gender Inequality Index Difference (2010-2019)") +
  theme_minimal()

