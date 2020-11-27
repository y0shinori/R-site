dat <- read.csv('corona.csv')
head(dat)
colnames(dat)

summary(dat)

dat$sinki <- dat$新規陽性
dat$kensa <- dat$検査人数移動平均

head(dat)

plot(dat$陽性者数, dat$新規陽性)
fit <- glm(新規陽性 ~ 陽性者数, data = dat, family = poisson())
summary(fit) #より詳細な結果を表示する


