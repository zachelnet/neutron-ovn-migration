# neutron-ovn-migration

## Example:
```
docker run --name neutron-ovn-migration -ti -v /etc/hosts:/etc/hosts:ro quay.io/zachelnet/neutron-update-ca-certificates bash
```

## example with customer_ca:
```
docker run --name neutron-ovn-migration -ti -v /etc/hosts:/etc/hosts:ro -v <ca-path>:/usr/local/share/ca-certificates:ro quay.io/zachelnet/neutron-update-ca-certificates bash
```
## Example osism:
```
docker run --name neutron-ovn-migration -ti -v /opt/configuration/environments/kolla/certificates/ca:/usr/local/share/ca-certificates:ro -v /etc/hosts:/etc/hosts:ro quay.io/zachelnet/neutron-ovn-migration bash
update-ca-certificates
```

## OpenStack Enviroment
```
export OS_AUTH_URL="<api_url>" ;\
export OS_PROJECT_NAME="admin" ;\
export OS_TENANT_NAME=$OS_PROJECT_NAME ;\
export OS_USERNAME="<user>" ;\
export OS_PASSWORD="<password>" ;\
export OS_PROJECT_DOMAIN_NAME="default" ;\
export OS_DOMAIN_NAME="default" ;\
export OS_USER_DOMAIN_NAME=$OS_DOMAIN_NAME ;\
export OS_IDENTITY_API_VERSION=3 
```

## Command for neutron-ovn-migration-mtu
```
neutron-ovn-migration-mtu update mtu
neutron-ovn-migration-mtu verify mtu
```
