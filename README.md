# Docker Machine Driver G42
Create machines on G42. You will need an Access Key ID, Secret Access Key and a Region Name. If you want to setup instance on the VPC network, you will need the VPC ID. Please login to the console and select the one where you would like to launch instance.

Create docker instances on G42:
```bash
rancher-machine create -d g42 <machine name>
```

## Installation


## Example Usage
eg. Export your credentials
```bash
export ACCESS_KEY_ID = '<Your access key ID>'
export ACCESS_KEY_SECRET = '<Your secret access key>'

rancher-machine create -d g42 <machine name>
```
or type cmdline
```bash
rancher-machine create -d g42 --g42-access-key-id=<Your ak> --g42-access-key-secret=<Your sk> --g42-security-group=<Security group name> --g42-tenant-id=<Your tenant ID> --g42-region=<Region name> --g42-vpc-id=<Your VPC ID> --g42-flavor-id=<instance flavor ID> --g42-image-id=<Guest OS image ID> --g42-subnet-id=<Your subnet ID> --g42-admin-password=<instance login password> --g42-available-zone=<available zone name> <machine name>
```

## Options
```bash
rancher-machine create -d g42 --help
```
Option Name                                          | Description                                         | required 
------------------------------------------------------|----------------------------------------------------|----|
``--g42-access-key-id`` | Your access key ID.  |**yes**|
``--g42-access-key-secret``|Your secret access key.| **yes** |
``--g42-service-endpoint``|The custom API endpoint.| |
``--g42-image-id``| The image ID of the instance to use, default is the Ubuntu server 14.04 64bits provided by system||
``--g42-region``| The region to use when launching the instance||
``--g42-security-group``| Security group name. Default: `rancher-machine`||
``--g42-admin-password``| Admin password for created virtual machine. Default is random generated.||
``--g42-vpc-id``| Your VPC ID to launch the instance in. (required for VPC network only)||
``--g42-available-zone``| The availabilty zone to launch the instance||
``--g42-bandwidth-size``|Bandwidth Size for Elastic IP||
``--g42-bandwidth-type``|Bandwidth Type for Elastic IP||
``--g42-elasticip-type``|Your Elastic IP Type||
``--g42-flavor-id``|Flavor for you instance||
``--g42-root-volume-size``|Root Volume Size for your instance||
``--g42-root-volume-type``|Root Volume type for your instance||
``--g42-ssh-user``|Instance's optional ssh user||
``--g42-subnet-id``|Subnet ID for your instance private network (Network ID)||
``--g42-tenant-id``|Tenant ID (Project ID)||
``--g42-elastic-ip``|Set to 0 to not allocate an EIP (use private IP)||


## Environment variables and default values:

| CLI option                          | Environment variable        | Default          |
|-------------------------------------|-----------------------------|------------------|
| **`--g42-access-key-id`**	          | `ACCESS_KEY_ID`	            | -                |
| **`--g42-access-key-key`**	      | `ACCESS_KEY_SECRET`	        | -                |
| `--g42-admin-password`	          | `ADMIN_PWD`		            | -                |
| `--g42-available-zone`	          | `AVAILABLE_ZONE`	        | -                |
| `--g42-service-endpoint`	          | `SERVICE_ENDPOINT`	        | -                |
| `--g42-image-id`		              | `IMAGE_ID`		            | -                |
| `--g42-region`		              | `REGION`		            | -                |
| `--g42-security-group`	          | `SECURITY_GROUP`	        | -                |
| `--g42-vpc-id`		              | `VPC_ID`		            | -                |
| `--g42-bandwidth-size`	          | `BANDWIDTH_SIZE`	        | `10`             |
| `--g42-bandwidth-type`	          | `BANDWIDTH_TYPE`	        | `PER`            |
| `--g42-elasticip-type`	          | `ELASTICIP_TYPE`	        | `5_bgp`          |
| `--g42-flavor-id`		              | `FLAVOR_ID`		            | -                |
| `--g42-root-volume-size`	          | `ROOT_VOLUME_SIZE`	        | `40`             |
| `--g42-root-volume-type`	          | `ROOT_VOLUME_TYPE`	        | `SATA`           |
| `--g42-ssh-user`		              | `SSH_USER`		            | -                |
| `--g42-subnet-id`		              | `SUBNET_ID`		            | -                |
| `--g42-tenant-id`		              | `TENANT_ID`		            | -                |
| `--g42-elastic-ip`		          | `ELASTIC_IP`		        | `1`                |

Each environment variable may be overloaded by its option equivalent at runtime.

## Installing
### Install Go and git
```bash
yum install golang git
```
### Install DockerMachineDriver4g42
```bash
export GOPATH=<Path to your Go Build Folder>
go get github.com/masteryodareturns/machinedriver
cd $GOPATH/src/github.com/masteryodareturns/machinedriver
./build.sh
```
The Driver Binary will be under ./bin/rancher-machine-driver.linux-amd64
Rename it and copy it to you local path
```bash
cp ./bin/rancher-machine-driver.linux-amd64 /usr/local/bin/rancher-machine-driver-g42
```

Alternatively you can also just rename it and add the folder to your ```$PATH```:
```
export PATH=$GOPATH/src/github.com/masteryodareturns/machinedriver:$PATH
```

### Binary direct download
You can also directly download the Binary from here:
coming up soon ...


## Related links

- **Docker Machine**: https://docs.docker.com/machine/
- **Rancher Machine**: https://github.com/rancher/machine/
- **Contribute**: https://github.com/masteryodareturns/machinedriver
- **Report bugs**: https://github.com/masteryodareturns/machinedriver/issues
wei/
## License
Apache 2.0

## test command
rancher-machine -D create -d g42 --g42-access-key-id BCE_shortened --g42-access-key-secret 4UR_shortened --g42-available-zone eu-de-01 --g42-bandwidth-size 10 --g42-bandwidth-type PER --g42-elasticip-type 5_bgp --g42-flavor-id normal1 --g42-image-id d6944a41-5ec7-44a4-970e-ce330da390d2 --g42-region eu-de --g42-root-volume-size 40 --g42-root-volume-type SATA --g42-security-group sg-tino --g42-service-endpoint https://ecs.ae-ad-1.g42cloud.com --g42-ssh-user ubuntu --g42-subnet-id <> --g42-tenant-id <> --g42-vpc-id <> test

## debugging
rancher-machine --debug [....]

**parameters may vary on different cloud platforms**
