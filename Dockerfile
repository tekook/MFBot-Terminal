FROM mono:6.12.0.107

# define Bot Version so it gets Updated 
ENV MFBOT_VERSION=5.4.0.0

# install deps
RUN apt-get update && apt-get install --no-install-recommends wget -y

# download latest bot binary
RUN mkdir /bot && wget -q -O /bot/MFBot https://www.mfbot.de/Download/latest/MFBot_Konsole_x86_64 && chmod +x /bot/MFBot

# run in /data
WORKDIR /data

# run the bot
CMD ["/bot/MFBot"]
