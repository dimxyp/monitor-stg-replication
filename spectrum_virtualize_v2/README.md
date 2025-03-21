# Ansible Collection - ibm.spectrum_virtualize

[![Code of conduct](https://img.shields.io/badge/code%20of%20conduct-Ansible-silver.svg)](https://docs.ansible.com/ansible/latest/community/code_of_conduct.html )

This collection provides a series of Ansible modules and plugins for interacting with the IBM Spectrum Virtualize family storage products. These products include the IBM SAN Volume Controller, IBM FlashSystem family members built with IBM Spectrum Virtualize (FlashSystem 5xxx, 7200, 9100, 9200, 9200R, and V9000), IBM Storwize family, and IBM Spectrum Virtualize for Public Cloud. For more information regarding these products, see [IBM Documentation](https://www.ibm.com/docs/en ).

## Requirements

- Ansible version 2.9 or higher

## Installation

To install the IBM Spectrum Virtualize collection hosted in Galaxy:

```bash
ansible-galaxy collection install ibm.spectrum_virtualize
```

To upgrade to the latest version of the IBM Spectrum Virtualize collection:

```bash
ansible-galaxy collection install ibm.spectrum_virtualize --force
```

## Usage

### Playbooks

To use a module from the IBM Spectrum Virtualize collection, please reference the full namespace, collection name, and module name that you want to use:

```yaml
---
- name: Using the IBM Spectrum Virtualize collection
  hosts: localhost
  tasks:
    - name: Gather info from storage
      ibm.spectrum_virtualize.ibm_svc_info:
        clustername: x.x.x.x
        domain:
        username: username
        password: password
        log_path: /tmp/playbook.debug
        gather_subset: all
```

Alternatively, you can add a full namepsace and collection name in the `collections` element:

```yaml
---
- name: Using the IBM Spectrum Virtualize collection
  collections:
    - ibm.spectrum_virtualize
  gather_facts: no
  connection: local
  hosts: localhost
  tasks:
    - name: Gather info from storage
      ibm_svc_info:
        clustername: x.x.x.x
        domain:
        username: username
        password: password
        log_path: /tmp/playbook.debug
        gather_subset: all
```

## Supported Resources

### Modules

- ibm_svc_auth - Generates an authentication token for a user on IBM Spectrum Virtualize family storage system
- ibm_svc_host - Manages hosts on IBM Spectrum Virtualize system
- ibm_svc_hostcluster - Manages host cluster on IBM Spectrum Virtualize system
- ibm_svc_info - Collects information on IBM Spectrum Virtualize system
- ibm_svc_initial_setup - Manages initial setup configuration on IBM Spectrum Virtualize system
- ibm_svc_manage_callhome - Manages configuration of Call Home feature on IBM Spectrum Virtualize system
- ibm_svc_manage_consistgrp_flashcopy - Manages FlashCopy consistency groups on IBM Spectrum Virtualize system
- ibm_svc_manage_cv - Manages the change volume in remote copy replication on IBM Spectrum Virtualize system
- ibm_svc_manage_flashcopy - Manages FlashCopy mappings on IBM Spectrum Virtualize system
- ibm_svc_manage_mirrored_volume - Manages mirrored volumes on IBM Spectrum Virtualize system
- ibm_svc_manage_migration - Manages volume migration between clusters on IBM Spectrum Virtualize system
- ibm_svc_manage_ownershipgroup - Manages ownership groups on IBM Spectrum Virtualize system
- ibm_svc_manage_replication - Manages remote copy replication on IBM Spectrum Virtualize system
- ibm_svc_manage_replicationgroup - Manages remote copy consistency groups on IBM Spectrum Virtualize system
- ibm_svc_manage_sra - Manages the remote support assistance configuration on IBM Spectrum Virtualize system
- ibm_svc_manage_user - Manages user on IBM Spectrum Virtualize system
- ibm_svc_manage_usergroup - Manages user groups on IBM Spectrum Virtualize system
- ibm_svc_manage_volume - Manages standard volumes on IBM Spectrum Virtualize system
- ibm_svc_manage_volumegroup - Manages volume groups on IBM Spectrum Virtualize system
- ibm_svc_mdisk - Manages MDisks for IBM Spectrum Virtualize system
- ibm_svc_mdiskgrp - Manages pools for IBM Spectrum Virtualize system
- ibm_svc_start_stop_flashcopy - Starts or stops FlashCopy mapping and consistency groups on IBM Spectrum Virtualize system
- ibm_svc_start_stop_replication - Starts or stops remote-copy independent relationships or consistency groups on IBM Spectrum Virtualize system
- ibm_svc_vol_map - Manages volume mapping for IBM Spectrum Virtualize system
- ibm_svcinfo_command - Runs svcinfo CLI command on IBM Spectrum Virtualize system over SSH session
- ibm_svctask_command - Runs svctask CLI command(s) on IBM Spectrum Virtualize system over SSH session

### Other Feature Information
- SV Ansible Collection v1.7.0 provides `Setup and Configuration Automation` through different modules. This feature helps user to automate Day 0 configuration.
  This feature includes three modules:
	- ibm_svc_initial_seutp
	- ibm_svc_manage_callhome 
	- ibm_svc_manage_sra
- By proceeding and using these modules, the user acknowledges that [IBM Privacy Statement](https://www.ibm.com/privacy) has been read and understood.

### Prerequisite

- Paramiko must be installed to use ibm_svctask_command and ibm_svcinfo_command modules.

## Limitation

The modules in the IBM Spectrum Virtualize Ansible collection leverage REST APIs to connect to the IBM Spectrum Virtualize storage system. This has following limitations:
1. Using the REST APIs to list more than 2000 objects may create a loss of service from the API side, as it automatically restarts due to memory constraints.
2. It is not possible to access REST APIs using an IPv6 address on a cluster.
3. The Ansible collection can run on all IBM Spectrum Virtualize storage versions above 8.1.3, except versions 8.3.1.3 and 8.3.1.4.
4. At time of release of the SV Ansible v1.7.0 collection, no module is available to automate license agreements acceptance, including EULA.
   User will be presented with a GUI setup wizard upon user-interface login, whether the Ansible modules have been used for initial configuration or not.

## Releasing, Versioning and Deprecation

1. IBM Spectrum Virtualize Ansible Collection releases follow a quarterly release cycle.
2. IBM Spectrum Virtualize Ansible Collection releases follow [semantic versioning](https://semver.org/).
3. IBM Spectrum Virtualize Ansible modules deprecation cycle is aligned with [Ansible](https://docs.ansible.com/ansible/latest/dev_guide/module_lifecycle.html).

## Contributing

Currently we are not accepting community contributions.
Though, you may periodically review this content to learn when and how contributions can be made in the future.

## License

GNU General Public License v3.0
