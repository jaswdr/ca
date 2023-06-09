#!/bin/bash

rm -f server.key server.csr server.crt

# Generate the RSA private key
openssl genpkey -outform PEM -algorithm RSA -pkeyopt rsa_keygen_bits:4096 -out server.key

# Create the CSR
openssl req -new -nodes -key server.key -config server.cnf -nameopt utf8 -utf8 -out server.csr

# Generate the server certificate and sign the CSR with the CA key
openssl x509 -req -in server.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out server.crt -days 365 -sha256 -extensions req_ext -extfile server.cnf
