FROM zuul/zuul-executor
RUN apt update \
  && apt install -y gcc \
  && pip install ara==0.16.5 --no-cache-dir \
  && apt purge -y gcc \
  && apt autoremove -y \
  && apt clean -y \
  && rm -rf /var/lib/apt/lists/*
ENV ANSIBLE_CALLBACK_PLUGINS=/usr/local/lib/python3.7/site-packages/ara/plugins/callbacks
