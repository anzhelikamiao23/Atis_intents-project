library("ggplot2")

data<- structure(list(sample = structure(c(1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L), 
                                         .Label = c("SVC", "XGBoost"), class = "factor"), 
                      y = c(0.9658634538152611, 0.9585006693440429, 0.9263721552878179, 0.8888888888888888, 0.8493975903614458, 0.9551539491298527, 0.9457831325301205, 0.9082998661311914, 0.8761713520749665, 0.8366800535475234), 
                      time = c(1,2,3,4,5,1,2,3,4,5)), 
                 .Names = c("sample", "y", "x"), class = "data.frame", row.names = c(NA, -10L))

ggplot(data = data, aes(x = x, y = y, color = sample)) + 
  geom_point(size=4) + 
  geom_line(aes(group = sample)) + 
  scale_color_manual(values = c("SVC" = "black", "XGBoost" = "red"))

