#prepare data
dat <- read.csv("heart_failure.csv")

set.seed(123)
labels <- sample(1:nrow(dat), 99)
train <- dat[-labels,]
test <- dat[labels,]


X = scale(dat[,-c(2,4,6,10,11,13)], center=TRUE, scale=TRUE)
X_train <- X[-labels,]
X_test <- X[labels,]

data_jags = list(y=train$DEATH_EVENT, age=X_train[,"age"],
                 cph=X_train[,"creatinine_phosphokinase"],
                 ejec=X_train[,"ejection_fraction"],
                 pla=X_train[,"platelets"],
                 serumc=X_train[,"serum_creatinine"],
                 serums=X_train[,"serum_sodium"], time=X_train[,"time"],
                 ana = train$anaemia, diabe=train$diabetes,
                 hbp=train$high_blood_pressure,
                 sex=train$sex, smoking=train$smoking
)
params = c("int", "b")