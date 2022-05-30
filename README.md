# LFTP client

This is a image to run the [lftp client](https://lftp.yar.ru).
Based on the idea from [Sebastian Mellor](https://github.com/sebble/docker-images) => [Light-weight deployment environment](https://github.com/sebble/docker-images/tree/master/deploy)

## How to use this image
Run the `lftp` image:

```bash
docker run \
    --rm \
    --volume "$(pwd)":/app \
    finalgene/lftp
```

### Send data
```bash
docker run \
    --rm \
    --volume "$(pwd)":/app \
    finalgene/lftp open -u <user>,<password> -p <port> <host>; cd <remote directory>; mirror --reverse --verbose=3 <local directory>
```

Take a look at the [man page](https://lftp.yar.ru/lftp-man.html) to get detailed information about the available options

## Quick reference
* **Where to get help:**
[the Docker Community Forums](https://forums.docker.com), [the Docker Community Slack](https://blog.docker.com/2016/11/introducing-docker-community-directory-docker-community-slack), or [Stack Overflow](https://stackoverflow.com/search?tab=newest&q=docker)

* **Where to file issues:**
https://github.com/finalgene/docker-hub-lftp/issues

* **Maintained by:**
[The final gene Team](https://github.com/finalgene)

* **Source of this description:**
[Repository README.md](https://github.com/finalgene/docker-hub-lftp/blob/master/README.md)
