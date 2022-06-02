FROM sandy1709/catuserbot:alpine

#clonning repo 
RUN git clone https://github.com/jamelsingh/Tamilcattuserbot.git /root/userbot
#working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]




FROM python-3.10

WORKDIR /root/userbot

COPY requirements.txt /app/

RUN pip3 install -U -r requirements.txt

COPY . /app

#set a default command

CMD "python3","-m","userbot"
