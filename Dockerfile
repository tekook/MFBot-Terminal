FROM mono:5.20.1.19

# define Bot Version so it gets Updated 
ENV MFBOT_VERSION=5.3.0.0

# install deps
RUN apt-get update && apt-get install --no-install-recommends wget 

# download latest bot binary
RUN mkdir /bot && wget -q -O /bot/MFBot https://www.mfbot.de/Download/latest/MFBot_Konsole_x86_64 && chmod +x /bot/MFBot

# run in /data
WORKDIR /data

# run the bot
CMD ["/bot/MFBot"]
