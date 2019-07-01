FROM zuul/zuul-executor
RUN pip install ara[server] --no-cache-dir \
  && export ANSIBLE_CALLBACK_PLUGINS="$(python -m ara.setup.callback_plugins)"
