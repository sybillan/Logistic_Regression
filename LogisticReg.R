#Logistic Regression

library(datasets)
Titanic_df<-data.frame(Titanic)
Titanic_df$Class<-as.factor(Titanic_df$Class)
regre<-glm(Survived~Class+Age+Sex+Freq,data=Titanic_df, family="binomial")
summary(regre)

#Case 1
y<-data.frame(Class=as.factor("Crew"),Age="Adult",Sex="Female",Freq=as.numeric("280"))
predict(regre,y, type="response")

#Case 2
y<-data.frame(Class=as.factor("1st"),Age="Adult",Sex="Female",Freq=as.numeric("20"))
predict(regre,y, type="response")

#Case 3
y<-data.frame(Class=as.factor("1st"),Age="Child",Sex="Female",Freq=as.numeric("20"))
predict(regre,y, type="response")

plot(Survived~Class, data=Titanic_df, col="red4")

