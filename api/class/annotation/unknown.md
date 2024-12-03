---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Unknown Class
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Unknown Class
breadcrumbText: Unknown Class
description: Dynamsoft Document Viewer Documentation API Reference Unknown Class Page
permalink: /api/class/annotation/unknown.html
---

# Unknown Class

This type of annotation may be cannot read by Dynamsoft Document Viewer so far.

## API Index

| API Name                                | Description                                                 |
| --------------------------------------- | ----------------------------------------------------------- |
| [`uid`](#uid)                           | Return the uid of the annotation.                           |
| [`pageUid`](#pageuid)                   | Return the uid of the page where the annotation is located. |
| [`creationDate`](#creationdate)         | Return the creation date of the annotation.                 |
| [`modificationDate`](#modificationdate) | Return the modification date of the annotation.             |

## uid

Return the uid of the annotation.

**Syntax**

```typescript
readonly uid: string;
```

{% comment %}
**Remark**

- It will return `''`, if the annotation is be deleted. 
{% endcomment %}

## pageUid

Return the uid of the page where the annotation is located.

**Syntax**

```typescript
readonly pageUid: string;
```

**Remark**

- It will return `''`, if the annotation is be deleted.


## creationDate

Return the creation date of the annotation.

**Syntax**

```typescript
readonly creationDate: string;
```

**Remark**

- The string would be `D:YYYYMMDDHHmmSSOHH'mm'`, like `D:20230101085959-08'00'`.

## modificationDate

Return the modification date of the annotation.

**Syntax**

```typescript
readonly modificationDate: string;
```

**Remark**

- The string would be `D:YYYYMMDDHHmmSSOHH'mm'`, like `D:20230101085959-08'00'`.
- It will return `''`, if the annotation is be deleted. 
- If the annotation is created but not be modified after adding, it equals to [`creationDate`](#creationdate). 

{% comment %}

- It will return `''`, if the annotation is be deleted.
{% endcomment %}
