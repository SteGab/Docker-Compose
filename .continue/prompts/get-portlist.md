---
name: Get Portlist from Docker-Compose
description: Scan all yaml files and extract the defined ports.
invokable: true
---

# Scope
I need a list of the ports in the docker-compose yaml files. The port I'm interested is written in the section ports. It is the first number before the ":".

# Steps
- Find all the *.yaml files in this directory. Search in subdirectories too. 
- Create a list with the name and the port number. 
- Sort the list by the port number (ascending).
- Write the table as CSV to the file Portlist.csv. 
  - Create the file if not existing. 
  - If the file exists, overwrite it with the new list.
