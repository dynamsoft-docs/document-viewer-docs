---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface UiConfig
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface UiConfig
breadcrumbText: Interface UiConfig
description: Dynamsoft Document Viewer Documentation API Reference Interface UiConfig Page
permalink: /api/interface/uiconfig.html
---

# `interface` UiConfig

## Syntax

```typescript
interface UiConfig {
	type: string; // DDV.Elements.Layout, DDV.Elements.Button, default elements.
	flexDirection?: string; //"column", "row", only available when type is DDV.Elements.Layout
	id?: string; //the id of dom element, default: random
	className?: string; // className of CSS
	style?: CSSStyleDeclaration; // can cover the original CSS style 
	tooltip?: string; //tooltip
	events?: Record<string, string>;
	children?: (UiConfig | string)[]; // take effect, when type is DDV.Elements.Layout
}
```

## Attributes

| Attribute       | Type                     |
| --------------- | ------------------------ |
| `type`          | `string` &brvbar; `DDV.Elements.Layout` &brvbar; `DDV.Elements.Button` &brvbar; `` |
| `flexDirection` | `string`                 |
| `id`            | `string`                 |
| `className`     | `string`                 |
| `style`         | `CSSStyleDeclaration`    |
| `tooltip`       | `string`                 |
| `events`        | `Record<string, string>` |
| `children`      | `UiConfig[]` &brvbar; `string[]` |

### type



### flexDirection


### id



### className


### style


### tooltip


### events



### children