# UW image used and updated:
FROM rcarluccio/uw_rc:firsttry

USER root
RUN /usr/bin/python3 -m virtualenv --python=/usr/bin/python3 ${VIRTUAL_ENV}
COPY --from=build_base ${VIRTUAL_ENV} ${VIRTUAL_ENV}

# Record Python packages, but only record system packages! 
# Not venv packages, which will be copied directly in.
RUN PYTHONPATH= /usr/bin/pip3 freeze >/opt/requirements.txt
# Record manually install apt packages.
RUN apt-mark showmanual >/opt/installed.txt
USER $NB_USER
WORKDIR $NB_WORK
CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--no-browser"]

# Git run my repo:
RUN echo 'binder include my new edits'
RUN git clone https://github.com/rcarluccio/3D-PostProcessing
