
## WARNING: do not submit unrunnable code! 
## The next time it will not be reviewed and will not be graded at all!


 #Problem 1
> 
> #a
> x<-c(4,1,1,4)
> 
> #b
> y<-c(1,4)
> 
> #c
## c function is unnecessary here

> DELTA_COST<-c(x-y)
> DELTA_COST
[1]  3 -3  0  0

## Missing explanation.

## Unnecessary code!
> mean(DELTA_COST)
[1] 0
> 
> #d

## Do not overwrite built-in objects like 'all'.
## Furthermore all is not being used in the subsequent code.

> all<-c(x,y)
> all
[1] 4 1 1 4 1 4

> s<-c(4,1,1,4,1,4)

## Unnecessary code!
> names(s)<-c(4,1,1,4,1,4)
> names(s)
[1] "4" "1" "1" "4" "1" "4"
> 
> #e

## Correct
rep(s, 10)

> rep(c(4,1,1,4,1,4),times=10)
 [1] 4 1 1 4 1 4 4 1 1 4 1 4 4 1 1 4 1 4 4 1 1 4 1 4 4 1 1 4 1 4 4 1 1 4 1 4 4 1 1 4 1 4 4 1 1 4
[47] 1 4 4 1 1 4 1 4 4 1 1 4 1 4
> length(s)
[1] 6
> 
> #f

## Correct
rep(s, each = 3)

> rep(c(4,1,1,4,1,4),each=3)
 [1] 4 4 4 1 1 1 1 1 1 4 4 4 1 1 1 4 4 4
> 
> #g
> s<-7:21
> s
 [1]  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21
> 
> #h

## Do not use assignment inside of function arguments!

> length(s<-7:21)
[1] 15

length(s)
## is sufficient here
