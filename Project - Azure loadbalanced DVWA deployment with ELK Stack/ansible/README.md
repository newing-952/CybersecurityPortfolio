# CybersecurityPortfolio

Nick Ewing

The following Ansible Playbook .yml files were used to deploy the DVWA webservers as well as the ELK server, including installation of both Filebeat and Metricbeat

### pentest.yml

This playbook was used to install and configure the Web-VMs with Docker, Python3 and then downloading and launching the DVWA docker web container

### install_elk.yml

This playbook was used to install and configure the ELK-VM with Docker, Python3 and then downloading and launching the pre-configured ELK Stack container.  Finally, Linux configuration updates were deployed to ensure ELK stack was able to run successfully.

### filebeat-playbook.yml
### metricbeat-playbook.yml