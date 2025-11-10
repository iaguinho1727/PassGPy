FROM --platform=amd64 python:3.12.4

LABEL org.opencontainers.image.source=https://github.com/iaguinho1727/PassGPy
LABEL org.opencontainers.image.description="Simple Password Generator written in python"

WORKDIR /app

RUN apt-get update -y && apt-get upgrade -y 





COPY requirements.txt .

COPY . .

RUN pip install -r requirements.txt

ENTRYPOINT [ "python3", "." ]

