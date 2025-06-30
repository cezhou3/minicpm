#!/bin/bash

# <<<init conda>>>
source /workspace/misc/miniconda3/etc/profile.d/conda.sh


# create conda env
conda create -n MiniCPM-V python=3.10 -y
conda activate MiniCPM-V

# install requirements
wget https://github.com/Dao-AILab/flash-attention/releases/download/v2.3.4/flash_attn-2.3.4+cu122torch2.1cxx11abiFALSE-cp310-cp310-linux_x86_64.whl
wget http://thunlp.oss-cn-qingdao.aliyuncs.com/multi_modal/never_delete/modelscope_studio-0.4.0.9-py3-none-any.whl
pip install -r requirements.txt
