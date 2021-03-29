## Microsoft Azure Load Balanced DVWA Deployment / Automated Elk Stack Deployment

## Ansible Playbooks


### The following Ansible Playbook .yml files were used to deploy the DVWA webservers as well as the ELK server, including installation of both Filebeat and Metricbeat.



### pentest.yml

This playbook was used to install and configure the Web-VMs with Docker, Python3 and then downloading and launching the DVWA docker web container.

### install_elk.yml

This playbook was used to install and configure the ELK-VM with Docker, Python3 and then downloading and launching the pre-configured ELK Stack container.  Finally, Linux configuration updates were deployed to ensure ELK stack was able to run successfully.

### filebeat-playbook.yml

This playbook was used to download and install the Filebeat module onto each of the DVWA Web-VMs, copy the appropriate config files into the correct location and then complete the Filebeat setup process on each VM.

### metricbeat-playbook.yml

This playbook was used to download and install the Metricbeat module onto each of the DVWA Web-VMs, copy the appropriate config files into the correct location and then complete the Metricbeat setup process on each VM.


### Note, we could have easily completed the Filebeat and Metricbeat installations in one playbook, however we consciously made the decision to use two so that we can update either application as new releases become available.

 