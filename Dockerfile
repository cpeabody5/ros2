FROM osrf/ros:humble-desktop-full

RUN apt-get update && apt-get install -y git wget python3-pip vim
RUN pip3 install setuptools==58.2.0

COPY entrypoint.sh /entrypoint.sh 
COPY bashrc /home/${USERNAME}/.bashrc
#RUN git clone https://github.com/cpeabody5/ros_test.git
#RUN git config --global user.email "coady.peabody@gmail.com"
#RUN git config --global user.name "cpeabody5"

ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]

CMD ["bash"]