---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Incomplete Class
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Incomplete Class
breadcrumbText: Incomplete Class
description: Dynamsoft Document Viewer Documentation API Reference Incomplete Class Page
permalink: /api/class/annotation/incomplete.html
---

# Incomplete Class

This type of annotation may not be supported by Dynamsoft Document Viewer so far.

## API Index

| API Name               | Description                                                 |
| ---------------------- | ----------------------------------------------------------- |
| [`uid`](#uid)              | Return the uid of the annotation.                           |
| [`pageUid`](#pageuid)          | Return the uid of the page where the annotation is located. |
| [`creationDate`](#creationdate)     | Return the creation date of the annotation.                 |
| [`raw`](#raw) | Return the raw data of the annotation.             |


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

{% comment %}
- It will return `''`, if the annotation is be deleted. 
{% endcomment %}

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

## raw

Return the raw data of the annotation.

**Syntax**

```typescript
readonly raw: any;
```
