#varible selection model
ddexp = function(x, mu, tau) {
  0.5*tau*exp(-tau*abs(x-mu)) 
}

mod1_string = " model {
    for (i in 1:length(y)) {
        y[i] ~ dbern(p[i])
        logit(p[i]) = int + b[1]*age[i] + b[2]*cph[i] +
                            b[3]*ejec[i] + b[4]*pla [i] + 
                            b[5]*serumc[i] + b[6]*serums[i] +
                            b[7]*time[i] +
                            b[8]*ana[i] + b[9]*diabe[i] +
                            b[10]*hbp[i] + b[11]*sex[i] +
                            b[12]*smoking[i]
    }
    int ~ dnorm(0.0, 1.0/25.0)
    for (j in 1:12) {
        b[j] ~ ddexp(0.0, sqrt(2.0)) # has variance 1.0
    }
} "


