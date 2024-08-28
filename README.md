# ansible-nested-vsphere
Nested vsphere


You will need to setup up NFS on your system. This will share the custom ISO to the physical ESXi host to mount them.

This code builds custom iso to create ESXi vm's
This code build vCenter appliance VM
This code then joins the ESXi nested to the nested vCenter and set ups, vmotion, dvs, datastore, nfs mounts, ha, cluster, datacenter.
