<div align="center">
<img src="banner.png" alt="SJMCL" />

# SJMCL-extensions 索引库
### SJMCL 官方扩展索引

[![SJMCL 主仓库](https://img.shields.io/badge/SJMCL-Main%20Repo-111827?style=for-the-badge&logo=github)](https://github.com/UNIkeEN/SJMCL)
[![SJMC 官方网站](https://img.shields.io/badge/SJMC-Official%20Website-0ea5e9?style=for-the-badge)](https://mc.sjtu.cn/)
[![Ask DeepWiki](https://img.shields.io/badge/Ask-DeepWiki-20B2AA?style=for-the-badge)](https://deepwiki.com/UNIkeEN/SJMCL)
[![Stars](https://img.shields.io/github/stars/SJMC-Dev/awesome-SJMCL-extensions?style=for-the-badge&logo=github)](https://github.com/SJMC-Dev/awesome-SJMCL-extensions)
[![License](https://img.shields.io/badge/license-MIT-2ea043?style=for-the-badge)](LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen?style=for-the-badge)](CONTRIBUTING.md)
[![Extension Count](https://img.shields.io/badge/plugins-1-ff8c00?style=for-the-badge)](#-插件目录)

**[English](README.en.md) · 简体中文 · [繁體中文](README.zh-Hans.md)**

</div>

---

## 项目介绍

> 本仓库是 SJMCL Extension 官方插件索引库，采用纯索引模式。  
> 不托管插件完整源码，只维护插件入口、能力说明和推荐清单。

我们希望通过统一、可检索、可审查的索引页面，让开发者和用户可以更快找到合适的插件。

### 核心原则

- 索引优先：每个插件只保留说明文档入口
- 源码外置：插件源码由作者在独立仓库维护
- 可审查：收录信息结构化、可验证、可持续维护

---

## 目录

- [什么是 SJMCL-extensions？](#什么是-sjmcl-extensions)
- [插件目录](#插件目录)
- [集成类 / Integrations](#集成类--integrations)
- [UI & 界面增强 / UI Enhancements](#ui--界面增强--ui-enhancements)
- [生产力工具 / Productivity Tools](#生产力工具--productivity-tools)
- [AI & 大模型相关 / AI & LLM](#ai--大模型相关--ai--llm)
- [其他 / Others](#其他--others)
- [快速开始](#快速开始)
- [贡献](#贡献)
- [License](#license)

---

## 什么是 SJMCL-extensions？

SJMCL-extensions 是面向 SJMCL 生态的扩展索引。一个标准条目通常具备：

- 元信息清单（标识符、名称、版本兼容性）
- 前端入口或功能入口
- 面向用户的功能说明与使用文档

本仓库只收录索引文档层，不直接承载插件完整实现代码。

---

## 插件清单与打包格式

请查看 [CONTRIBUTING.md](CONTRIBUTING.md) 中的以下章节：

- 插件清单与打包格式示例
- 清单文件（sjmcl.ext.json）关键字段
- 前端入口（frontend/index.js）示例特征

---

## 插件目录

### 集成类 / Integrations

- [Clock](plugins/org.sjmcl.clock/) - 最简时钟插件索引示例，展示清单字段与前端入口约定。作者：[SJMCL](https://github.com/SJMCL)。仓库：本仓库示例（非独立源仓库）。Stars：1。

### UI & 界面增强 / UI Enhancements

- 暂无收录，欢迎提交。


### 生产力工具 / Productivity Tools

- 暂无收录，欢迎提交。

### AI & 大模型相关 / AI & LLM

- 暂无收录，欢迎提交。

### 其他 / Others

- 暂无收录，欢迎提交。

---

## 快速开始

1. 浏览上方分类列表，选择插件
2. 进入对应插件索引页（plugins/xxx/）阅读详细说明
3. 跳转到插件源仓库，按插件作者文档安装与配置

---

## 贡献

请先阅读 [CONTRIBUTING.md](CONTRIBUTING.md) 并按模板提交：

1. Fork 仓库并创建分支
2. 新建 plugins/your-plugin-name/README.md
3. 在本页对应分类添加插件条目
4. 发起 PR

插件页模板可参考：

- [plugins/org.sjmcl.clock/README.md](plugins/org.sjmcl.clock/README.md)

---

## License

本索引仓库采用 [MIT License](LICENSE)。  
各插件的开源协议以其源仓库声明为准。

---

<div align="center">

Made by SJMCL Team

</div>
