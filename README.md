# OWASP_Top10_Scanner

To create the kali base image with everything installed do the following:
1. Open terminal and move to directory with the Dockerfile (not strictly necessary but will make for fewer path issues)
2. Build the first image with docker build -t . (pointing to the current directory)
3. Run a container with docker run -it --name kalicontainer kali (can name it something else if you want). It should open a terminal
4. Use apt-get install kali-linux-headless for the metapackage we want inside the container (it is large and we don't need everything, but I don't want to worry about broken dependencies)
5. Follow the installer (which will take some time). I opted not to use kismet or have changing MAC addresses and let any user capture packets
6. With the meta package installed, exit the container with exit (you can also do some testing but keep in mind you don't have privileged access yet and no ports mapped)
7. Use docker commit kalicontainer kali-full which will take a moment to create the new image
8. When you want to spin a new container, run docker run --privileged -it --name kali kali-full. This will pop up a terminal for you to confirm everything is working (try nmap for example)
9. I have not gotten Metasploit to work yet because it relies on postgres but I am currently figuring that out (it should be something we can do after step 8)