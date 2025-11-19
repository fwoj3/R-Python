# Script for data creation in meeting 3

# 1

d<- data.frame(ID = c("s1", "s2", "s3", "s4"), 
A = c("a1", "a2", "a3", NA), 
X1 = c(1, 2, 3, 4), 
X2 = c(5, 6, "a", 8), 
X3 = c(9, 10, 11, 12))

# 2

d_w <- data.frame(ID = c(1, 2, 3, 4), 
t0_ANX_1 = c(3, 4, 3, 2), 
t0_ANX_2 = c(3, 3, 5, 4), 
t0_DEP_1 = c(2, 4, 1, 5), 
t0_DEP_2 = c(4, 4, 4, 2), 
t1_ANX_1 = c(4, 3, 2, 2), 
t1_ANX_2 = c(5, 3, 4, 5), 
t1_DEP_1 = c(1, 3, 4, 3), 
t1_DEP_2 = c(3, 4, 4, 5))

# 3 

d <- data.frame(t0_dep01 = c(1, 2, 1), 
t0_dep02 = c(2, 2, 2), 
t0_dep03 = c(1, 2, 2), 
t0_anx01 = c(2, 2, 1), 
t0_anx02 = c(1, 1, 2), 
t1_dep01 = c(1, 1, 1), 
t1_dep02 = c(1, 2, 1), 
t1_dep03 = c(2, 2, 1), 
t1_anx01 = c(2, 2, 2), 
t1_anx02 = c(1, 2, 1))

# 4 

set.seed(12345) 
d <- data.frame(A = rep(c("a1", "a2", "a3"), each = 20), 
B = rep(c("b1", "b2"), times = 3, each = 10), 
Y = rnorm(60, 
mean = c(10, 10, 11, 9, 9, 11), 
sd = 2))

# 5 

d1 <- data.frame(ID = c("s1", "s2", "s3", "s4"), 
           A = c("a1", "a2", "a3", NA), 
           X1 = c(1, 2, 3, 4), 
           X2 = c(5, 6, "a", 8), 
           X3 = c(9, 10, 11, 12)) 

d2 <- data.frame(ID = c("s1", "s2", "s3", "s4"), 
           A = c("a1", "a4", NA, NA), 
           Y1 = c(13, 14, 15, 16),
 Y2 = c(17, 18, 19, 20), 
Y4 = c(21, 22, 23, 24))







#plot(d_w$t0_ANX_1, d_w$t0_DEP_1, col = "red")

#dim(d)
#str(d)

#View(d)
#apply(d[grep("DEP", names(d))], 2, mean)
#paste("Strings", "linked", "togeter")

#MyFriends <- c("Max", "Fips", "Tups")
#View(MyFriends)
#paste("I like", MyFriends)

#generowanie stingow wg schematu 
#String zawierajacy dzisiejsza date 

#today <- format(Sys.Date(), "%Y-%m-%d")
#print(today)

#wyliczanie sredniej dla obserwacji 
t0_mean_dep <-rowMeans(d[grep("DEP", names(d))])

save(WBD, file = "WBD.RData")

write.csv(WBD, file = "WBD.csv")

forei