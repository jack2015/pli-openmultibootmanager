# pli-openmultibootmanager

基于 openPLi 的开源多启动管理器

## 简介

openPLi 是一个流行的用于数字视频接收器（DVB）的 Linux 发行版。`pli-openmultibootmanager` 是一个插件，允许用户在多个固件镜像之间切换，实现多启动功能。

## 功能

- 多启动管理：管理多个固件镜像并选择启动项。
- 镜像安装：支持从 ZIP 文件安装新的固件镜像。
- 镜像删除：删除不需要的固件镜像。
- 镜像重命名：方便地重命名镜像以区分用途。
- 自动扫描：自动检测并添加新的固件镜像。
- 备份验证：检查镜像的兼容性和完整性。
- 支持多种设备：支持多种固件格式，包括 NFI、TARBZ2、JFFS2 和 UBI。

## 安装

1. 确保你已经安装了 openPLi。
2. 下载插件并解压。
3. 将插件文件复制到 openPLi 的插件目录中。
4. 重启 Enigma2 界面或设备。

## 使用

1. 打开 Enigma2 主菜单。
2. 进入 "插件" 菜单。
3. 选择 "Open MultiBoot Manager"。
4. 使用方向键选择操作：
   - 安装镜像
   - 删除镜像
   - 重命名镜像
   - 设置默认启动镜像
   - 更改启动超时时间
   - 检查备份验证

## 贡献

欢迎贡献代码、文档或报告问题。请提交 Pull Request 或 Issue 到 [Gitee 仓库](https://gitee.com/jackgee2021/pli-openmultibootmanager)。

## 许可证

本项目遵循 GNU General Public License v2.0。详情请查看 [COPYING](COPYING) 文件。