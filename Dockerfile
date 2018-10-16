FROM hashicorp/packer:light

RUN set -ex \
	&& apk add --no-cache py-pip build-base python-dev libffi-dev openssl-dev \
	&& pip install --upgrade pip \
	&& pip install ansible \
	&& apk del build-base py-pip libffi-dev openssl-dev

RUN mkdir /app
WORKDIR /app

ENTRYPOINT ["packer"]