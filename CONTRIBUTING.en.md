# Contributing Guide

Languages: English · [简体中文](CONTRIBUTING.md) · [繁體中文](CONTRIBUTING.zh-Hans.md)

Thank you for contributing to awesome-SJMCL-extensions!

This repository is a plain link list: no plugin source code is hosted here. We only collect links to plugin repositories and a one-line description.

---

## Contents

- [Plugin Repository Requirements](#plugin-repository-requirements)
- [Entry Format](#entry-format)
- [Submission Flow](#submission-flow)
- [Acceptance Criteria](#acceptance-criteria)
- [Submission Checklist](#submission-checklist)
- [Review Process](#review-process)

---

## Plugin Repository Requirements

Before submitting to this list, your plugin repository must contain:

- `README.md` — plugin introduction, features, and usage

That is the only hard requirement. Format and structure are up to the plugin author.

You can refer to [org.sjmcl.clock/](org.sjmcl.clock/) as a reference example for plugin manifest and frontend entry format.

---

## Entry Format

Add one line to the correct category in `README.md`:

```markdown
- **[Plugin Name](https://github.com/your/repo)** — One-line description.
```

Example:

```markdown
- **[Clock](https://github.com/example/sjmcl-clock)** — Displays a live clock in the launcher UI.
```

---

## Submission Flow

1. Fork this repository and create a new branch.
2. Add one entry line to the correct category in `README.md`, `README.en.md`, and `README.zh-Hans.md`.
3. Open a Pull Request with a brief title describing the plugin.

> No other files need to be added to this repository.

---

## Acceptance Criteria

- Plugin has a clear relationship with the SJMCL ecosystem
- Plugin source repository is publicly accessible
- Plugin source repository contains a `README.md`
- Plugin is real and usable (not an empty or placeholder repo)
- No open-source license violations
- Not a duplicate of an existing entry

---

## Submission Checklist

- [ ] Entry added to all three language README files
- [ ] Link points to the plugin's source repository (not a subdirectory of this repo)
- [ ] Plugin source repository contains `README.md`
- [ ] Description is concise (one sentence)
- [ ] All template placeholders replaced

---

## Review Process

```
PR submitted → automated checks (link validity) → manual review → merged or changes requested
```

Common rejection reasons:

- Source repository link is broken or inaccessible
- Source repository missing `README.md`
- Description is too long or unclear
- Duplicate submission

If you have questions, open an issue in this repository.

---

<div align="center">

Maintained by the SJMCL community

</div>

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
