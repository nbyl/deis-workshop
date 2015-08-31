#!/bin/bash

COREOS_CONNECTION=core@172.17.8.100

ssh ${COREOS_CONNECTION} 'fleetctl destroy demo-database.service'
scp tools/demo-database.service ${COREOS_CONNECTION}:.
ssh ${COREOS_CONNECTION} 'fleetctl submit demo-database.service && fleetctl start demo-database.service'
