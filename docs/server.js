// 引入 express 框架
import express from "express";
// 引入 http-proxy-middleware 用来做代理转发
import { createProxyMiddleware } from "http-proxy-middleware";

const app = express();

// 配置一个反向代理，把 /docs 开头的请求转发到目标网站
app.use(
  "/docs", // 访问 http://localhost:3000/docs 时触发
  createProxyMiddleware({
    target: "https://shopify-docs-oab4.vercel.app", // 目标网站
    changeOrigin: true, // 修改请求头里的 Host，伪装成目标站点
    pathRewrite: { "^/docs": "" }, // 去掉 /docs 前缀，比如 /docs/#/ → /#/
  })
);

// 启动本地服务器
app.listen(3000, () => {
  console.log("代理服务器已启动： http://localhost:3000/docs");
});
