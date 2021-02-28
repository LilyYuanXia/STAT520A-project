# logistic regression model
mod2_string = " model {
    for (i in 1:length(y)) {
        y[i] ~ dbern(p[i])
        logit(p[i]) = int + b[1]*age[i] + b[2]*cph[i] +
                            b[3]*ejec[i] + b[4]*serumc[i] +
                            b[5]*serums[i] + b[6]*time[i] +
                            b[7]*diabe[i] + b[8]*sex[i]
    }
    int ~ dnorm(0.0, 1.0/25.0)
    for (j in 1:8) {
        b[j] ~ dnorm(0.0, 1.0/25.0) # noninformative for logistic regression
    }
} "