% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/service_creation.R
\name{gar_service_provision}
\alias{gar_service_provision}
\title{Provision a service account}
\usage{
gar_service_provision(
  accountId,
  roles,
  json = Sys.getenv("GAR_CLIENT_JSON"),
  file = paste0(accountId, "-auth-key.json"),
  email = Sys.getenv("GARGLE_EMAIL")
)
}
\arguments{
\item{accountId}{The service accountId}

\item{roles}{A character vector of roles to give the accountIds e.g. \code{roles/editor} - see list of roles here \url{https://cloud.google.com/iam/docs/understanding-roles#predefined_roles} or in your GCP console \code{https://console.cloud.google.com/iam-admin/roles/details/roles}}

\item{json}{The file location of an OAuth 2.0 client ID json file}

\item{file}{The file to download the private JSON key to}

\item{email}{An existing gargle cached email to authenticate with or TRUE to authenticate with the only email available.}
}
\description{
This uses all the \link{gar_service_create} functions to enable creating service account roles more easily
}
\details{
You will need the OAuth2.0 Client ID JSON from your GCP project via 
\code{menu icon > APIs & Services > Credentials > Create Credentials > OAuth client ID}

You need to authenticate with a user with permission \code{iam.serviceAccounts.create} for the project.  Most often the user is an Owner/Editor
}
\examples{

\dontrun{

gar_service_provision("my-service-account", 
                      c("roles/viewer", "roles/bigquery.jobUser"))
}
}
\seealso{
\url{https://cloud.google.com/iam/docs/creating-managing-service-accounts#iam-service-accounts-create-rest}
}
