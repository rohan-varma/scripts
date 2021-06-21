git fetch upstream ; git merge upstream/master
git clean -xfd && git submodule foreach git clean -xf
git submodule sync ; git submodule update --init --recursive
python setup.py clean
time USE_TENSORPIPE=1 USE_GLOO=1 USE_CUDNN=0 BUILD_CAFFE2_OPS=0 BUILD_TEST=0 USE_NNPACK=0 USE_QNNPACK=0 USE_MKLDNN=0 USE_FBGEMM=0 USE_CUDA=0 USE_MKLDNN=0 USE_DISTRIBUTED=1 python setup.py develop
