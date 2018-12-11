**Attention** This *Dockerfile* is **NOT MEANT FOR PRODUCTION** so don't use it 
for critical communication that you need to be secure!

[![](https://images.microbadger.com/badges/version/moritanosuke/docker-threema:development.svg)](https://microbadger.com/images/moritanosuke/docker-threema:development) [![](https://images.microbadger.com/badges/image/moritanosuke/docker-threema:development.svg)](https://microbadger.com/images/moritanosuke/docker-threema:development)

[Threema announced a desktop client][0] and I wanted to have a way to test it on
my local machine. As I'm a big fan of [Docker][1] I created this simple *Dockerfile*
which installs *v2.1.2-gh* using [nginx][2].

If you want to just run it, you can use the [builds from Docker Hub][3]. Run the following
command:

````bash
docker run --rm -p 8080:80 moritanosuke/docker-threema
````

You should then be able to open *Threema Web* at [http://localhost:8080][4].

[0]: https://github.com/threema-ch/threema-web/
[1]: https://www.docker.com/
[2]: https://nginx.org/
[3]: https://hub.docker.com/r/moritanosuke/docker-threema/
[4]: http://localhost:8080
