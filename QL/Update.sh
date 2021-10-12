#!/usr/bin/env bash

<<'COMMENT'
cron: 32 6,18 * * *
new Env('自用更新');
COMMENT

dir_config=/ql/config
dir_scripts=/ql/scripts
dir_raw=/ql/raw
config_raw_path=$dir_raw/config.sh
config_config_path=$dir_config/config.sh
extra_raw_path=$dir_raw/extra.sh
extra_config_path=$dir_config/extra.sh
code_raw_path=$dir_raw/code.sh
code_config_path=$dir_config/code.sh
task_before_raw_path=$dir_raw/task_before.sh
task_before_config_path=$dir_config/task_before.sh

GithubProxyUrl=""
TG_BOT_TOKEN=""
TG_USER_ID=""
QYWX_AM=""
PUSH_PLUS_TOKEN=""
PUSH_PLUS_USER=""
JD_JOY_REWARD_NAME="500"
openCardBean=""

CollectedRepo="6"
OtherRepo="1 3 12 15"
Ninja="on"

repoNum="6"
HelpType="HelpType=\"1\""
BreakHelpType="BreakHelpType=\"1\""
BreakHelpNum="BreakHelpNum=\"31-1000\""


curl -sL https://raw.githubusercontent.com/qg888/Notes/main/QL/config.sample.sh > $config_raw_path
mv -f $config_raw_path $dir_config
sed -ri "s/GithubProxyUrl=\"https\:\/\/ghproxy.com\/\"/GithubProxyUrl=\"${GithubProxyUrl}\"/g" $config_config_path
sed -i "s/TG_BOT_TOKEN=\"\"/TG_BOT_TOKEN=\"$TG_BOT_TOKEN\"/g" $config_config_path
sed -i "s/TG_USER_ID=\"\"/TG_USER_ID=\"$TG_USER_ID\"/g" $config_config_path
sed -i "s/QYWX_AM=\"\"/QYWX_AM=\"${QYWX_AM}\"/g" $config_config_path
sed -i "s/PUSH_PLUS_TOKEN=\"\"/PUSH_PLUS_TOKEN=\"${PUSH_PLUS_TOKEN}\"/g" $config_config_path
sed -i "s/PUSH_PLUS_USER=\"\"/PUSH_PLUS_USER=\"${PUSH_PLUS_USER}\"/g" $config_config_path
sed -i "s/JD_JOY_REWARD_NAME=\"500\"/JD_JOY_REWARD_NAME=\"${JD_JOY_REWARD_NAME}\"/g" $config_config_path
sed -i "s/openCardBean=\"30\"/openCardBean=\"${openCardBean}\"/g" $config_config_path
echo -e '\n\n## 小米运动' >> $config_config_path
echo 'export MI_USER=""  ## 小米账号' >> $config_config_path
echo 'export MI_PWD=""  ## 小米密码' >> $config_config_path
echo 'export STEP=""  ## 小米步数' >> $config_config_path
echo 'export PMODE="" ## 小米推送模式' >> $config_config_path
echo 'export PKEY=""  ## 小米 TG 推送参数' >> $config_config_path

curl -sL https://raw.githubusercontent.com/qg888/Notes/main/QL/extra.sh > $extra_raw_path
mv -f $extra_raw_path $dir_config
sed -i "s/CollectedRepo=(4)/CollectedRepo=(${CollectedRepo})/g" $extra_config_path
sed -i "s/OtherRepo=()/OtherRepo=(${OtherRepo})/g" $extra_config_path
sed -i "s/Ninja=\"on\"/Ninja=\"${Ninja}\"/g" $extra_config_path

curl -sL https://raw.githubusercontent.com/qg888/Notes/main/QL/code.sh > $code_raw_path
mv -f $code_raw_path $dir_config
sed -i "s/repo=\$repo4/repo=\$repo${repoNum}/g" $code_config_path
sed -i "/^HelpType=/c${HelpType}" $code_config_path
sed -i "/^BreakHelpType=/c${BreakHelpType}" $code_config_path
sed -i "/^BreakHelpNum=/c${BreakHelpNum}" $code_config_path

curl -sL https://raw.githubusercontent.com/qg888/Notes/main/QL/task_before.sh > $task_before_raw_path
mv -f $task_before_raw_path $dir_config
