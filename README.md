# ViL 视觉智能实验室网站

基于 Astro + Tailwind CSS 构建的静态网站。

## 快速部署到 GitHub Pages

### 1. 创建 GitHub 仓库

1. 登录 [GitHub](https://github.com)
2. 点击右上角 "+" → "New repository"
3. 仓库名称填 `vil-site`（或你喜欢的名字）
4. 选择 "Public"（公开）
5. 点击 "Create repository"

### 2. 上传代码

在 `vil-site` 文件夹中执行：

```bash
# 初始化 git
git init

# 添加所有文件
git add .

# 提交
git commit -m "Initial commit"

# 连接远程仓库（替换 YOUR_USERNAME 为你的 GitHub 用户名）
git remote add origin https://github.com/YOUR_USERNAME/vil-site.git

# 推送
git branch -M main
git push -u origin main
```

### 3. 配置 GitHub Pages

1. 打开仓库页面
2. 点击 "Settings" → "Pages"（在左侧菜单）
3. Source 选择 "GitHub Actions"
4. 完成！每次 push 代码会自动部署

### 4. 查看网站

部署完成后，访问：
`https://YOUR_USERNAME.github.io/vil-site`

### 5. 绑定自定义域名（可选）

1. 在仓库根目录创建 `CNAME` 文件，内容为你的域名：
   ```
   www.tjuvil.net
   ```

2. 修改 `astro.config.mjs`：
   ```js
   export default defineConfig({
     output: 'static',
     site: 'https://www.tjuvil.net',  // 你的域名
     // 删除 base 配置
     vite: { ... }
   });
   ```

3. 在你的域名服务商处添加 DNS 记录：
   - 类型：CNAME
   - 名称：www
   - 值：YOUR_USERNAME.github.io

## 本地开发

```bash
# 安装依赖
npm install

# 启动开发服务器
npm run dev

# 构建
npm run build

# 预览构建结果
npm run preview
```

## 目录结构

```
vil-site/
├── src/
│   ├── components/    # 可复用组件
│   ├── layouts/       # 页面布局
│   ├── pages/         # 网站页面
│   └── styles/        # 全局样式
├── public/images/     # 图片资源
└── .github/workflows/ # GitHub Actions 配置
```

## 更新内容

### 修改已有页面

直接编辑 `src/pages/` 下的 `.astro` 文件。

### 添加新页面

1. 在 `src/pages/` 下创建 `.astro` 文件
2. 参考现有页面格式编写
3. push 到 GitHub 自动部署

### 添加图片

1. 图片放入 `public/images/` 文件夹
2. 在页面中引用：`/images/图片名.jpg`

## 需要帮助？

- [Astro 文档](https://docs.astro.build)
- [Tailwind CSS 文档](https://tailwindcss.com/docs)
- [GitHub Pages 文档](https://docs.github.com/pages)
