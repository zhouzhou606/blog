## Hexo
[Hexo](https://hexo.io/) is a tiny and ease to use blog framework.
### A demo for hexo
However Hexo doesn't provide docker images. I decide to make [one](https://hub.docker.com/r/zhouzhou606/hexo-server/) for myself.

### A demo go with docker
#### Create hexo-volume
```bash
$ docker run -it --rm -v post:/target zhouzhou606/hexo-volume
```
#### Start hexo-server
```bash
$ docker run -it --rm -p 4000:4000 -v post:/blog/source/_posts zhouzhou606/hexo
```
 
