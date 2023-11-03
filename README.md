[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/rcarluccio/3D-Post_Processing/master)

# 3DPostProcessing

Massive three-dimensional high resolution simulations can be challenging to analyse and visualise. This repository explores different Python libraries and tools for post-processing analysys.

## Docker

to run in docker do the following

```
docker run -it                    \
  -v `pwd`:/home/jovyan/workspace \
  -p 127.0.0.1:8888:8888          \
  rcarluccio/uw_rc:firsttry       \
  jupyter notebook
```

once running open the notebook with the given token

http://127.0.0.1:8888/?token=942...376

and navigate to /workspace
