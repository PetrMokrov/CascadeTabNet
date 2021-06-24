FROM nvidia/cuda:10.0-devel
# CMD nvidia-smi

#set up environment
RUN apt-get update && apt-get install --no-install-recommends --no-install-suggests -y wget
RUN cd /tmp
RUN wget https://repo.anaconda.com/archive/Anaconda3-2020.07-Linux-x86_64.sh
RUN bash Anaconda3-2020.07-Linux-x86_64.sh -b
RUN rm -f Anaconda3-2020.07-Linux-x86_64.sh
ENV PATH="/root/anaconda3/bin:${PATH}"
ARG PATH="/root/anaconda3/bin:${PATH}"
RUN apt install -y git
RUN apt-get update
RUN apt-get install build-essential

#set up CascadeTabNet environment
RUN pip install torch==1.4.0+cu100 torchvision==0.5.0+cu100 -f https://download.pytorch.org/whl/torch_stable.html
RUN pip install -q mmcv terminaltables
WORKDIR "/home"
RUN git clone --branch v1.2.0 'https://github.com/open-mmlab/mmdetection.git'
WORKDIR "/home/mmdetection"
RUN ls -a
RUN pip install -r requirements/optional.txt
COPY setup.sh /home/mmdetection
WORKDIR "/home"
RUN git clone 'https://github.com/PetrMokrov/CascadeTabNet'
RUN conda install -c conda-forge gdown 
RUN pip install pyshine
# RUN python setup.py install
# RUN python setup.py develop
# RUN pip install -r requirements.txt
# RUN pip install pillow==6.2.1 
# RUN pip install mmcv==0.4.3
# RUN pip install pycocotools==2.0.2

# # running jupyter lab
EXPOSE 8889                                           
ENTRYPOINT ["jupyter", "lab", "--no-browser","--ip=0.0.0.0", "--port=8889", "--allow-root"]

