#!/bin/bash

# ViL 网站部署脚本
# 用法: ./deploy.sh

echo "🚀 开始部署 ViL 网站..."
echo ""

# 检查是否已初始化 git
if [ ! -d ".git" ]; then
    echo "📦 初始化 Git 仓库..."
    git init
fi

# 添加所有文件
echo "📁 添加文件到 Git..."
git add .

# 提交
echo "💾 提交更改..."
git commit -m "Update site" || echo "无需提交更改"

# 检查远程仓库是否已存在
if git remote | grep -q "origin"; then
    echo "🔄 远程仓库已存在，更新..."
    git remote set-url origin "git@github.com:ViL-TJU/vil-site.git"
else
    echo "🔗 添加远程仓库..."
    git remote add origin "git@github.com:ViL-TJU/vil-site.git"
fi

# 推送
echo "⬆️  推送到 GitHub..."
git branch -M main
git push -u origin main

echo ""
echo "✅ 代码已推送到 GitHub!"
echo ""
