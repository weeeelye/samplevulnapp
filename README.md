# samplevulnapp

How to run:
1) Install docker
2) git clone https://github.com/weeeelye/samplevulnapp.git
3) cd samplevulnapp
4) docker build --no-cache -t shopshoplah:latest .
5) docker run -p 80:80 -it shopshoplah:latest
6) Browse to http://127.0.0.1/

App is pre-seeded with the following accounts:

email: "admin@example.com", 
Password: "ch3ckth1sout"

email: "user@example.com",
Password: "password1"

email: "user3@example.com",
Password: "password2

email: "user2@example.com",
Password: "password3


To reset the contact form entries, go to :
http://127.0.0.1/clearcontact.php
