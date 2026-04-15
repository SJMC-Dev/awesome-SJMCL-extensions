# 貢獻指南

語言版本: [English](CONTRIBUTING.en.md) · [简体中文](CONTRIBUTING.md) · 繁體中文

感謝你為 awesome-SJMCL-extensions 做出貢獻！

本倉庫是一個純連結列表：不託管外掛原始碼，只收錄指向外掛源倉庫的連結和一句話描述。

---

## 目錄

- [外掛倉庫要求](#外掛倉庫要求)
- [條目格式](#條目格式)
- [提交流程](#提交流程)
- [收錄要求](#收錄要求)
- [提交檢查清單](#提交檢查清單)
- [審核流程](#審核流程)

---

## 外掛倉庫要求

在提交到本列表之前，你的外掛倉庫必須包含：

- `README.md` — 外掛介紹、功能說明、使用方法

這是唯一的硬性要求。格式與結構由外掛作者自行決定。

你可以參考 [org.sjmcl.clock/](org.sjmcl.clock/) 作為外掛清單與前端入口格式的參考示例。

---

## 條目格式

在主頁 `README.md` 對應分類下新增一行：

```markdown
- **[外掛名稱](https://github.com/your/repo)** — 一句話描述。
```

示例：

```markdown
- **[Clock](https://github.com/example/sjmcl-clock)** — 在啟動器介面展示即時時鐘。
```

---

## 提交流程

1. Fork 本倉庫並建立新分支。
2. 在 `README.md`、`README.en.md`、`README.zh-Hans.md` 的對應分類中各新增一行條目。
3. 發起 Pull Request，標題簡要描述所新增的外掛。

> 無需在本倉庫中新增任何其他檔案。

---

## 收錄要求

- 外掛與 SJMCL 生態有明確關聯
- 外掛源倉庫公開可存取
- 外掛源倉庫包含 `README.md`
- 外掛真實可用（非空倉庫、非純佔位）
- 不違反相關開源授權條款
- 不重複收錄已有條目

---

## 提交檢查清單

- [ ] 已在三個語言版本的 README 中新增條目
- [ ] 條目連結指向外掛源倉庫（非本倉庫子目錄）
- [ ] 外掛源倉庫包含 `README.md`
- [ ] 描述簡潔（一句話）
- [ ] 模板佔位符已全部替換

---

## 審核流程

```
PR 提交 → 自動檢查（連結有效性）→ 人工審核 → 合併或要求修改
```

常見駁回原因：

- 源倉庫連結失效或不可存取
- 源倉庫缺少 `README.md`
- 描述過長或資訊不完整
- 重複收錄

如有問題，請在 Issues 中回饋。

---

<div align="center">

由 SJMCL 社群維護

</div>

---

## 目錄

- [示例入口（建議先看）](#示例入口建議先看)
- [提交流程](#提交流程)
- [命名規範](#命名規範)
- [外掛 README 模板](#外掛-readme-模板)
- [提交檢查清單](#提交檢查清單)
- [審核流程](#審核流程)

---

## 示例入口（建議先看）

建議先從最小示例開始，再提交你的外掛索引：

- 示例索引頁：[plugins/org.sjmcl.clock/README.zh-Hans.md](plugins/org.sjmcl.clock/README.zh-Hans.md)
- 清單檔案：[org.sjmcl.clock/sjmcl.ext.json](org.sjmcl.clock/sjmcl.ext.json)
- 前端入口：[org.sjmcl.clock/frontend/index.js](org.sjmcl.clock/frontend/index.js)

該示例涵蓋最基礎流程：初始化、狀態更新、資源清理。

---

## 外掛清單與打包格式示例

以下示例來自目前倉庫中的 [org.sjmcl.clock](org.sjmcl.clock)：

```text
org.sjmcl.clock/
├── sjmcl.ext.json
├── icon.png
└── frontend/
		└── index.js
```

### 清單檔案（sjmcl.ext.json）關鍵欄位

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

欄位說明：

- identifier：外掛唯一識別（建議使用反向網域名稱風格）
- name：顯示名稱
- description：精簡功能說明
- frontend.entry：前端入口路徑
- minimalLauncherVersion：最低支援的啟動器版本

### 前端入口（frontend/index.js）示例特徵

- 使用 window.registerExtension(factory, token) 完成註冊
- 透過 api.React 與 api.ChakraUI 渲染 UI
- 使用 host.state.useExtensionState 保存狀態
- 使用 actions.logger 輸出外掛執行日誌

---

## 提交流程

1. Fork 並複製倉庫。

2. 在 `plugins/` 下建立外掛目錄（kebab-case）。

3. 在 `plugins/your-plugin-name/` 中建立 `README.md`，依下方模板填寫。

4. 在主頁面 `README.md` 的對應分類表格中新增一行索引。

```markdown
| **[外掛名](plugins/your-plugin-name/)** | 一句話描述 | [@author](https://github.com/author) | 123 |
```

5. 提交並發起 Pull Request。

---

## 命名規範

外掛目錄名稱必須使用 kebab-case。

| 規則 | 正確示例 | 錯誤示例 |
|------|----------|----------|
| 全小寫或反向網域名稱風格 | `org.sjmcl.clock` | `Org.SJMCL.Clock` |
| 單詞使用 `-` 分隔 | `ai-code-review` | `ai_code_review` |
| 僅英文字符、數字、連字號 | `tool-v2` | `工具-v2` |
| 不以數字開頭 | `docker-manager` | `2tool` |

建議目錄名與外掛倉庫名或核心能力保持一致。

---

## 外掛 README 模板

將以下模板複製到 `plugins/your-plugin-name/README.md`：

````markdown
# 外掛中文名 / Plugin English Name

> 一句話簡介。

[![Version](https://img.shields.io/badge/version-1.0.0-blue?style=flat-square)](https://github.com/owner/repo/releases)
[![License](https://img.shields.io/badge/license-MIT-green?style=flat-square)](https://github.com/owner/repo/blob/main/LICENSE)
[![Stars](https://img.shields.io/github/stars/owner/repo?style=flat-square)](https://github.com/owner/repo)

## 基本資訊

| 欄位 | 內容 |
|------|------|
| 外掛名稱 | 外掛中文名 |
| 原始碼倉庫 | https://github.com/owner/repo |
| 作者 | [@author](https://github.com/author) |
| 分類 | Integrations / UI / Code Quality / Productivity / AI / Debug / Others |
| 最低版本要求 | SJMCL Extension >= x.x.x |
| 最後更新 | YYYY-MM-DD |

## 功能特性

- 特性一：價值描述
- 特性二：價值描述
- 特性三：價值描述

## 安裝方式
從本倉庫下載外掛壓縮包，並在 SJMCL 外掛設定頁開啟

## 配置項

| 配置項 | 類型 | 預設值 | 描述 |
|--------|------|--------|------|
| `enabled` | `boolean` | `true` | 是否啟用 |

## 回饋

- Issues: https://github.com/owner/repo/issues

## 授權條款

[MIT License](https://github.com/owner/repo/blob/main/LICENSE)

## 作者

GitHub: [@author](https://github.com/author)
````

---

## 提交檢查清單

### 檔案結構

- [ ] 已建立 `plugins/your-plugin-name/README.md`
- [ ] 未提交外掛原始碼到本倉庫

### 內容完整性

- [ ] README 包含基本資訊、功能特性、安裝方式、使用示例
- [ ] 外掛原始碼倉庫連結可存取
- [ ] 模板佔位符已替換

### 主頁面索引

- [ ] 已在 `README.md` 對應分類加入條目
- [ ] 連結使用相對路徑 `plugins/your-plugin-name/`

### 品質要求

- [ ] 外掛真實可用
- [ ] 外掛與 SJMCL Extension 有明確關聯
- [ ] 不違反相關開源授權條款

---

## 審核流程

```text
PR 提交
-> 自動檢查（結構與連結）
-> 人工審核（內容與分類）
-> 合併或要求修改
```

常見駁回原因：

- 連結失效或倉庫不可存取
- README 資訊不完整
- 命名不符合規範
- 重複收錄

如有問題，請在倉庫 Issues 中回饋。

---

Made by SJMCL Team