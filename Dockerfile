FROM kalilinux/kali-rolling

RUN apt-get update

RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN pip install requests --break-system-packages

RUN apt-get install nmap -y

