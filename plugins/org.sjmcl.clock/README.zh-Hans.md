# org.sjmcl.clock

語言版本: [简体中文](README.md) · 繁體中文

最小可執行示例外掛索引頁。

## 基本資訊

- 名稱: Clock
- 倉庫位址: 
- 識別符: org.sjmcl.clock
- 清單檔案: ../../org.sjmcl.clock/sjmcl.ext.json
- 前端入口: ../../org.sjmcl.clock/frontend/index.js

## 最小可執行路徑

1. 讀取 `sjmcl.ext.json`，確認 `frontend.entry` 指向 `frontend/index.js`。
2. 載入 `frontend/index.js` 並完成 `window.registerExtension` 註冊。
3. 觀察介面每秒刷新與日誌輸出，確認初始化、更新、清理流程正常。

## 結構說明

該示例只展示最小結構：

- `sjmcl.ext.json`
- `frontend/index.js`

本頁面僅為索引說明，不包含完整外掛原始碼。