---
layout: default-layout
needAutoGenerateSidebar: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - EditViewer Class
keywords: Documentation, Dynamsoft Document Viewer, API Reference, EditViewer Class
breadcrumbText: EditViewer Class
description: Dynamsoft Document Viewer Documentation API Reference EditViewer Class Page
permalink: /api/edit_viewer.html
---

# EditViewer Class

## API Index

### Create and Destroy Instances



## EditViewer()

Default constructor of an `EditViewer` object. 

**Syntax**

```typescript
new DDV.EditViewer(options?: EditViewerConstructorOptions);
```

**Example**

```typescript
const editViewer = new DDV.EditViewer({
    container: document.getElementById("viewer")
});
```

**Exception**

 Error Code          | Value  | Description                                         
---------------------|--------|-----------------------------------------------------
 PARAM_INVALID       | -80100 | XXX(ClassName.API): XXX(Parameter Name) is invaild. 
 LIC_NOLICENSE       | -80000 | No license.                                             
 LIC_INVALID         | -80001 | License string is invalid.                              
 LIC_EXPIRED         | -80002 | License has expired.                                    
 LIC_MISSCORE        | -80003 | Core license is missing.                                
 LIC_MISSMODULE      | -80004 | XXX module license is missing.                          
 LIC_VERNOTMATCHED   | -80005 | Version does not match.                                 
 LIC_DOMAINNOTMATCHED| -80006 | Domain does not match the domain bound to the license.  
 INIT_SHOULDSETCONFIG| -80050 | DDV.setConfig has not been set up yet.  
 INIT_CONFIGNOTDONE  | -80051 | DDV.setConfig has not been completed.   
 MINZOOM_INVALID     | -80302 | minZoom value cannot be larger than maxZoom value.                        

**Remark**

A `thumbnail` object will be created at the same time. Please refer to [thumbnail](/thumbnail.md).

**See Also**

[EditViewerConstructorOptions](#editviewerconstructoroptions).


## destroy()

Destroy the `EditViewer` object.

**Syntax**

```typescript
destroy(): void;
```

**Example**

```typescript
editViewer.destroy();
```

**Remark**

The editing operations in pages will be saved to document automatically when destroy the viewer object.

**See Also**

[saveOperations](#saveoperations)
