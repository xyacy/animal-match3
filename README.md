# 森林消消乐 · 小动物版 (animal-match3)

> 🌐 在线体验：https://animal-match3-vljw.vercel.app

一个纯前端的三消小游戏：拖动或点击交换相邻的小动物，三个同色即可消除，连成 4 个生成炸弹，连成 5 个生成彩虹，在限定步数内达成目标分数即可过关。

- 单个 `index.html` 文件，零依赖、零构建（原生 HTML + CSS + JavaScript + 内联 SVG）
- 支持鼠标拖拽与触屏，可直接部署到任意静态托管平台

## 本地预览

```bash
# 任选一种
npx serve .
python -m http.server 8080
# 或直接双击 index.html 用浏览器打开
```

## 部署到 Vercel

仓库根目录已有 `index.html`，Vercel 可直接识别为静态站点：

1. 打开 https://vercel.com/new ，用 GitHub 登录
2. Import 本仓库，Framework Preset 选 **Other**，Build Command 留空，Output Directory 留空
3. 点 Deploy，等待几十秒即可拿到 `.vercel.app` 域名

后续每次 `git push`，Vercel 会自动重新部署。

> 如果首页出现文件列表或 404，在项目根目录加一个 `vercel.json`：
> ```json
> { "version": 2, "builds": [{ "src": "index.html", "use": "@vercel/static" }] }
> ```
