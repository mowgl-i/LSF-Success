library(tidyverse)
library(stringi)

# Read in data

bttv_emotes_top <- read_csv('bttv_emotes_top.csv')

bttv_emotes_trending <- read_csv('bttv_emotes_trending.csv')

ffz_emotes <- read_csv('ffz_emotes.csv')

# Remove duplicate bttv emotes

bttv_emotes_trending_2<-bttv_emotes_trending %>% anti_join(bttv_emotes_top,by = 'emote_name')


bttv_emotes<-bttv_emotes_top %>% rbind(bttv_emotes_trending_2)

# Remove duplicate ffz emotes

ffz_emotes_2<-ffz_emotes %>% anti_join(bttv_emotes, by = 'emote_name')

emote_dictionary <- full_join(bttv_emotes %>% select(emote_name,emote_image)
                              , ffz_emotes_2 %>% select(emote_name,emote_link))

write_csv(emote_dictionary,path = 'emote_dictionary.csv')
