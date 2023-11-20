---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface BrowseViewerConfig
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface BrowseViewerConfig
breadcrumbText: Interface BrowseViewerConfig
description: Dynamsoft Document Viewer Documentation API Reference Interface BrowseViewerConfig Page
permalink: /api/interface/browseviewerconfig.html
---

# BrowseViewerConfig

## Syntax

```typescript
interface BrowseViewerConfig {
    canvasStyle?: CanvasStyle;
    pageStyle?: BaseStyle;
    currentPageStyle?: BaseStyle; // only border effective
    selectedPageStyle?: BaseStyle;
    hoveredPageStyle?: BaseStyle;
    placeholderStyle?: BaseStyle;
    pageNumberStyle?: PageNumberStyle;
    checkboxStyle?: CheckboxStyle;
    rows?: number; //The number of rows
    columns?: number; //The number of columns
    multiselectMode?: boolean; //Whether can select multiple pages at one time
    scrollToLatest?: boolean; // Auto set the latest loaded page as the current page
    enableDragPage?: boolean; // Whether to allow drag&drop pages
    scrollDirection?: string; // The scroll direction, supports "horizontal", "vertical"
}
```
