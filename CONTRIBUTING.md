# 贡献指南

语言版本: [English](CONTRIBUTING.en.md) · 简体中文 · [繁體中文](CONTRIBUTING.zh-Hans.md)

感谢你为 awesome-SJMCL-extensions 做出贡献！

本仓库是一个纯链接列表：不托管插件源码，只收录指向插件源仓库的链接和一句话描述。

---

## 目录

- [插件仓库要求](#插件仓库要求)
- [条目格式](#条目格式)
- [提交流程](#提交流程)
- [收录要求](#收录要求)
- [提交检查清单](#提交检查清单)
- [审核流程](#审核流程)

---

## 插件仓库要求

在提交到本列表之前，你的插件仓库必须包含：

- `README.md` — 插件介绍、功能说明、使用方法

这是唯一的硬性要求。格式与结构由插件作者自行决定。

你可以参考 [org.sjmcl.clock/](org.sjmcl.clock/) 作为插件清单与前端入口格式的参考示例。

---

## 条目格式

在主页 `README.md` 对应分类下添加一行：

```markdown
- **[插件名称](https://github.com/your/repo)** — 一句话描述。
```

示例：

```markdown
- **[Clock](https://github.com/example/sjmcl-clock)** — 在启动器界面展示实时时钟。
```

---

## 提交流程

1. Fork 本仓库并创建新分支。
2. 在 `README.md`、`README.en.md`、`README.zh-Hans.md` 的对应分类中各添加一行条目。
3. 发起 Pull Request，标题简要描述所添加的插件。

> 无需在本仓库中添加任何其他文件。

---

## 收录要求

- 插件与 SJMCL 生态有明确关联
- 插件源仓库公开可访问
- 插件源仓库包含 `README.md`
- 插件真实可用（非空仓库、非纯占位）
- 不违反相关开源许可证
- 不重复收录已有条目

---

## 提交检查清单

- [ ] 已在三个语言版本的 README 中添加条目
- [ ] 条目链接指向插件源仓库（非本仓库子目录）
- [ ] 插件源仓库包含 `README.md`
- [ ] 描述简洁（一句话）
- [ ] 模板占位符已全部替换

---

## 审核流程

```
PR 提交 → 自动检查（链接有效性）→ 人工审核 → 合并或要求修改
```

常见驳回原因：

- 源仓库链接失效或不可访问
- 源仓库缺少 `README.md`
- 描述过长或信息不完整
- 重复收录

如有问题，请在 Issues 中反馈。

---

<div align="center">

由 SJMCL 社区维护

</div>

---

## 目录

- [示例入口（建议先看）](#示例入口建议先看)
- [提交流程](#提交流程)
- [命名规范](#命名规范)
- [插件 README 模板](#插件-readme-模板)
- [提交检查清单](#提交检查清单)
- [审核流程](#审核流程)

---

## 示例入口（建议先看）

建议先从最小示例开始，再提交你的插件索引：

- 示例索引页：[plugins/org.sjmcl.clock/README.md](plugins/org.sjmcl.clock/README.md)
- 清单文件：[org.sjmcl.clock/sjmcl.ext.json](org.sjmcl.clock/sjmcl.ext.json)
- 前端入口：[org.sjmcl.clock/frontend/index.js](org.sjmcl.clock/frontend/index.js)

该示例覆盖最基础流程：初始化、状态更新、资源清理。

---

## 插件清单与打包格式示例

以下示例来自当前仓库中的 [org.sjmcl.clock](org.sjmcl.clock)：

```text
org.sjmcl.clock/
├── sjmcl.ext.json
├── icon.png
└── frontend/
		└── index.js
```

### 清单文件（sjmcl.ext.json）关键字段

```json
{
	"identifier": "org.sjmcl.clock",
	"name": "Clock",
	"description": "A simple live clock for launch dock testing.",
	"frontend": {
		"entry": "frontend/index.js"
	},
	"minimalLauncherVersion": "0.8.0"
}
```

字段说明：

- identifier：插件唯一标识（建议使用反向域名风格）
- name：展示名称
- description：简洁功能说明
- frontend.entry：前端入口路径
- minimalLauncherVersion：最低支持的启动器版本

### 前端入口（frontend/index.js）示例特征

- 使用 window.registerExtension(factory, token) 完成注册
- 通过 api.React 与 api.ChakraUI 渲染 UI
- 使用 host.state.useExtensionState 保存状态
- 使用 actions.logger 输出插件运行日志

---

## 提交流程

1. Fork 并克隆仓库。

2. 在 `plugins/` 下创建插件目录（kebab-case）。

3. 在 `plugins/your-plugin-name/` 中创建 `README.md`，按下方模板填写。

4. 在主页面 `README.md` 的对应分类表格中添加一行索引。

```markdown
| **[插件名](plugins/your-plugin-name/)** | 一句话描述 | [@author](https://github.com/author) | 123 |
```

5. 提交并发起 Pull Request。

---

## 命名规范

插件目录名称必须使用 kebab-case。

| 规则 | 正确示例 | 错误示例 |
|------|----------|----------|
| 全小写或反向域名风格 | `org.sjmcl.clock` | `Org.SJMCL.Clock` |
| 单词使用 `-` 分隔 | `ai-code-review` | `ai_code_review` |
| 仅英文字符、数字、连字符 | `tool-v2` | `工具-v2` |
| 不以数字开头 | `docker-manager` | `2tool` |

建议目录名与插件仓库名或核心能力保持一致。

---

## 插件 README 模板

将以下模板复制到 `plugins/your-plugin-name/README.md`：

````markdown
# 插件中文名 / Plugin English Name

> 一句话简介。

[![Version](https://img.shields.io/badge/version-1.0.0-blue?style=flat-square)](https://github.com/owner/repo/releases)
[![License](https://img.shields.io/badge/license-MIT-green?style=flat-square)](https://github.com/owner/repo/blob/main/LICENSE)
[![Stars](https://img.shields.io/github/stars/owner/repo?style=flat-square)](https://github.com/owner/repo)

## 基本信息

| 字段 | 内容 |
|------|------|
| 插件名称 | 插件中文名 |
| 源仓库 | https://github.com/owner/repo |
| 作者 | [@author](https://github.com/author) |
| 分类 | Integrations / UI / Code Quality / Productivity / AI / Debug / Others |
| 最低版本要求 | SJMCL Extension >= x.x.x |
| 最后更新 | YYYY-MM-DD |

## 功能特性

- 特性一：价值描述
- 特性二：价值描述
- 特性三：价值描述

## 安装方式
从本仓库下载插件压缩包，并在SJMCL插件设置页打开

## 配置项

| 配置项 | 类型 | 默认值 | 描述 |
|--------|------|--------|------|
| `enabled` | `boolean` | `true` | 是否启用 |

## 反馈

- Issues: https://github.com/owner/repo/issues

## 许可证

[MIT License](https://github.com/owner/repo/blob/main/LICENSE)

## 作者

GitHub: [@author](https://github.com/author)
````

---

## 提交检查清单

### 文件结构

- [ ] 已创建 `plugins/your-plugin-name/README.md`
- [ ] 未提交插件源码到本仓库

### 内容完整性

- [ ] README 包含基本信息、功能特性、安装方式、使用示例
- [ ] 插件源仓库链接可访问
- [ ] 模板占位符已替换

### 主页面索引

- [ ] 已在 `README.md` 对应分类加入条目
- [ ] 链接使用相对路径 `plugins/your-plugin-name/`

### 质量要求

- [ ] 插件真实可用
- [ ] 插件与 SJMCL Extension 有明确关联
- [ ] 不违反相关开源许可证

---

## 审核流程

```text
PR 提交
-> 自动检查（结构与链接）
-> 人工审核（内容与分类）
-> 合并或要求修改
```

常见驳回原因：

- 链接失效或仓库不可访问
- README 信息不完整
- 命名不符合规范
- 重复收录

如有问题，请在仓库 Issues 中反馈。

---

Made by SJMCL Team
