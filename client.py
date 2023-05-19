import ssl
import urllib.request

url = 'https://localhost:8080'

context = ssl.create_default_context(ssl.Purpose.SERVER_AUTH)
context.load_cert_chain(certfile="client_certificate.pem", keyfile="client_private_key.pem")

response = urllib.request.urlopen(url, context=context)

data = response.read()
print("Response from server:", data.decode())