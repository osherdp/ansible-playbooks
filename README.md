# Ansible Playbooks

## Installation

By docker/podman:

```
docker run -it quay.io/odepaz/ansible-playbooks -i <DNS/ip>, -u root -k assisted-test-infra.yml
```

From source:

```
git clone https:///github.com/osherdp/ansible-playbooks.git
cd ansible-playbooks
python3 -m venv .venv
. .venv/bin/activate
pip install ansible
ansible-galaxy collection install community.general
```

## Usage

Run locally the workstation's playbook:
```
ansible-playbook --connection=local -i localhost, -u $USER workstation.yml
```

Run remotely the server's playbook for installing assisted-test-infra:
```
ansible-playbook -i <dns/ip-address>, -u <target username> assisted-test-infra.yml
```

Run locally the server's playbook for installing assisted-test-infra:
```
ansible-playbook --connection=local -i localhost, -u $USER assisted-test-infra.yml
```

Run locally the server's playbook for installing dev-scripts:
```
ansible-playbook --connection=local -i localhost, -u $USER dev-scripts.yml
```

### Matchbox

```
ansible-playbook -i <hostname_or_ip>, -u root -k matchbox.yml
```

Ports will be ``9090`` (HTTP) and ``9091`` (grpc).
Client certificates are located at ``~/.matchbox`` for usage by terraform (recommended) or by manual usage.
Server certificates are located at ``/etc/matchbox/`` though they are not relevant outside of the server's scope.

