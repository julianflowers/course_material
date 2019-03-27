### Fingertips functions


## timeline

fingertips_timeline <- function(ProfileID = 26, AreaTypeID = 102){
  
  cat("Working...")  
  require(fingertipsR)
  require(tidyverse)
  
  df <- fingertips_data(ProfileID = ProfileID, AreaTypeID = AreaTypeID)
    
  df <- df %>%
    group_by(IndicatorID, Age, Sex) %>%
    mutate(index = paste(IndicatorName, Age, Sex)) %>%
    select(IndicatorName, Timeperiod, TimeperiodSortable, index) %>%
    distinct()
  
  df %>%
    ggplot(aes(reorder(Timeperiod, TimeperiodSortable),  index)) +
    geom_tile(fill = "black") +
    scale_x_discrete(position = "top") +
    theme(axis.text.y = element_text(size = 7), 
          axis.text.x = element_text(size = 7, angle = 90, hjust = 0)) +
    labs(x = "", y ="")
    
}




###########



## latest data

fingertips_latest_data <- function(ProfileID = 26, AreaTypeID = 102){
  
  cat("Working...")  
  require(fingertipsR)
  require(tidyverse)
  
  
  df <- fingertips_data(ProfileID = ProfileID, AreaTypeID = AreaTypeID)
  df <- df %>% 
    mutate(index = paste(IndicatorName, Age, Sex)) %>%
    group_by(IndicatorID, Age, Sex) %>%
    dplyr::filter(TimeperiodSortable == max(TimeperiodSortable)) %>%
    ungroup()
  
  df
  
}



###########

## missing data (most recent data for each indicator data)

fingertips_missing <- function(ProfileID = 26, AreaTypeID = 102, target = 0.1, method = "medianImpute"){
  
  #stop(!any(method) %in% c("medianImpute", "knnImpute", "bagImpute"), 
             #cat("not a valid imputation method"))
  require(fingertipsR)
  require(tidyverse)
  require(caret)
  
  df <- fingertips_latest_data(ProfileID = ProfileID, AreaTypeID = AreaTypeID)
  
  ##select variabels
  df <- df %>% select(index, AreaName, AreaCode, Value)
  ## create wide table
  dfw <- df %>% spread(index, Value)
  dfw1 <- dfw %>% janitor::clean_names()
  df_areas <- dfw %>% select(AreaName, AreaCode)
  
  
  
  ## calculate na values - remove columns where %na < target value
  dfw1 <- dfw1 %>% select_if(function(x) is.numeric(x) & mean(is.na(x)) < target)
  
  dfmod <- caret::preProcess(dfw1, method = method)
  dfw1 <- predict(dfmod, dfw1)
  dfw2 <- data.frame(df_areas, dfw1)
  dfw2
}



########

########

## pca on fingertips data

### run missing_fingertips first


fingertips_pca <- function(df){
  require(FactoMineR)
  ftpc <- PCA(df, scale.unit = TRUE, graph = TRUE)
  ftpc
  
}


##########

## clustering

fingertips_clusters <- function(df, clus.type = "kmeans", k= 3, seed = 1234){
  
  require(factoextra)
  clus <- eclust(df, FUNcluster = clus.type, k = k, seed = seed)
  clus
  
  
}

