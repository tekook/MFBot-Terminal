FROM mono:6.12.0.182

# define Bot Version so it gets Updated
ENV MFBOT_VERSION=5.4.2.1

# install deps
RUN apt-get update && apt-get install --no-install-recommends --yes wget referenceassemblies-pcl
RUN cat /etc/ssl/certs/* > /tmp/ca-bundle.crt && cert-sync /tmp/ca-bundle.crt

# download latest bot binary
RUN mkdir /bot && wget -q -O /bot/MFBot https://www.mfbot.de/Download/v5.4.2.1/MFBot_Konsole_x86_64 && chmod +x /bot/MFBot
# run in /data
WORKDIR /data

# run the bot
CMD ["/bot/MFBot"]
