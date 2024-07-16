# Collection of pre-requirements
A repository containing the pre-requirements for different OCP installations. The pre-requirement lists are versioned.

> **NOTE:** This is NOT official and is only used personally for projects.

## How to use

Create a combined PDF document with requirements using the make command with arguments. E.g. for vmware 4.14 and RHACM in a disconnected environment use:
```bash
make ARGS="vmware/4.14.adoc openshift-plus/rhacm.adoc disconnected/4.14.adoc"
```
## Clean up

In order to clean up run:

```bash
make clean
```

## VMware
* 4.14

## Nutanix
* 4.14

## Baremetal
* 4.14 AI
* 4.14 ABI

## OpenShift-plus
* rhacm
* rhacs

## Disconnected
* 4.14



