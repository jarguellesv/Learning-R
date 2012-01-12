source("twitExt.R")

epn_tws = searchTwitter('@epn',n=1500)
amlo_tws = searchTwitter('@lopezobrador_',n=1500)
josefina_tws = searchTwitter('@JosefinaVM',n=1500)

#tweetPrint(epn_tws)
#findHashTag(epn_tws,1)

epn_stats <- as.data.frame(table(findHashTags(epn_tws)))
amlo_stats <- as.data.frame(table(findHashTags(amlo_tws)))
josefina_stats <- as.data.frame(table(findHashTags(josefina_tws)))

print("EPN Stats:")
print(subset(epn_stats, Freq > 5))
print("AMLO Stats:")
print(subset(amlo_stats, Freq > 5))
print("Josefina Stats:")
print(subset(josefina_stats, Freq > 5))

