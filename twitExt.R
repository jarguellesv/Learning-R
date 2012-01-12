library(twitteR)

tweetPrint <- function(tws) {
                tweet = tws[[1]]
                tweet_txt = tweet$getText()
                Encoding(tweet_txt) <- "latin1"
                print(tweet$getScreenName())
                print(tweet_txt)
              }

findHashTag <- function(tws,number) {
	 	 tweet = tws[[number]]
		 tweet_txt = tweet$getText()
		 Encoding(tweet_txt) <- "latin1"
		 tweet_perword <- strsplit(tweet_txt," ")
		 hashtags <- character()
		 for(i in seq(length(tweet_perword[[1]]))) {
                    if(substr(tweet_perword[[1]][i],0,1)=="#"){
		       hashtags <- c(hashtags,tolower(tweet_perword[[1]][i]))
		    }
		 }
		 hashtags
	       }

findHashTags <- function(tws) {
		  hashtags <- character() 
		  for(i in seq(length(tws))){
                    hashtags <- c(hashtags,findHashTag(tws,i))
		  }
		  hashtags
		}
