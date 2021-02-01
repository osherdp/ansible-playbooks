FROM python:3.9

RUN apt-get update \
	&& apt-get install -y \
		sshpass \
	&& rm -rf /var/lib/apt/lists/*

RUN pip install ansible

COPY . .

ENTRYPOINT ["ansible-playbook"]
