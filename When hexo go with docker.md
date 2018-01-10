## Hexo
[Hexo](https://hexo.io/) is a tiny and ease to use blog framework.
### A demo for hexo
#### init new site
``` bash
$ hexo init hello
```
#### start service
``` bash
$ cd hello && hexo server
```
#### open browse and enter
``` bash
http://localhost:4000
```
The page would show some hexo cmds. Looks ease, simple and clean. That's why I choose hexo to build my blog.
## Hexo with Docker
OK. Just one thing not satisefied me. Hexo doesn't provide docker images. So should I build a docker image or just install lots of bin files in my system? Thought for a while I choose [docker](https://www.docker.com/):)

### A demo go with docker
#### Create hexo-volume
```bash
$ docker run -it --rm -v post:/target zhouzhou606/hexo-volume
```
#### Start hexo-server
```bash
$ docker run -it --rm -p 4000:4000 -v post:/blog/source/_posts zhouzhou606/hexo
``` 
More info could be found in my repos : 
[zhouzhou606/hexo-server](https://hub.docker.com/r/zhouzhou606/hexo-server/) & [zhouzhou606/hexo-volume](https://hub.docker.com/r/zhouzhou606/hexo-volume/).
