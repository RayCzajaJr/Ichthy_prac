library(ggplot2)
library(tidyverse)
library(readxl)


IchthyoDietTable2 <- read_excel("IchthyoDietTable2.xlsx")

DietFig2<-ggplot(IchthyoDietTable2,
                aes(x = LatinName, 
                    y = Prey,
                    colour = Habitat,
                    size = Count)) +
  geom_point() +
  geom_text(aes(label = Count), 
            colour = "white", 
            size = 3) +
  scale_x_discrete(position = "bottom") +
  scale_size_continuous(range = c(0, 7)) + 
  scale_color_manual(values=c("seagreen4", "deepskyblue3", "brown4"))  +
  labs(x = "Ichthyoplankton Predator Taxon", y = "Zooplankton Prey Taxon") +
  theme_bw()+
  theme(legend.position = "none")+
  theme(axis.text.x = element_text(angle = 45, vjust =1, hjust=1))+
  scale_x_discrete(labels=c(
    expression(paste(italic("Auxis"), " spp.")),
    expression(paste(italic("Centropristis"), " spp.")),
    expression(paste(italic("Cynoscion nebulosus"))),
    expression(paste("Epinephelinae")),
    expression(paste("Etelinae")),
    expression(paste(italic("Euthynnus alletteratus"))),
    expression(paste("Istiophoridae")),
    expression(paste(italic("Katsuwonus pelamis"))),
    expression(paste("Lutjaniae")),
    expression(paste(italic("Mugil cephalus"))),
    expression(paste(italic("Sciaenops ocellatus"))),
    expression(paste(italic("Scomberomorus maculatus"))),
    expression(paste(italic("Thunnus albacares"))),
    expression(paste(italic("Thunnus thynnus"))),
    expression(paste(italic("Xiphias gladius")))))
DietFig2

#this version has a different orientation for the axis labels
#this is merely practice for pushing and pulling from github
DietFig3<-ggplot(IchthyoDietTable2,
                aes(x = LatinName, 
                    y = Prey,
                    colour = Habitat,
                    size = Count)) +
  geom_point() +
  geom_text(aes(label = Count), 
            colour = "white", 
            size = 3) +
  scale_x_discrete(position = "bottom") +
  scale_size_continuous(range = c(0, 7)) + 
  scale_color_manual(values=c("seagreen4", "deepskyblue3", "brown4"))  +
  labs(x = "Ichthyoplankton Predator Taxon", y = "Zooplankton Prey Taxon") +
  theme_bw()+
  theme(legend.position = "none")+
  theme(axis.text.x = element_text(angle = 90, vjust =1, hjust=1))+
  scale_x_discrete(labels=c(
    expression(paste(italic("Auxis"), " spp.")),
    expression(paste(italic("Centropristis"), " spp.")),
    expression(paste(italic("Cynoscion nebulosus"))),
    expression(paste("Epinephelinae")),
    expression(paste("Etelinae")),
    expression(paste(italic("Euthynnus alletteratus"))),
    expression(paste("Istiophoridae")),
    expression(paste(italic("Katsuwonus pelamis"))),
    expression(paste("Lutjaniae")),
    expression(paste(italic("Mugil cephalus"))),
    expression(paste(italic("Sciaenops ocellatus"))),
    expression(paste(italic("Scomberomorus maculatus"))),
    expression(paste(italic("Thunnus albacares"))),
    expression(paste(italic("Thunnus thynnus"))),
    expression(paste(italic("Xiphias gladius")))))
DietFig3
