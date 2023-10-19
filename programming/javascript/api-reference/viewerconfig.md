---
layout: default-layout
title: Dynamsoft Document Viewer - ViewerConfig
keywords: Dynamsoft Document Viewer, ViewerConfig
breadcrumbText: ViewerConfig
description: Dynamsoft Document Viewer - ViewerConfig
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
---




# ViewerConfig

```typescript
export interface ViewerConfig {
	viewerStyle?: PageStyle;
	canvasStyle?: CanvasStyle;
	pageStyle?: PageStyle;
	selectedPageStyle?: PageStyle;
	hoveredPageStyle?: PageStyle;
	placeholderStyle?: PageStyle;
	pageNumberStyle?: PageNumberStyle;
	checkboxStyle?: CheckboxStyle;
	removeBtnStyle?: CheckboxStyle;
	cropBoxStyle: CropBoxStyle;  // required?
	enableDragPage?: boolean;
	enableKeyboardControl?: boolean;
	enableOptimizeImage?: boolean;
	zoom?: number;
	minZoom?: number;
	maxZoom?: number;
	enableZoom?: boolean;
	zoomInDelta?: number;
	zoomOutDelta?: number;
	wheelZoomDelta?: number;
	zoomOrigin?: ZoomOrigin;
	enableScrollX?: boolean;
	enableScrollY?: boolean;
	scrollDirection?: Direction;
	keepZoom?: boolean;
	displayMode?: DisplayMode;
	toolType?: ToolType;
	fitType?: FitType;
	enableSlide?: boolean;
	show?: boolean;
	rows?: number;
	columns?: number;
	margin?: number | string;
	gap?: number | string;
	/** Auto scroll to the current page while changing the current index. */
	autoScroll?: boolean;
	/** Auto change index while changing scroll value. */
	autoChangeIndex?: boolean;
	enableSelectWithShift?: boolean;
	enableSelectWithCtrl?: boolean;
	enableZoomWithCtrl?: boolean;
	blankFillColor?: string;
	dragThreshold?: number;
	slideThreshold?: number;
	maxOptimizationSize?: number;
	multiselectMode?: boolean;
	viewerMode: string;
	tabMode?: TabMode;
	/** Auto set the latest loaded page as the current page. */
	autoSelectLatest?: boolean;
}
```

## Attributes

 Attribute             | Type             | Description 
-----------------------|------------------|------------------
 viewerStyle           | [PageStyle]()        |             
 canvasStyle           | CanvasStyle      |             
 pageStyle             | PageStyle        |             
 selectedPageStyle     | PageStyle        |             
 hoveredPageStyle      | PageStyle        |             
 placeholderStyle      | PageStyle        |             
 pageNumberStyle       | PageNumberStyle  |             
 checkboxStyle         | CheckboxStyle    |             
 removeBtnStyle        | CheckboxStyle    |             
 cropBoxStyle          | CropBoxStyle     |             
 enableDragPage        | boolean          |             
 enableKeyboardControl | boolean          |             
 enableOptimizeImage   | boolean          |             
 zoom                  | number           |             
 minZoom               | number           |             
 maxZoom               | number           |             
 enableZoom            | boolean          |             
 zoomInDelta           | number           |             
 zoomOutDelta          | number           |             
 wheelZoomDelta        | number           |             
 zoomOrigin            | [ZoomOrigin]()       |   
 enableScrollX         | boolean          |   
 enableScrollY         | boolean          |   
 scrollDirection       | [Direction]()    |   
 keepZoom              | boolean          |   
 displayMode           | DisplayMode      |   
 toolType              | ToolType         |   
 fitType               | FitType          |   
 enableSlide           | boolean          |   
 show                  | boolean          |   
 rows                  | number           |   
 columns               | number           |   
 margin                | number or string |   
 gap                   | number or string |   
 autoScroll            | boolean          |   
 autoChangeIndex       | boolean          |   
 enableSelectWithShift | boolean          |   
 enableSelectWithCtrl  | boolean          |   
 enableZoomWithCtrl    | boolean          |   
 blankFillColor        | string           |   
 dragThreshold         | number           |   


### BaseBoxStyle

```typescript
interface BaseBoxStyle {
	left?: number | string;
	top?: number | string;
	right?: number | string;
	bottom?: number | string;
	width?: number | string;
	height?: number | string;
	background?: string;
	borderColor?: string;
	borderRadius?: number | string;
	borderWidth?: number | string;
	translateX?: number | string;
	translateY?: number | string;
	opacity?: number;
	visibility?: string;
}
```

### PageStyle

```typescript
interface PageStyle {
	border?: string;
	background?: string;
}
```


### CanvasStyle

```typescript
interface CanvasStyle {
	border?: string;
	background?: string;
	cursor?: Cursor;
}
```

### PageNumberStyle

```typescript
interface PageNumberStyle extends BaseBoxStyle {
	color?: string;
	fontSize?: number | string;
	fontFamily?: string;
	textAlign?: CanvasTextAlign;
	textBaseline?: CanvasTextBaseline;
}
```

### CheckboxStyle

```typescript
interface CheckboxStyle extends BaseBoxStyle {
	checkMarkColor?: string;
	checkMarkLineWidth?: number | string;
	lineJoin?: CanvasLineJoin;
	lineCap?: CanvasLineCap;
}
```

### CropBoxStyle

```typescript
interface CropBoxStyle {
	keepAspectRatio?: boolean;
	keepAspectRatioEdit?: boolean;
	aspectRatio?: number;
	enableCreateBoxByPointer?: boolean;
	multipleCropping?: boolean;
	keepAspectRatioWithShift?: boolean;
	enableCursor?: boolean;
	enableMagnifier?: boolean;
	borderColor?: string;
	borderWidth?: number;
	dashLine?: [
		number,
		number
	];
	background?: string;
	ctrlBorderRadius?: number;
	ctrlBorderColor?: string;
	ctrlBorderWidth?: number;
	ctrlSize?: number;
	ctrlBackground?: string;
	invalidCtrlBorderColor?: string;
	invalidBorderColor?: string;
	magnifier?: {
		fixed?: boolean;
		size?: number;
		fixedTop?: number;
		fixedLeft?: number;
		magnification?: number;
	};
}
```

### ZoomOrigin

```typescript
interface ZoomOrigin {
	h: ZoomOriginValue;
	v: ZoomOriginValue;
}
```

