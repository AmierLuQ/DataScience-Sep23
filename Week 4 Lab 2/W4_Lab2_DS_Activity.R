str(Carseats)
?Carseats

describe(Carseats)
describe(Carseats,Sales,CompPrice,Income)
describe(Carseats,Sales:Income)
describe(Carseats,-(Sales:Income))

normality(Carseats)
normality(Carseats,Sales,CompPrice,Income)
normality(Carseats,Sales:Income)
normality(Carseats,-(Sales:Income))

plot_normality(Carseats,Sales:CompPrice)

correlate(Carseats)
correlate(Carseats,Sales,CompPrice,Income)
correlate(Carseats,Sales:Income)
correlate(Carseats,-(Sales:Income))

describe(Carseats,US)

Carseats%>%
  correlate()%>%
  plot()

correlate(Carseats,Sales,CompPrice,Income)%>%
  plot()

categ <- target_by(Carseats,US)

cat_num <- relate(categ,Sales)
cat_num
summary(cat_num)
plot(cat_num)

cat_cat <- relate(categ,ShelveLoc)
cat_cat
summary(cat_cat)
plot(cat_cat)

num <- target_by(Carseats,Sales)
num_num <- relate(num,Price)
num_num
summary(num_num)
plot(num_num)


num <- target_by(Carseats,Sales)
num_cat <- relate(num,ShelveLoc)
num_cat
summary(num_cat)
plot(num_cat)
