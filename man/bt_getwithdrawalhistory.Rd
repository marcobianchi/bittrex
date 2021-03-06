% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/private-interface.r
\name{bt_getwithdrawalhistory}
\alias{bt_getwithdrawalhistory}
\title{Retrieve Withdrawal History}
\usage{
bt_getwithdrawalhistory(currency)
}
\arguments{
\item{currency}{(optional) the currency to retrieve the withdraw for. If
this is not specified then withdraw history for all currencies is
retrieved.}
}
\value{
A named list with the following elements:
\itemize{
\item{success: }{a boolean indicating whether the request was successful.}
\item{message: }{a string describing the error if the request was not
successful, otherwise an empty string.}
\item{result:  }{a \code{data.frame} providing data about
previously completed orders including the order uuid, the currency,
the time of the withdraw, the quantity, etc.
}
}
}
\description{
The \code{bt_getwithdrawalhistory()} function retrieves the
withdraw history for an account on \url{https://bittrex.com}. This function
can only be used after you provide authentication information.
}
\examples{
\dontrun{
# Note you must authenticate first.
bt_getwithdrawalhistory()
# $success
# [1] TRUE
#
# $message
# [1] ""
#
# $result
#                           payment_uuid currency     amount
# 1 ba0c85de-1fd8-423e-939d-e34d2aad34fd      BTC 0.04597029
# 2 f10c3536-fcf2-48eb-9ce4-253271d2c8e8      BTC 0.01313458
# 3 5dae07ad-7a8f-40a0-ac6e-225a3d0d6d8a      BTC 0.02347405
#                              address              opened authorized
# 1 1C31WQL12CDZqnidra9tMfs4DLkebAuNgc 2017-06-22 20:08:26       TRUE
# 2 1C31WQL12CDZqnidra9tMfs4DLkebAuNgc 2017-06-13 15:34:47       TRUE
# 3 1C31WQL12CDZqnidra9tMfs4DLkebAuNgc 2017-06-13 15:03:23       TRUE
#   pending_payment tx_cost
# 1           FALSE   0.001
# 2           FALSE   0.001
# 3           FALSE   0.001
#                                                              tx_id canceled
# 1 e628848ed92be4baee877f97e3a48b22f5ee2f7ca35c2908282b8c9ee2f4b94a    FALSE
# 2 fbafe847d02761d089b19a2cafecff561030219ded1eb03cc796c8c2eac0dd5c    FALSE
# 3 c981f7dc569188db16753cff4ab24aef148039964b68428603e2bfd18c754df4    FALSE
#   invalid_address
# 1           FALSE
# 2           FALSE
# 3           FALSE
}
}
\references{
https://bittrex.com/api/v1.1/account/getwithdrawalhistory
}
\seealso{
\code{\link[=bt_authenticate]{bt_authenticate()}}
}
