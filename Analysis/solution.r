solutions = read.csv(file="~/Downloads/solutions.csv", header=TRUE)
reviews = read.csv(file="~/Downloads/reviews.csv", header=TRUE)
str(solutions)
str(reviews)

from.dfs(equijoin(left.input = to.dfs(keyval(reviews$id, reviews)), 
                  right.input = to.dfs(keyval(solutions$id, solutions))
         ))
