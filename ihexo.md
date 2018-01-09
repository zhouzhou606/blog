##Pull [zhouzhou606/hexo](https://hub.docker.com/r/zhouzhou606/hexo/) image 

``` bash
$ docker pull zhouzhou606/hexo
```
##Running hello-word page
``` bash
$ docker run -it --rm -p 4000:4000 zhouzhou606/hexo
```
##Running with a volume
``` bash
$ docker run -it --rm -p 4000:4000 -v volume:/blog/source/_posts zhouzhou606/hexo
```
