---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface InfoOjbect
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface InfoObject
breadcrumbText: Interface InfoObject
description: Dynamsoft Document Viewer Documentation API Reference Interface InfoObject Page
permalink: /api/interface/infoobject.html
---

# InfoObject

```typescript
interface InitInfo {}

interface LoadWasmInfo {}

interface LoadSourceInfo {
    docUid: string;
    current: number;
    total: number;
}

interface SaveSourceInfo {
    docUid: string;
    pageUids: [];
    current: number;
    total: number;
}

interface FilterInfo {
    pageUid: string;
    filterType: string;
}

interface PerspectiveInfo {
    pageUid: string;
    perspectiveQuad: Quad;
}

interface InfoDetailsMap {
    init: InitInfo;
    loadSource: LoadSourceInfo;
    save: SaveSourceInfo;
    filter: FilterInfo;
    perspective: PerspectiveInfo;
    loadWasm: LoadWasmInfo;
}

type InfoStatus =
    | "Pending"
    | "InProgress"
    | "Completed"
    | "Failed"

interface InfoObject<K extends keyof InfoDetailsMap> {
    id: number;
    type: K;
    status: InfoStatus;
    timestamp: number;
    details?: InfoDetailsMap[K];
}
```

## Attributes

### id

Numeric event identifier.

### type

Indicates the task type of the event. Must be one of the following events, in one of its possible statuses:

| Event \ Status | `Pending` | `InProgress` | `Completed` | `Failed` |
| -------------- | --------- | ------------ | ----------- | -------- |
| `init`         | ✓         |              | ✓           | ✓        |
| `loadSource`   | ✓         | ✓            | ✓           | ✓        |
| `save`         | ✓         | ✓            | ✓           | ✓        |
| `filter`       | ✓         |              | ✓           | ✓        |
| `perspective`  | ✓         |              | ✓           | ✓        |
| `loadWasm`     | ✓         |              | ✓           | ✓        |

### status

Indicates the status of the task. Can only be one of the following:

- `Pending`
- `InProgress`
- `Completed`
- `Failed`

### details

Contains additional event type-specific info.