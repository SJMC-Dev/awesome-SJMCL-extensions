# Contributing Guide

中文版本: [CONTRIBUTING.md](CONTRIBUTING.md)

Thank you for contributing to the SJMCL Extension plugin ecosystem.

This repository is index-only: do not submit full plugin source code here. Only submit plugin index documentation.

---

## Contents

- [Example Entry (Read First)](#example-entry-read-first)
- [Submission Flow](#submission-flow)
- [Naming Rules](#naming-rules)
- [Plugin README Template](#plugin-readme-template)
- [Submission Checklist](#submission-checklist)
- [Review Process](#review-process)

---

## Example Entry (Read First)

Start with the minimal example before submitting your own plugin index:

- Index page: [plugins/org.sjmcl.clock/README.md](plugins/org.sjmcl.clock/README.md)
- Manifest: [org.sjmcl.clock/sjmcl.ext.json](org.sjmcl.clock/sjmcl.ext.json)
- Frontend entry: [org.sjmcl.clock/frontend/index.js](org.sjmcl.clock/frontend/index.js)

This sample covers the core flow: initialization, state update, and cleanup.

---

## Plugin Manifest and Packaging Example

The following sample is based on [org.sjmcl.clock](org.sjmcl.clock):

```text
org.sjmcl.clock/
├── sjmcl.ext.json
├── icon.png
└── frontend/
		└── index.js
```

### Key Fields in Manifest (sjmcl.ext.json)

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

Field notes:

- identifier: unique plugin id (reverse-domain style recommended)
- name: display name
- description: concise feature summary
- frontend.entry: frontend entry path
- minimalLauncherVersion: minimum compatible launcher version

### frontend/index.js Characteristics

- registers with window.registerExtension(factory, token)
- renders UI via api.React and api.ChakraUI
- stores state with host.state.useExtensionState
- outputs runtime logs with actions.logger

---

## Submission Flow

1. Fork and clone the repository.

2. Create a plugin folder under `plugins/` using kebab-case.

3. Add `plugins/your-plugin-name/README.md` and fill it using the template below.

4. Add one plugin row in the correct category table in `README.md`.

```markdown
| **[Plugin Name](plugins/your-plugin-name/)** | One-line summary | [@author](https://github.com/author) | 123 |
```

5. Commit and open a Pull Request.

---

## Naming Rules

Plugin folder names must follow kebab-case.

| Rule | Good | Bad |
|------|------|-----|
| lowercase or reverse-domain style | `org.sjmcl.clock` | `Org.SJMCL.Clock` |
| use `-` between words | `ai-code-review` | `ai_code_review` |
| only english chars, digits, hyphen | `tool-v2` | `工具-v2` |
| do not start with digit | `docker-manager` | `2tool` |

Recommended: use a folder name aligned with your plugin repository name or core capability.

---

## Plugin README Template

Use the following template for `plugins/your-plugin-name/README.md`:

````markdown
# Plugin Name (CN/EN)

> One-line summary.

[![Version](https://img.shields.io/badge/version-1.0.0-blue?style=flat-square)](https://github.com/owner/repo/releases)
[![License](https://img.shields.io/badge/license-MIT-green?style=flat-square)](https://github.com/owner/repo/blob/main/LICENSE)
[![Stars](https://img.shields.io/github/stars/owner/repo?style=flat-square)](https://github.com/owner/repo)

## Basic Information

| Field | Value |
|------|------|
| Plugin Name | Plugin Name |
| Source Repository | https://github.com/owner/repo |
| Author | [@author](https://github.com/author) |
| Category | Integrations / UI / Code Quality / Productivity / AI / Debug / Others |
| Minimum Version | SJMCL Extension >= x.x.x |
| Last Updated | YYYY-MM-DD |

## Features

- Feature one: value description
- Feature two: value description
- Feature three: value description

## Installation
Download the plugin package from this repo and open it via SJMCL plugin settings

## Configuration

| Key | Type | Default | Description |
|--------|------|--------|------|
| `enabled` | `boolean` | `true` | Enable plugin |

## Feedback

- Issues: https://github.com/owner/repo/issues

## License

[MIT License](https://github.com/owner/repo/blob/main/LICENSE)

## Author

GitHub: [@author](https://github.com/author)
````

---

## Submission Checklist

### Structure

- [ ] `plugins/your-plugin-name/README.md` is created
- [ ] No plugin source code is submitted to this repository

### Content

- [ ] README includes basic information, features, installation, and usage example
- [ ] Source repository URL is accessible
- [ ] Template placeholders are replaced

### Index Update

- [ ] One row is added to the correct category in `README.md`
- [ ] Relative path `plugins/your-plugin-name/` is used

### Quality

- [ ] Plugin is real and usable
- [ ] Plugin has clear relationship with SJMCL Extension
- [ ] No open-source license violations

---

## Review Process

```text
PR submitted
-> automated checks (structure and links)
-> manual review (content and category)
-> merged or changes requested
```

Common rejection reasons:

- invalid link or inaccessible repository
- incomplete README
- naming rule violation
- duplicate submission

If you need help, open an issue in this repository.

---

Made by SJMCL Team
