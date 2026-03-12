# Docker Applikationen

Das Repo stellt Docker-Compose Dateien für diverse Applikationen bereit.

Über docker compose up können diese Applikationen in docker und podman gestartet werden.

# Composerize

Die Website [Composerize](https://www.composerize.com/) stellt einen Converter bereit, der docker run Aufrufe in compose.yaml Dateien und zurück übersetzt.

# Weitere Applikationen


## PDF-Tools

Der Container stellt ein Linux mit Postscript und PDF Tools bereit.

### Image erstellen

```
# from pdf-tools dir
podman build -t pdf-test .
```

### Start

```
podman run -dt -v <host-dir>:<container-dir> --name <container-name> pdf-tools:latest

# Beispiel

podman run -dt -v D:\99_TNT\:/opt/data --name pdf-tools2 pdf-tools:latest
```

### Aufruf

```
podman exec -it pdf-tools <Command>

# Beispiel Starte bash

podman exec -it pdf-tools bash
```