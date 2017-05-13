FROM microsoft/windowsservercore

EXPOSE 5672 4369 35197 15672

ENV ERLANG_HOME="c:\program files\erl8.2\erts-8.2" \
    ERLANG_SERVICE_MANAGER_PATH="c:\program files\erl8.2\erts-8.2" \
    RABBITMQ_CONFIG_FILE="C:\rabbitmq"

RUN @powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin" & choco install -y rabbitmq

COPY ["rabbitmq.config"," C:/"]

CMD ["C:/Program Files/RabbitMQ Server/rabbitmq_server-3.6.5/sbin/rabbitmq-server.bat"]