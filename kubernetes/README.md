# Kubernetes (k8s) notes

## Eseguire Kubernetes in locale con microk8s

Stoppre il servizio:

```microk8s stop```

Avviare il servizio:

```microk8s start```

Ottenere le informazioni sullo stato:

```microk8s status```

Per avere coerenza con le guida, e'possibile creare un alias del comando `microk8s.kubectl` come `kubectl`:

``alias kubectl='microk8s.kubectl'``
