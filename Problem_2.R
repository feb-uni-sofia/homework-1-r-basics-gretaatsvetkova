## WARNING: the code below is generally unreadable.

#Problem 2
> 
> #a
> xmin<-c(23.0,20.5,28.2,20.3,22.4,17.2,18.2)
> xmax<-c(25.0,22.8,31.2,27.3,28.4,20.2,24.1)
> date<-c('03Mon18','04Tue18','05Wed18','04Thu18','05Fri18','06Sat18','07Sun18')
> 
> #b
## Wrong: the question asks about the difference, not the absolute difference

## Use informative names, the meaning of DELTA_COST is unclear!
> DELTA_COST<-abs(xmax-xmin)
> DELTA_COST
[1] 2.0 2.3 3.0 7.0 6.0 3.0 5.9
> 
> #c
## WARNING: including unnecessary code will lead to score reduction.

> xmax
[1] 25.0 22.8 31.2 27.3 28.4 20.2 24.1
> totalxmax<-sum(xmax)
> totalxmax
[1] 179
> xmin
[1] 23.0 20.5 28.2 20.3 22.4 17.2 18.2
> totalxmin<-sum(xmin)
> totalxmin
[1] 149.8
> avgxmax<-totalxmax/length(xmax)
> avgxmax
[1] 25.57143
> avgxmin<-totalxmin/length(xmin)
> avgxmin
[1] 21.4
> 

> #d
> names(xmin) <- date
> xmin[c('04Tue18','04Thu18','06Sat18','07Sun18')]
04Tue18 04Thu18 06Sat18 07Sun18 
   20.5    20.3    17.2    18.2 
> 
> #e
> xmin[c('03Mon18','05Wed18','05Fri18')]
03Mon18 05Wed18 05Fri18 
   23.0    28.2    22.4 
> 
> #f
> xminbelow<-c(20.5,20.3,17.2,18.2)
> xminbelow
[1] 20.5 20.3 17.2 18.2
> datebelow<-c('04Tue18','04Thu18','06Sat18','07Sun18')
> names(xminbelow)<-datebelow
> xminbelow
04Tue18 04Thu18 06Sat18 07Sun18 
   20.5    20.3    17.2    18.2 
> xmaxabove<-c(23.0,28.2,22.4)
dateabove<-c('03Mon18','05Wed18','05Fri18')
> names(xmaxabove)<-dateabove
> xmaxabove
03Mon18 05Wed18 05Fri18 
   23.0    28.2    22.4 
xmin_name<-xmin
> xmin
03Mon18 04Tue18 05Wed18 04Thu18 05Fri18 06Sat18 07Sun18 
   23.0    20.5    28.2    20.3    22.4    17.2    18.2 
> xmax_name<-xmax
> xmax
[1] 25.0 22.8 31.2 27.3 28.4 20.2 24.1
> names(xmax)<-date
> xmax[c('03Mon18','04Tue18','05Wed18','04Thu18','05Fi18','06Sat18','07Sun18')]
03Mon18 04Tue18 05Wed18 04Thu18    <NA> 06Sat18 07Sun18 
   25.0    22.8    31.2    27.3      NA    20.2    24.1 
> 
> #g
## This is unnecessary!
> xmin_name<-"xmin"
> xmax_name<-"xmax"

## The following line was all that the problem is asking for.
> temperatures<-data.frame(xmin,xmax)

## Also unnecessary
> names(temperatures)<-c(xmin_name,xmax_name)
> print(temperatures)
        xmin xmax
03Mon18 23.0 25.0
04Tue18 20.5 22.8
05Wed18 28.2 31.2
04Thu18 20.3 27.3
05Fri18 22.4 28.4
06Sat18 17.2 20.2
07Sun18 18.2 24.1
> 
> #h
# Writing a function was not necessary!

> celsius=c(23.0,20.5,28.2,20.3,22.4,17.2,18.2)
> toFahrenheit=function(celsius){f=(9/5)*celsius+32;return(f);}
> toFahrenheit(celsius)

## It is not immediately clear what celsius refers to!

[1] 73.40 68.90 82.76 68.54 72.32 62.96 64.76
> temperatures["xminFahrenheit"]<-toFahrenheit(celsius)
> temperatures
        xmin xmax xminFahrenheit
03Mon18 23.0 25.0          73.40
04Tue18 20.5 22.8          68.90
05Wed18 28.2 31.2          82.76
04Thu18 20.3 27.3          68.54
05Fri18 22.4 28.4          72.32
06Sat18 17.2 20.2          62.96
07Sun18 18.2 24.1          64.76
> 
> #i
Fahrenheit<-c(73.4,68.9,82.76,68.54,72.32,62.96,64.76)
> Fahrenheit
[1] 73.40 68.90 82.76 68.54 72.32 62.96 64.76
> Fahrenheit_name<-"Fahrenheit"
> Fahrenheit<-data.frame(Fahrenheit)
> Fahrenheit
  Fahrenheit
1      73.40
2      68.90
3      82.76
4      68.54
5      72.32
6      62.96
7      64.76
> temperatures
        xmin xmax xminFahrenheit
03Mon18 23.0 25.0          73.40
04Tue18 20.5 22.8          68.90
05Wed18 28.2 31.2          82.76
04Thu18 20.3 27.3          68.54
05Fri18 22.4 28.4          72.32
06Sat18 17.2 20.2          62.96
07Sun18 18.2 24.1          64.76
> Fahrenheit
  Fahrenheit
1      73.40
2      68.90
3      82.76
4      68.54
5      72.32
6      62.96
7      64.76

