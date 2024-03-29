% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/splash.R
\name{run_one_day}
\alias{run_one_day}
\title{Runs SPLASH at a single location for one day}
\usage{
run_one_day(lat, elv, n, y, wn, sf, tc, pn, kCw = 1.05, kWm = 150)
}
\arguments{
\item{lat}{double, decimal degrees.}

\item{elv}{double, elevation, m A.S.L.
Default: \eqn{0}.}

\item{n}{double, day of year.}

\item{y}{double, year.
Default: \eqn{0}.}

\item{wn}{double, daily soil moisture content, mm (wn).}

\item{sf}{double, fraction of sunshine hours.
Default: \eqn{1}.}

\item{tc}{double, mean daily air temperature, degrees C.
Default: \eqn{23.0}.}

\item{pn}{double, daily precipitation, mm/day.}

\item{kCw}{double, supply constant, mm/hr.
Default: \eqn{1.05} (Federer, 1982)}

\item{kWm}{double, soil moisture capacity, mm.
Default: \eqn{150} (Cramer-Prentice, 1988)}
}
\value{
List with the following components:
\itemize{
\item ho .......... daily solar irradiation, J/m2
\item hn .......... daily net radiation, J/m2
\item ppfd ........ daily PPFD, mol/m2
\item cond ........ daily condensation water, mm
\item eet ......... daily equilibrium ET, mm
\item pet ......... daily potential ET, mm
\item aet ......... daily actual ET, mm
\item wn .......... daily soil moisture, mm
\item ro .......... daily runoff, mm
}
}
\description{
Runs SPLASH at a single location for one day
}
\examples{
soil <- run_one_day(lat = 37.7,
                    elv = 142,
                    n = 172,
                    y = 2000,
                    wn = 75,
                    sf = 1,
                    tc = 23,
                    pn = 5)
cat(sprintf("Soil moisture (run one day):\n"))
cat(sprintf("  Ho: \%0.6f J/m2\n", soil$ho))
cat(sprintf("  Hn: \%0.6f J/m2\n", soil$hn))
cat(sprintf("  PPFD: \%0.6f mol/m2\n", soil$ppfd))
cat(sprintf("  EET: \%0.6f mm/d\n", soil$eet))
cat(sprintf("  PET: \%0.6f mm/d\n", soil$pet))
cat(sprintf("  AET: \%0.6f mm/d\n", soil$aet))
cat(sprintf("  Cn: \%0.6f mm/d\n", soil$cond))
cat(sprintf("  Wn: \%0.6f mm\n", soil$wn))
cat(sprintf("  RO: \%0.6f mm\n", soil$ro))
}
\references{
Cramer, W. and Prentice, I.C., 1988. Simulation of regional soil moisture
deficits on a European scale. Norsk Geografisk Tidsskrift - Norwegian Journal
of Geography, 42(2-3), pp.149–151. \doi{10.1080/00291958808552193}

Federer, C.A., 1982. Transpirational supply and demand: plant, soil, and
atmospheric effects evaluated by simulation. Water Resources Research, 18(2),
pp.355-362. \doi{10.1029/WR018i002p00355}
}
