library(sf)
library(dplyr)
library(readr)
library(ggplot2)

Gii_df <- st_read("2010-2019.csv")
world_data<- st_read("World_Countries_(Generalized)_9029012925078512962.geojson")


# head(world_data)
# head(Gii_df)
# 
# names(Gii_df)[2] <- "COUNTRY"
# 
# merged_sf <- world_data %>%
#   left_join(Gii_df, by = "COUNTRY") 
# 
# 
# 
# ggplot(merged_sf) +
#   geom_sf(aes(fill = GII_diff_2010_2019)) +
#   scale_fill_viridis_c(name = "GII Difference (2010-2019)", option = "C") +
#   labs(title = "Global Gender Inequality Index Difference (2010-2019)") +
#   theme_minimal()


