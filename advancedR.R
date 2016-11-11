# library(swirl)
# install_course("Advanced R Programming")
swirl()

# install.packages("purrr")
library("purrr")

map_chr(c(5, 4, 3, 2, 1), function(x){
  c("one", "two", "three", "four", "five")[x]
})

map_lgl(c(1, 2, 3, 4, 5), function(x){
  x > 3
})

map2_chr(letters, 1:26, paste)

pmap_chr(list(
  list(1, 2, 3),
  list("one", "two", "three"),
  list("uno", "dos", "tres")
), paste)



reduce(c(1, 3, 5, 7), function(x, y){
  message("x is ", x)
  message("y is ", y)
  message("")
  x + y
})

reduce_right(letters[1:4], function(x, y){
  message("x is ", x)
  message("y is ", y)
  message("")
  paste0(x, y)
})



every(1:20, function(x){
  x %% 2 == 0
})

some(1:20, function(x){
  x %% 2 == 0
})



mult_three_n <- function(x, y, z){
  x * y * z
}
mult_by_15 <- partial(mult_three_n, x = 3, y = 5)
mult_by_15(z = 4)


message("ABC", "DEF")
suppressMessages(message("ABC"))



fib <- function(n){
  stopifnot(n > 0)
  if(n == 1){
    0
  } else if(n == 2){
    1
  } else {
    fib(n - 1) + fib(n - 2)
  }
}

fib(12)

map_dbl(1:12, fib)




