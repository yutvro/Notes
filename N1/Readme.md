#N1创建青龙命令
mkdir /mnt/mmcblk2p4/ql && cd /mnt/mmcblk2p4/ql
curl -sL https://git.io/QL > docker-compose.yml
docker-compose up -d
docker exec -it qinglong bash -c "$(curl -fsSL https://git.io/Allinone)"
'''
