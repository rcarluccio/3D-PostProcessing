# UW image used and updated:
FROM rcarluccio/uw_rc:firsttry

# Git run my repo:
RUN echo 'binder include my new edits'
RUN git clone https://github.com/rcarluccio/3D-PostProcessing
