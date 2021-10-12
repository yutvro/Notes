# 安装青龙命令
## 方法一
- N1
```
mkdir /mnt/mmcblk2p4/ql && cd /mnt/mmcblk2p4/ql
curl -sL https://github.com/qg888/Notes/raw/main/QL/docker-compose.yml > docker-compose.yml
docker-compose up -d
docker exec -it qinglong bash -c "$(curl -fsSL https://raw.githubusercontent.com/qg888/Notes/main/QL/1custom.sh)"
```
- VPS
```
mkdir /ql && cd /ql
curl -sL https://git.io/QL > docker-compose.yml
docker-compose up -d
docker exec -it qinglong bash -c "$(curl -fsSL https://raw.githubusercontent.com/qg888/Notes/main/QL/1custom.sh)"
```
## 方法二
## ①
- N1
```
docker run -dit \
   -v /mnt/mmcblk2p4/ql/config:/ql/config \
   -v /mnt/mmcblk2p4/ql/log:/ql/log \
   -v /mnt/mmcblk2p4/ql/db:/ql/db \
   -v /mnt/mmcblk2p4/ql/scripts:/ql/scripts \
   -v /mnt/mmcblk2p4/ql/repo:/ql/repo \
   -v /mnt/mmcblk2p4/ql/raw:/ql/raw \
   -v /mnt/mmcblk2p4/ql/jbot:/ql/jbot \
   --network host \
   --name qinglong \
   --hostname qinglong \
   --restart always \
   whyour/qinglong:latest
```
- VPS
```
docker run -dit \
   -v $PWD/ql/config:/ql/config \
   -v $PWD/ql/db:/ql/db \
   -v $PWD/ql/repo:/ql/repo \
   -v $PWD/ql/raw:/ql/raw \
   -v $PWD/ql/scripts:/ql/scripts \
   -v $PWD/ql/log:/ql/log \
   -v $PWD/ql/jbot:/ql/jbot \
   -p 5700:5700 \
   --name qinglong \
   --hostname qinglong \
   --restart always \
   whyour/qinglong:latest
```
## ②
- N1/VPS
```
docker exec -it qinglong bash -c "$(curl -fsSL https://raw.githubusercontent.com/qg888/Notes/main/QL/1custom.sh)"
```

# N1/VPS运行  [1custom.sh](https://raw.githubusercontent.com/qg888/Notes/main/QL/1custom.sh)  更新[config.sh](https://raw.githubusercontent.com/qg888/Notes/main/QL/config.sample.sh)|[extra.sh](https://raw.githubusercontent.com/qg888/Notes/main/QL/extra.sh)|[code.sh](https://raw.githubusercontent.com/qg888/Notes/main/QL/code.sh)|[task_before.sh](https://raw.githubusercontent.com/qg888/Notes/main/QL/task_before.sh)
```
docker exec -it qinglong bash -c "$(curl -fsSL https://raw.githubusercontent.com/qg888/Notes/main/QL/1custom.sh)"
```

#### 说明
```
1custom 脚本功能如下
✅支持全部替换模式和自由选择模式
✅自由选择替换原始的 config.sh 文件
✅自由选择替换原始的 extra.sh 文件
✅自由选择替换原始的 code.sh 文件
✅自由选择替换原始的 task_before.sh 文件
✅支持修改 extra.sh 里面初始拉取集成仓库：5 个仓库，默认 faker2 仓库
✅支持修改 extra.sh 里面初始拉取其他仓库：15 个仓库，默认不拉取
✅支持修改 code.sh 默认调用的仓库脚本日志：7 个仓库
以下需进入面板成功一次
✅自由选择并自动创建 task: 格式化更新助力码
✅自由选择并自动创建 task: 初始化任务
✅自由选择并自动创建 task: 拉取机器人
✅简单配置 bot.json
✅自由选择并自动创建 task: 自动更新模版

extra.sh 功能如下
✅默认拉取 faker2 仓库
✅修改数字即可简单设置拉取多个仓库
✅可选是否安装依赖和安装哪些依赖
✅可选是否自动更新 Ninja
```
