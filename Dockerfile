# UW image used and updated:
FROM rcarluccio/uw_rc:firsttry

USER root

USER $NB_USER
WORKDIR $NB_WORK
CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--no-browser"]

# Git run my repo:
RUN echo 'binder include my new edits'
RUN git clone https://github.com/rcarluccio/3D-PostProcessing
