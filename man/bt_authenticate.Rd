% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/private-interface.r
\name{bt_authenticate}
\alias{bt_authenticate}
\title{Provide User Authentication Data}
\usage{
bt_authenticate(api_key, secret_key)
}
\arguments{
\item{api_key}{the api key provided by the exchange}

\item{secret_key}{the secret key provided by the exchange}
}
\description{
The \code{bt_authenicate()} function sets the
BITTREX_API_KEY and BITTREX_SECRET_KEY environment variables in your current
session to access your account on \url{https://bittrex.com}.
}
