# VPS安装青龙命令
## 方法一
```
mkdir /ql && cd /ql
curl -sL https://git.io/QL > docker-compose.yml
docker-compose up -d
docker exec -it qinglong bash -c "$(curl -fsSL https://git.io/1custom)"
```
## 方法二
# ①
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
# ②
```
docker exec -it qinglong bash -c "$(curl -fsSL https://git.io/1custom)"
```

## VPS运行  [1custom.sh](https://raw.githubusercontent.com/Oreomeow/VIP/main/Scripts/sh/1custom.sh)  更新[config.sh](https://raw.githubusercontent.com/Oreomeow/VIP/main/Conf/Qinglong/config.sample.sh)|[extra.sh](https://raw.githubusercontent.com/Oreomeow/VIP/main/Tasks/qlrepo/extra.sh)|[code.sh](https://raw.githubusercontent.com/Oreomeow/VIP/main/Scripts/sh/Helpcode2.8/code.sh)|[task_before.sh](https://raw.githubusercontent.com/Oreomeow/VIP/main/Scripts/sh/Helpcode2.8/task_before.sh)
```
docker exec -it qinglong bash -c "$(curl -fsSL https://git.io/1custom)"
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
