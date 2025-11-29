#!/bin/bash
# 这是一个快速体验 CycleGAN 的一键启动脚本
# 该脚本会使用官方预训练权重
# 使用时只需在根目录下 "bash ./quickstart.sh"

# 选择想体验的模式, 脚本会自动下载已有的预训练权重
# 可选: 1.summer2winter_yosemite -> 季节迁移：夏到冬
selected_model="summer2winter_yosemite"

# 下载官方预训练权重
# bash ./scripts/download_cyclegan_model.sh "$selected_model"

# 测试脚本默认会去读 testA 里的图片作为输入源进行转换。
# 记得去修改成你自己存放图片的地址
source_folder="datasets/local_test/testA"

# 这个是你想要体验的功能的名字
# 【注】这里的这个名字不能随便输入, 要从官方指定的里面去选
model_name="summer2winter_yosemite_pretrained"

# 执行测试 python 脚本
# 需要注意的是 PyTorch 官方貌似没有支持 50x 显卡的发行版
python test.py --dataroot "$source_folder" --name "$model_name" --model test --no_dropout