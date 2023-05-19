#!/bin/bash

rm ca.key ca.csr ca.crt

# Generate the private key
openssl ecparam -out ca.key -name prime256v1 -genkey

# Create the CSR
openssl req -new -sha256 -key ca.key -out ca.csr

# Generate the CA certificate
openssl x509 -req -sha256 -days 365 -in ca.csr -signkey ca.key -out ca.crt
