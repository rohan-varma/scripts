1	
git clean -xfd && git submodule foreach git clean -xf
git submodule sync ; git submodule update --init --recursive
python setup.py clean
time USE_MPI=0 REL_WITH_DEB_INFO=1 DEBUG=1 USE_DISTRIBUTED=1 USE_MKLDNN=0 USE_CUDA=1 USE_FBGEMM=0 USE_NNPACK=0 USE_QNNPACK=0 python setup.py develop
