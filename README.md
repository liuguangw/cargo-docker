# cargo-docker

调用 [rust](https://hub.docker.com/_/rust) 的 docker 镜像编译本地文件中的项目。

## 使用方法

```shell
git clone https://github.com/liuguangw/cargo-docker
cd cargo-docker
# 给sh文件添加执行权限
chmod +x cargo.sh
ln -s $(pwd)/cargo.sh /usr/local/bin/cargo
```

这样就可以在任意目录中执行cargo命令了

```
root@VM-debian:/home/liu-sns# cargo -Vv
cargo 1.73.0 (9c4383fb5 2023-08-26)
release: 1.73.0
commit-hash: 9c4383fb55986096b414d98125421ab87b5fd642
commit-date: 2023-08-26
host: x86_64-unknown-linux-gnu
libgit2: 1.6.4 (sys:0.17.2 vendored)
libcurl: 8.2.1-DEV (sys:0.4.65+curl-8.2.1 vendored ssl:OpenSSL/1.1.1u)
ssl: OpenSSL 1.1.1u  30 May 2023
os: Debian 12.0.0 [64-bit]
```

