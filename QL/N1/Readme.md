# N1安装青龙命令
```
mkdir /mnt/mmcblk2p4/ql && cd /mnt/mmcblk2p4/ql
curl -sL https://github.com/qg888/Notes/raw/main/QL/N1/docker-compose.yml > docker-compose.yml
docker-compose up -d
docker exec -it qinglong bash -c "$(curl -fsSL https://github.com/qg888/Notes/raw/main/QL/N1/1custom.sh)"
```

## N1运行[1custom.sh](https://raw.githubusercontent.com/Oreomeow/VIP/main/Scripts/sh/1custom.sh)更新[config.sh](https://raw.githubusercontent.com/qg888/Notes/main/QL/N1/config/config.sample.sh) [extra.sh](https://raw.githubusercontent.com/qg888/Notes/main/QL/N1/config/extra.sh) [code.sh](https://raw.githubusercontent.com/qg888/Notes/main/QL/N1/config/code.sh) [task_before.sh](https://raw.githubusercontent.com/qg888/Notes/main/QL/N1/config/task_before.sh)
```
docker exec -it qinglong bash -c "$(curl -fsSL https://github.com/qg888/Notes/raw/main/QL/N1/1custom.sh)"
```

## 说明
```
1custom 脚本功能如下
✅自由选择替换原始的 config.sh 文件
✅自由选择替换原始的 extra.sh 文件
✅自由选择替换原始的 code.sh 文件
✅自由选择替换原始的 task_before.sh 文件
✅支持修改 extra.sh 里面初始拉取的仓库：默认 faker2 仓库
✅配套下载 faker2 utils.zip 并在 scripts 目录解压
✅支持修改 code.sh 默认调用的仓库脚本日志
✅自动创建 task: 格式化更新助力码 & task: 初始化任务（需进入面板成功一次）
✅自由选择并自动创建 task: 拉取机器人

extra.sh 功能如下
✅默认拉取 faker2 仓库
✅默认拉取 Aaron-lv 的 cfd 和 Wenmoux 的 bookshop
✅默认安装部分依赖
```
