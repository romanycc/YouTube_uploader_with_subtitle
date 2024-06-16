#!/bin/bash

# Define an array of commands to execute
commands=(
"python upload_video.py --file=upload/P22初赛C组马来西亚理科大学总院校VS海南大学城市正在让人类更孤独不孤独-国际华语辩论邀请赛-BV1EN411h77x-918O4DeM5YCNfk0D/P22初赛C组马来西亚理科大学总院校VS海南大学城市正在让人类更孤独不孤独-国际华语辩论邀请赛-BV1EN411h77x-918O4DeM5YCNfk0D.mp4 --title=P22初赛C组马来西亚理科大学总院校VS海南大学城市正在让人类更孤独不孤独-国际华语辩论邀请赛-BV1EN411h77x-918O4DeM5YCNfk0D/P22初赛C组马来西亚理科大学总院校VS海南 --subtitle=upload/P22初赛C组马来西亚理科大学总院校VS海南大学城市正在让人类更孤独不孤独-国际华语辩论邀请赛-BV1EN411h77x-918O4DeM5YCNfk0D/P22初赛C组马来西亚理科大学总院校VS海南大学城市正在让人类更孤独不孤独-国际华语辩论邀请赛-BV1EN411h77x-918O4DeM5YCNfk0D.srt --secret=client_secret/client_secret_0.json"
"python upload_video.py --file=upload/P21初赛B组山东理工大学VS新南威尔士大学城市正在让人类更孤独不孤独-国际华语辩论邀请赛-BV1EN411h77x-ss2LjUAAOM2p0R1I/P21初赛B组山东理工大学VS新南威尔士大学城市正在让人类更孤独不孤独-国际华语辩论邀请赛-BV1EN411h77x-ss2LjUAAOM2p0R1I.mp4 --title=P21初赛B组山东理工大学VS新南威尔士大学城市正在让人类更孤独不孤独-国际华语辩论邀请赛-BV1EN411h77x-ss2LjUAAOM2p0R1I/P21初赛B组山东理工大学VS新南威尔士大学城市 --subtitle=upload/P21初赛B组山东理工大学VS新南威尔士大学城市正在让人类更孤独不孤独-国际华语辩论邀请赛-BV1EN411h77x-ss2LjUAAOM2p0R1I/P21初赛B组山东理工大学VS新南威尔士大学城市正在让人类更孤独不孤独-国际华语辩论邀请赛-BV1EN411h77x-ss2LjUAAOM2p0R1I.srt --secret=client_secret/client_secret_1.json"
"python upload_video.py --file=upload/P23初赛C组马来西亚理科大学总院校VS海南大学城市正在让人类更孤独不孤独-国际华语辩论邀请赛-BV1EN411h77x-918O4DeM5YCNfk0D/P23初赛C组马来西亚理科大学总院校VS海南大学城市正在让人类更孤独不孤独-国际华语辩论邀请赛-BV1EN411h77x-918O4DeM5YCNfk0D.mp4 --title=P23初赛C组马来西亚理科大学总院校VS海南大学城市正在让人类更孤独不孤独-国际华语辩论邀请赛-BV1EN411h77x-918O4DeM5YCNfk0D/P23初赛C组马来西亚理科大学总院校VS海南 --secret=client_secret/client_secret_2.json"

)

# Iterate over each command and execute it
for ((j=0; j<${#commands[@]}; j++))
do
    command="${commands[j]}"
    
    echo "Executing: $command"
    eval $command
    if [ $? -eq 0 ]; then
        echo "Successfully executed: $command"
    else
        echo "Failed to execute: $command"
    fi
    
    # Delete any file ending with "oauth2.json" every 5 commands
    if (( (j + 1) % 5 == 0 )); then
        find . -type f -name '*oauth2.json' -exec rm -f {} \;
    fi
done