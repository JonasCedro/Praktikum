#Basic Balanced Blocked Data Simulation

soil <- c(rep(1, 10), rep(0, 10))

fert <- rep(c(1, 0), times = 10)

error <- rnorm(20, mean = 0, sd = 2)

avgyield <- 10
treat <- 2.5
conf1 <- 0.3
conf2 <- -0.3

yield1 <- avgyield + treat*fert + conf1 * soil + conf2*soil*fert + error

mean(yield1[which(soil == 1)])
mean(yield[which(soil == 0)])

mean(yield1[which(fert == 1)])
mean(yield1[which(fert == 0)])

t.test(yield1[which(fert == 1)], yield1[which(fert == 0)])
t.test(yield1[which(fert == 1)], yield1[which(fert == 0)], paired = TRUE)

yield2 <- avgyield + treat*fert + conf1 * soil + error

t.test(yield2[which(fert == 1)], yield2[which(fert == 0)])
t.test(yield2[which(fert == 1)], yield2[which(fert == 0)], paired = TRUE)

yield3 <- avgyield + treat*fert + error

t.test(yield3[which(fert == 1)], yield3[which(fert == 0)])
t.test(yield3[which(fert == 1)], yield3[which(fert == 0)], paired = TRUE)
