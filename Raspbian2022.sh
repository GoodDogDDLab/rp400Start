#!/bin/bash
# 樹梅派4 RP400 教育訓練環境
# 適用於: Raspbian Bulleye 
# Version 0.1:	2022.06.30
#   01. 安裝常用軟體
#   02. 安裝開發環境
# 備註：
#   01. 調整為常用軟體組合 
#   02. 測試    
# =============================================================================
# 更新套件
sudo apt-get update
sudo apt-get upgrade -y
# =============================================================================
# 安裝必要套件
sudo apt-get install -y vim git
# 讀取 ntfs 磁碟 Bulleye 預設已有支援
# sudo apt install -y ntfs-3g
sudo apt autoremove -y
# 設定 vim 套件管理系統
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# 載入  專案，裡面有常用的設定檔與資料檔 
git clone https://github.com/GoodDogDDLab/myBulleye.git
# 複製 vimrc，讓 vim 使用比較便利
cp ~/myBulleye/vimrc ~/.vimrc
# =============================================================================
# 安裝 C 語言開發環境與 The Art and Science of C 範例程式庫
# https://www.stickmind.com/code-c/01-development-tools/
# 教科書附件下載連結
# 公用函式庫: https://www.ime.usp.br/~pf/Roberts/C-library/unix-xwindows/cslib.shar
# 範例程式碼: https://www.ime.usp.br/~pf/Roberts/C-library/programs/archive/programs.shar
# =============================================================================
# 安裝基本程式開發工具
sudo apt-get install -y build-essential
# 安裝 csh 與 X11 開發工具
sudo apt install -y csh libx11-dev
# 下載範例程式庫
cd ~
cp ~/myBulleye/cslib.shar cslib.shar
sh cslib.shar
cd cslib
cp ~/myBulleye/programs.shar programs.shar
make 
# 新增環境變數路徑
sed -i '$ a\export PATH="$HOME/cslib:$PATH"' ~/.bashrc
source ~/.bashrc
sh programs.shar
cd ~
# =============================================================================
# 安裝教育類軟體
# =============================================================================
# 鍵盤按鈕輔助工具(Bulleye 好像沒有)
# sudo apt install -y key-mon
# 螢幕鍵盤(Bulleye 好像沒有)
# sudo apt install -y onscreen
# 螢幕上顯示按鍵
sudo apt install -y screenkey
# 兒童教育類軟體
sudo apt install -y gcompris
sudo apt install -y jigsaw-generator
# sudo apt install -y gpaint (Bulleye 好像沒有)
# sudo apt install -y gmchess(Bulleye 好像沒有)

# =============================================================================
# 安裝字元對應表
# =============================================================================
sudo apt install -y gucharmap

# =============================================================================
# 安裝中文環境
# =============================================================================
# 中文輸入法
sudo apt install -y fcitx fcitx-chewing
# =============================================================================
# 常用中文字型
# =============================================================================
# 文泉驛微米黑
sudo apt-get install -y ttf-wqy-microhei
# 文泉驛正黑
sudo apt-get install -y ttf-wqy-zenhei
# 文泉驛點陣宋體 X11
sudo apt-get install -y xfonts-wqy
# 教育部標準楷書
sudo apt-get install -y fonts-moe-standard-kai
# 教育部標準宋體
sudo apt-get install -y fonts-moe-standard-song
# 文鼎楷書體 Unicode
sudo apt-get install -y fonts-arphic-ukai
# 文鼎明體 Unicode
sudo apt-get install -y fonts-arphic-uming
# =============================================================================
# 表情符號字型
# =============================================================================
sudo apt install -y fonts-noto-color-emoji
# =============================================================================
# 安裝 gforth 環境
# =============================================================================
sudo apt install -y gforth
# =============================================================================
# 安裝 Pi-KISS
# =============================================================================
curl -sSL https://git.io/JfAPE | bash
# =============================================================================
# 安裝 Pi-APPS
# =============================================================================
wget -qO- https://raw.githubusercontent.com/Botspot/pi-apps/master/install | bash
# =============================================================================
# 安裝 nodejs 環境
# =============================================================================

# =============================================================================
# 安裝 R 語言環境
# =============================================================================

# =============================================================================
# 安裝處理 Jupyter Notebook 環境
# 使用套件管理系統: Miniconda
# =============================================================================
# 安裝 Miniconda

# =============================================================================
# 安裝 Mathematica 數學軟體(只有支援 32位元的系統)
# =============================================================================
# 網頁 https://www.wolfram.com/raspberry-pi/
# wget https://wolfr.am/wolfram-engine-raspi-install

