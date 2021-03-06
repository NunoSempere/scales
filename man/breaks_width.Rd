% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/breaks.r
\name{breaks_width}
\alias{breaks_width}
\title{Equally spaced breaks}
\usage{
breaks_width(width, offset = 0)
}
\arguments{
\item{width}{Distance between each break. Either a number, or for
date/times, a single string of the form "{n} {unit}", e.g. "1 month",
"5 days". Unit can be of one "sec", "min", "hour", "day", "week",
"month", "year".}

\item{offset}{Use if you don't want breaks to start at zero}
}
\description{
Useful for numeric, date, and date-time scales.
}
\examples{
demo_continuous(c(0, 100))
demo_continuous(c(0, 100), breaks = breaks_width(10))
demo_continuous(c(0, 100), breaks = breaks_width(20, -4))
demo_continuous(c(0, 100), breaks = breaks_width(20, 4))

# This is also useful for dates
one_month <- as.POSIXct(c("2020-05-01", "2020-06-01"))
demo_datetime(one_month)
demo_datetime(one_month, breaks = breaks_width("1 week"))
demo_datetime(one_month, breaks = breaks_width("5 days"))
# This is so useful that scale_x_datetime() has a shorthand:
demo_datetime(one_month, date_breaks = "5 days")

# hms times also work
one_hour <- hms::hms(hours = 0:1)
demo_time(one_hour)
demo_time(one_hour, breaks = breaks_width("15 min"))
demo_time(one_hour, breaks = breaks_width("600 sec"))
}
