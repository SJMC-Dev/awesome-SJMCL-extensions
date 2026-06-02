# 貢獻指南

語言版本: [English](CONTRIBUTING.en.md) · [简体中文](CONTRIBUTING.md) · 繁體中文

感謝你為 awesome-SJMCL-extensions 做出貢獻！

本倉庫不託管外掛原始碼，只收錄指向外掛源倉庫的連結。

## 目錄

- [外掛倉庫要求](#外掛倉庫要求)
- [提交流程](#提交流程)
- [收錄要求](#收錄要求)
- [提交檢查清單](#提交檢查清單)

## 外掛倉庫要求

在提交到本列表之前，你的外掛倉庫必須包含：

- `README.md` — 外掛介紹、功能說明、使用方法
- 可供存取的原始碼、已打包的外掛（Release）或下載連結

這是唯一的硬性要求。格式與結構由外掛作者自行決定。

## 提交流程

1. Fork 本倉庫並建立新分支。
2. 在 `README.md`、`README.en.md`、`README.zh-Hans.md` 的對應分類中各新增一行條目。**每個分類內部的條目請按照專案名稱的字母順序排列。**

    ```markdown
    - **[外掛名稱](https://github.com/your/repo)** — 一句話描述。
    ```

    示例：

    ```markdown
    - **[Clock](https://github.com/example/sjmcl-clock)** — 在啟動器介面展示即時時鐘。
    ```

3. 發起 Pull Request，標題簡要描述所新增的外掛。

> 無需在本倉庫中新增任何其他檔案。

## 收錄要求

- 外掛與 SJMCL 生態有明確關聯
- 外掛源倉庫公開可存取、包含 `README.md`
- 不違反相關開源授權條款
- 遵守所在地區的法律法規
- 不重複收錄已有條目

## 提交檢查清單

- [ ] 已在三個語言版本的 README 中新增條目
- [ ] 條目連結指向外掛源倉庫
- [ ] 外掛源倉庫包含 `README.md`
- [ ] 描述簡潔（一句話）

如有問題，請在 Issues 中回饋。

---

<div align="center">

由 SJMCL 社群維護

</div>
