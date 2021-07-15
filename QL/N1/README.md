# N1安装青龙命令
```
mkdir /mnt/mmcblk2p4/ql && cd /mnt/mmcblk2p4/ql
curl -sL https://github.com/qg888/Notes/raw/main/QL/N1/docker-compose.yml > docker-compose.yml
docker-compose up -d
docker exec -it qinglong bash -c "$(curl -fsSL https://github.com/qg888/Notes/raw/main/QL/N1/Allinone.sh)"
```

## N1运行[Allinone.sh](https://raw.githubusercontent.com/qg888/Notes/main/QL/N1/Allinone.sh)更新[config.sh](https://raw.githubusercontent.com/qg888/Notes/main/QL/N1/config/config.sample.sh) [extra.sh](https://raw.githubusercontent.com/qg888/Notes/main/QL/N1/config/extra.sh) [code.sh](https://raw.githubusercontent.com/qg888/Notes/main/QL/N1/config/code.sh) [task_before.sh](https://raw.githubusercontent.com/qg888/Notes/main/QL/N1/config/task_before.sh)
```
docker exec -it qinglong bash -c "$(curl -fsSL https://github.com/qg888/Notes/raw/main/QL/N1/Allinone.sh)"
```
## 或者
```
cd /mnt/mmcblk2p4/ql/config
curl -sL https://git.io/config.sh > config.sh
curl -sL https://git.io/extra.sh > extra.sh
curl -sL https://git.io/code.sh > code.sh
curl -sL https://git.io/task_before.sh > task_before.sh
```
## 说明
```
Allinone 脚本功能如下
✅替换原始的 config.sh 文件
✅替换原始的 extra.sh 文件
✅替换原始的 code.sh 文件
✅替换原始的 task_before.sh 文件
✅支持修改 extra.sh 里面初始拉取的仓库：默认 faker2 仓库
✅支持修改 code.sh 默认调用的仓库脚本日志
✅自动创建 task: 格式化更新助力码 & task: 初始化任务（需进入面板成功一次）
✅自动创建 task: 拉取机器人
extra.sh 功能如下
✅默认拉取 faker2 仓库
✅默认拉取 Aaron-lv 的 cfd 和 Wenmoux 的 bookshop，自行修改 code.sh 相关配置使用
✅默认安装部分依赖
限制
❗️由于脚本内的所有链接都是 raw，境内机器看缘分使用
```

## N1单独更新[config.sh](https://raw.githubusercontent.com/qg888/Notes/main/QL/N1/config/config.sample.sh)
```
cd /mnt/mmcblk2p4/ql/config
curl -sL https://raw.githubusercontent.com/qg888/Notes/main/QL/N1/config/config.sample.sh > config.sh
```
## N1单独更新[extra.sh](https://raw.githubusercontent.com/qg888/Notes/main/QL/N1/config/extra.sh)
```
cd /mnt/mmcblk2p4/ql/config
curl -sL https://raw.githubusercontent.com/qg888/Notes/main/QL/N1/config/extra.sh > extra.sh
```
## N1单独更新[code.sh](https://raw.githubusercontent.com/qg888/Notes/main/QL/N1/config/code.sh)
```
cd /mnt/mmcblk2p4/ql/config
curl -sL https://raw.githubusercontent.com/qg888/Notes/main/QL/N1/config/code.sh > code.sh
```
## N1单独更新[task_before.sh](https://raw.githubusercontent.com/qg888/Notes/main/QL/N1/config/task_before.sh)
```
cd /mnt/mmcblk2p4/ql/config
curl -sL https://raw.githubusercontent.com/qg888/Notes/main/QL/N1/config/task_before.sh > task_before.sh
```