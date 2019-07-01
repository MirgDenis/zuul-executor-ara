FROM zuul/zuul-executor
RUN pip install ara==0.16.5 --no-cache-dir \
ENV ANSIBLE_CALLBACK_PLUGINS=/usr/local/lib/python2.7/dist-packages/ara/plugins/callbacks
