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


## Kubernetes Client

Verificare la versione del client e del server:

``kubectl version``

Ottenere una semplice diagnostica del cluster:

``kubectl get componentstatuses``

Ottenere la lista dei nodi appartenenti al cluster:

``kubectl get nodes``

Ottenere maggiori informazioni su un nodo specifico:

``kubectl describe nodes <nomenodo>``

### Risultato

- Informazioni preliminari:

`
	Name:               dockernodeb
	Roles:              <none>
	Labels:             beta.kubernetes.io/arch=amd64
	                    beta.kubernetes.io/os=linux
	                    kubernetes.io/arch=amd64
	                    kubernetes.io/hostname=dockernodeb
	                    kubernetes.io/os=linux
	                    microk8s.io/cluster=true
	Annotations:        node.alpha.kubernetes.io/ttl: 0
	                    volumes.kubernetes.io/controller-managed-attach-detach: true
	CreationTimestamp:  Mon, 15 Jun 2020 16:23:23 +0200
	Taints:             <none>
	Unschedulable:      false
	Lease:
	  HolderIdentity:  dockernodeb
	  AcquireTime:     <unset>
	  RenewTime:       Sun, 06 Sep 2020 12:44:48 +0200
`

- Informazioni sulle operazioni del nodo:

`
	Conditions:
	  Type             Status  LastHeartbeatTime                 LastTransitionTime                Reason                       Message
	  ----             ------  -----------------                 ------------------                ------                       -------
	  MemoryPressure   False   Sun, 06 Sep 2020 12:43:00 +0200   Mon, 15 Jun 2020 16:23:23 +0200   KubeletHasSufficientMemory   kubelet has sufficient memory available
	  DiskPressure     False   Sun, 06 Sep 2020 12:43:00 +0200   Mon, 15 Jun 2020 16:23:23 +0200   KubeletHasNoDiskPressure     kubelet has no disk pressure
	  PIDPressure      False   Sun, 06 Sep 2020 12:43:00 +0200   Mon, 15 Jun 2020 16:23:23 +0200   KubeletHasSufficientPID      kubelet has sufficient PID available
	  Ready            True    Sun, 06 Sep 2020 12:43:00 +0200   Sun, 06 Sep 2020 12:25:07 +0200   KubeletReady                 kubelet is posting ready status. AppArmor enabled
`

- Informazioni sulla capacita' della macchina:

`
Capacity:
  cpu:                2
  ephemeral-storage:  30829476Ki
  hugepages-2Mi:      0
  memory:             2035284Ki
  pods:               110
Allocatable:
  cpu:                2
  ephemeral-storage:  29780900Ki
  hugepages-2Mi:      0
  memory:             1932884Ki
  pods:               110
`

- Informazioni sul software del nodo:

`
System Info:
  Machine ID:                 e4efc74a0c9e423794e425a6a19ec160
  System UUID:                87f84d56-fdb7-71c9-747b-a2118e89315e
  Boot ID:                    ebf2953b-eaca-42fb-abd9-2c96d9ba3544
  Kernel Version:             5.4.0-37-generic
  OS Image:                   Ubuntu 20.04 LTS
  Operating System:           linux
  Architecture:               amd64
  Container Runtime Version:  containerd://1.2.5
  Kubelet Version:            v1.18.8
  Kube-Proxy Version:         v1.18.8
`

- Informazioni sui pods in esecuzioni sulla macchina:

`
Non-terminated Pods:          (0 in total)
  Namespace                   Name    CPU Requests  CPU Limits  Memory Requests  Memory Limits  AGE
  ---------                   ----    ------------  ----------  ---------------  -------------  ---
Allocated resources:
  (Total limits may be over 100 percent, i.e., overcommitted.)
  Resource           Requests  Limits
  --------           --------  ------
  cpu                0 (0%)    0 (0%)
  memory             0 (0%)    0 (0%)
  ephemeral-storage  0 (0%)    0 (0%)
  hugepages-2Mi      0 (0%)    0 (0%)
`
