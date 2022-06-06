

#clonning repo 
RUN git clone https://github.com/jamelsingh/Tamilcattuserbot.git /root/userbot

ENV PATH="/home/userbot/bin:$PATH"


FROM python-3.10

WORKDIR /root/userbot

COPY requirements.txt /app/

RUN pip3 install -U -r requirements.txt

COPY . /app

#set a default command

CMD "python3","-m","userbot"
