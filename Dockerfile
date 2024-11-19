FROM debian
ENV DISPLAY=:1
RUN apt update && apt install -y i3-wm polybar dmenu feh rofi fonts-font-awesome
ADD i3-config /root/.config/i3/config
ADD polybar.sh /root/.config/polybar/launch.sh
ADD polybar-config.ini /root/.config/polybar/config.ini
ADD background.jpg /root/.config/i3/background.jpg
CMD [ "i3" ]
