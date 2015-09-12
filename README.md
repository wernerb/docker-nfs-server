Docker NFS Server
================

Usage
----
```bash
docker run -d --name nfs --privileged wernerb/nfs-server /path/to/share /path/to/share2 /path/to/shareN
```

```bash
docker run -d --name nfs-client --privileged --link nfs:nfs wernerb/nfs-client /path/on/nfs/server:/path/on/client
``` 

More Info
=========

See http://www.tech-d.net/2014/03/29/docker-quicktip-4-remote-volumes/
