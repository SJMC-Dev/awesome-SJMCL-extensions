# org.sjmcl.clock

语言版本: 简体中文 · [繁體中文](README.zh-Hans.md)

最小可跑通示例插件索引页。

## 基本信息

- 名称: Clock
- 仓库地址: 
- 标识符: org.sjmcl.clock
- 清单文件: ../../org.sjmcl.clock/sjmcl.ext.json
- 前端入口: ../../org.sjmcl.clock/frontend/index.js

## 最小可跑通路径

1. 读取 `sjmcl.ext.json`，确认 `frontend.entry` 指向 `frontend/index.js`。
2. 加载 `frontend/index.js` 并完成 `window.registerExtension` 注册。
3. 观察界面每秒刷新和日志输出，确认初始化、更新、清理流程正常。

## 结构说明

该示例只展示最小结构：

- `sjmcl.ext.json`
- `frontend/index.js`

本页面仅为索引说明，不包含完整插件源码。
