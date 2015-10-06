mysample <- read.table(header=TRUE, text="
n4 n3 n2 n1 frequent
                       j  g  g  e        1
                       h  i  d  d        1
                       a  c  g  d        1
                       g  f  f  a        1
                       h  j  i  e        1
                       h  h  h  e        1
                       f  j  a  j        3
                       j  d  f  a        1
                       b  c  f  i        2
                       c  c  d  a        1
                       j  a  j  c        2
                       d  a  a  j        1")

position <- 1:nrow(mysample)

n4list <- tapply(position,mysample$n4,c)
n3list <- tapply(position,mysample$n3,c)
n2list <- tapply(position,mysample$n2,c)
predictions <- mysample$n1
#example prediction "f j a..."
predictions[intersect(n4list[["f"]], intersect(n3list[["j"]],n2list[["a"]]))]
