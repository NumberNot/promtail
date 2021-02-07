# Promtail logs collector. :page_facing_up:
## Internal purposes.

Promtail is an agent which ships the contents of local logs to a private Loki instance. It is usually deployed to every machine that has applications needed to be monitored.

It primarily:

    Discovers targets
    Attaches labels to log streams
    Pushes them to the Loki instance.

Currently, Promtail can tail logs from two sources: local log files and the systemd journal (on AMD64 machines only).


**Contents**

config.yml - agent's configuration.

**Features**

The container exposes port 9080 for monitoring purposes.

**How to use**

For manual usage

docker run -d -v /var/lib/docker/containers:/var/lib/docker/containers:ro -e HOST_NAME=`hostname` -v /var/log:/var/log -p 9080:9080 --name=promtail promtail