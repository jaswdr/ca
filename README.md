# Generating self-signed certificate and using them in Flask

This repository shows how you can create your own self-signed certificates signed by your own CA and use them in Flask.

## Getting started

Generate the CA certificate and key:

```bash
$ ./generate_ca.sh
```

Add the CA certificate to your operating system's trust store. You will probably need to restart your computer for the changes to take effect.

Generate the server certificate and key:

```bash
$ ./generate_server.sh
```

Run the Flask app:

```bash
$ python app.py
```

Open https://localhost:8080