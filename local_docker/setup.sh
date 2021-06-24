#!/bin/bash
python setup.py install
python setup.py develop
pip install -r requirements.txt
pip install pillow==6.2.1 
pip install mmcv==0.4.3
pip install pycocotools==2.0.2