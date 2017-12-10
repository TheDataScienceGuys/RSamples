install.packages("lubridate")
library(lubridate)

date<-now()

am(date)
pm(date)

# second(), minute(), hour(), day(), wday(), yday(), week(), month(), year(), and tz(). 

day(date)
month(date)
month(date, label = T)
month(date, label = T, abbr = F)

year(date)

hour(date)
minute(date)
? minute


# Create an object
#This could also have been achieved with any combination of d(ay) m(onth) y(ear), i.e. ymd() or dym() .
date <- dmy("10122017")
date <- dmy("10-12-2017")
date <- dmy("10/12/2017")
date <- dmy("10.12.2017")
date <- dmy("10 12 2017")
date <- dmy("10#12#2017")
date <- dmy("10~12~2017")
date <- dmy("1@1@2017")
day(date)
wday(date)


wday(date)  # day of the week
wday(date, label = T)  # day of the week, abreviated

date + 2

#What is the day 20 days from now
wday(date + 20, label = T, abbr = F)

#What is the day 2 years from now
wday(date + years(2), label = T)
wday(date + years(2) + months(2) + days(22))
wday(date + years(0) + months(0) + days(3))


yday(date)  # day of the year


wday(bday + years(1), label = T)  # day of week one year later
 
table(sapply(1:100, function(x) wday(bday + years(x), label = T)))  # days of the week for next 100 years.

arrivalDate <- dmy_hms("14-12-2017 22:30:00")
arrivalDate <- ymd_hms("2017-12-14 22:30:00")

minute(arrivalDate)
second(arrivalDate)

month(arrivalDate, label = T, abbr = F)


#Intervals

Employee1VacationStart <- dmy_hms("01-July-2017 15:30:00")
Employee1VacationEnd <- dmy_hms("06-August-2017 08:30:00")

Employee1Vacation <- interval(Employee1VacationStart, Employee1VacationEnd)

Employee1Vacation


Employee2VacationStart <- dmy("30-July-2017")
Employee2VacationEnd <- dmy("06-September-2017")
Employee2Vacation <- interval(Employee2VacationStart, Employee2VacationEnd)


int_overlaps(Employee1Vacation, Employee2Vacation)

#Overlapping
setdiff(Employee2Vacation, Employee1Vacation)
setdiff(Employee1Vacation, Employee2Vacation)


leap_year(2017)


#Other functions
#int_start(), int_end, int_flip, int_shift, int_aligns, union, intersect, and %within% .
int_start(Employee2Vacation)
int_end(Employee2Vacation)





round_date(dmy_hms('13-12-2017 11:59:00'), unit = "week")
round_date(dmy_hms('13-12-2017 12:00:00'), unit = "week")

round_date(dmy_hms('13-12-2017 11:59:00'), unit = "day")
round_date(dmy_hms('13-12-2017 12:00:00'), unit = "day")




date1 = dmy_hms('10-12-2017 10:30:00')
date2 = dmy_hms('11-12-2017 10:00:00')

as.numeric(date2 - date2, units = "mins")



floor_date(dmy_hms('13-12-2017 23:59:59'), unit = "day")
floor_date(dmy_hms('13-12-2017 23:59:59'), unit = "hour")
floor_date(dmy_hms('13-12-2017 23:59:59'), unit = "minute")



d<-now()

ds <- d + weeks(0:5)


now() + years(0:10)
