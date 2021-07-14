# N1创建青龙命令
```
mkdir /mnt/mmcblk2p4/ql && cd /mnt/mmcblk2p4/ql
curl -sL https://git.io/QL > docker-compose.yml
docker-compose up -d
docker exec -it qinglong bash -c "$(curl -fsSL https://git.io/Allinone)"
```

## N1更新`config.sh` `extra.sh` `code.sh` `task_before.sh`
```
docker exec -it qinglong bash -c "$(curl -fsSL https://git.io/Allinone)"
```
Allinone 脚本功能如下
✅替换原始的 config.sh 文件
✅替换原始的 extra.sh 文件
✅替换原始的 code.sh 文件
✅替换原始的 task_before.sh 文件
✅支持修改 extra.sh 里面初始拉取的仓库：默认 faker2 仓库
✅支持修改 code.sh 默认调用的仓库脚本日志
✅进入面板成功一次后可自动 创建格式化更新助力码 和 初始化任务 两个 task
extra.sh 功能如下
✅默认拉取 faker2 仓库
✅默认拉取 Aaron-lv 的 cfd 和 Wenmoux 的 bookshop，自行修改 code.sh 相关配置使用
✅默认安装部分依赖

### N1单独更新`config.sh`
```
cd /mnt/mmcblk2p4/ql/config
curl -sL https://git.io/config.sh > config.sh
```
### N1单独更新`extra.sh`
```
cd /mnt/mmcblk2p4/ql/config
curl -sL https://git.io/extra.sh > extra.sh
```
### N1单独更新`code.sh`
```
cd /mnt/mmcblk2p4/ql/config
curl -sL https://git.io/code.sh > code.sh
```
### N1单独更新`task_before.sh`
```
cd /mnt/mmcblk2p4/ql/config
curl -sL https://git.io/task_before.sh > task_before.sh
```
