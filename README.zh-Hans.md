<div align="center">
<img src="banner.png" alt="SJMCL" />

# SJMCL-extensions 索引庫
### SJMCL 官方擴充索引

[![SJMCL 主倉庫](https://img.shields.io/badge/SJMCL-Main%20Repo-111827?style=for-the-badge&logo=github)](https://github.com/UNIkeEN/SJMCL)
[![SJMC 官方網站](https://img.shields.io/badge/SJMC-Official%20Website-0ea5e9?style=for-the-badge)](https://mc.sjtu.cn/)
[![Ask DeepWiki](https://img.shields.io/badge/Ask-DeepWiki-20B2AA?style=for-the-badge)](https://deepwiki.com/UNIkeEN/SJMCL)
[![Stars](https://img.shields.io/github/stars/SJMC-Dev/awesome-SJMCL-extensions?style=for-the-badge&logo=github)](https://github.com/SJMC-Dev/awesome-SJMCL-extensions)
[![License](https://img.shields.io/badge/license-MIT-2ea043?style=for-the-badge)](LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen?style=for-the-badge)](CONTRIBUTING.zh-Hans.md)
[![Extension Count](https://img.shields.io/badge/plugins-1-ff8c00?style=for-the-badge)](#-外掛目錄)

**[English](README.en.md) · [简体中文](README.md) · 繁體中文**

</div>

---

## 專案介紹

> 本倉庫是 SJMCL Extension 官方外掛索引庫，採用純索引模式。  
> 不託管外掛完整原始碼，只維護外掛入口、能力說明與推薦清單。

我們希望透過統一、可檢索、可審查的索引頁面，讓開發者與使用者可以更快找到合適的外掛。

### 核心原則

- 索引優先：每個外掛只保留說明文件入口
- 原始碼外置：外掛原始碼由作者在獨立倉庫維護
- 可審查：收錄資訊結構化、可驗證、可持續維護

---

## 目錄

- [什麼是 SJMCL-extensions？](#什麼是-sjmcl-extensions)
- [外掛目錄](#外掛目錄)
- [整合類 / Integrations](#整合類--integrations)
- [UI 與介面增強 / UI Enhancements](#ui-與介面增強--ui-enhancements)
- [生產力工具 / Productivity Tools](#生產力工具--productivity-tools)
- [AI 與大模型相關 / AI & LLM](#ai-與大模型相關--ai--llm)
- [其他 / Others](#其他--others)
- [快速開始](#快速開始)
- [貢獻](#貢獻)
- [License](#license)

---

## 什麼是 SJMCL-extensions？

SJMCL-extensions 是面向 SJMCL 生態的擴充索引。一個標準條目通常具備：

- 中介資訊清單（識別符、名稱、版本相容性）
- 前端入口或功能入口
- 面向使用者的功能說明與使用文件

本倉庫只收錄索引文件層，不直接承載外掛完整實作程式碼。

---

## 外掛清單與打包格式

請查看 [CONTRIBUTING.zh-Hans.md](CONTRIBUTING.zh-Hans.md) 中的以下章節：

- 外掛清單與打包格式範例
- 清單檔案（sjmcl.ext.json）關鍵欄位
- 前端入口（frontend/index.js）示例特徵

---

## 外掛目錄

### 整合類 / Integrations

- [Clock](plugins/org.sjmcl.clock/) - 最小可執行時鐘外掛索引範例，展示清單欄位與前端入口慣例。作者：[SJMCL](https://github.com/SJMCL)。倉庫：本倉庫示例（非獨立原始碼倉庫）。Stars：1。

### UI 與介面增強 / UI Enhancements

- 暫無收錄，歡迎提交。


### 生產力工具 / Productivity Tools

- 暫無收錄，歡迎提交。

### AI 與大模型相關 / AI & LLM

- 暫無收錄，歡迎提交。

### 其他 / Others

- 暫無收錄，歡迎提交。

---

## 快速開始

1. 瀏覽上方分類列表，選擇外掛
2. 進入對應外掛索引頁（plugins/xxx/）閱讀詳細說明
3. 跳轉到外掛原始碼倉庫，依作者文件安裝與設定

---

## 貢獻

請先閱讀 [CONTRIBUTING.zh-Hans.md](CONTRIBUTING.zh-Hans.md) 並依模板提交：

1. Fork 倉庫並建立分支
2. 新增 plugins/your-plugin-name/README.md
3. 在本頁對應分類新增外掛條目
4. 發起 PR

外掛頁模板可參考：

- [plugins/org.sjmcl.clock/README.zh-Hans.md](plugins/org.sjmcl.clock/README.zh-Hans.md)

---

## License

本索引倉庫採用 [MIT License](LICENSE)。  
各外掛的開源協議以其原始碼倉庫聲明為準。

---

<div align="center">

Made by SJMCL Team

</div>