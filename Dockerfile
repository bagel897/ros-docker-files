FROM osrf/ros:melodic-desktop-full
RUN apt update
RUN apt upgrade -y
RUN apt autoremove -y
RUN apt install fish gdb clang-format git make gcc neovim ros-melodic-move-base-msgs zsh ninja-build -y
COPY .zshrc /root/.zshrc
COPY setup.sh setup.sh
RUN usermod --shell zsh root
RUN bash setup.sh
