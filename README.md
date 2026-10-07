# Leaf Photo server

This repository holds the ready-to-run server for the Leaf Photo Android app:

* `leaf-photo-server.jar` - the server program.
* `Dockerfile` - how a hosting service runs it.
* `render.yaml` - the settings for Render's free plan.

It contains **no secrets**. The OpenAI key and the app's private key are typed into the hosting
service's page, never into these files.