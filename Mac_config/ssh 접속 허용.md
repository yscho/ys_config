https://circumeo.tistory.com/33

remote login >> allow
-> file access also change to allow

## Port22 
``` shell
open file
sudo vi /etc/ssh/sshd_config
```
- Use DNS -> allow (delete the comment)

and then, 

```shell
open file
sudo vi /etc/srvices
```
- allow the "ssh 22/udp" and "ssh 22/tcp"

and then, run bleow shell command

```shell
sudo launchctl unload /System/Library/LaunchDaemons/ssh.plist
sudo launchctl load -w /System/Library/LaunchDaemons/ssh.plist
```
