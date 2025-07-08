---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference
keywords: Documentation, Dynamsoft Document Viewer, API Reference
breadcrumbText: API Reference
description: Dynamsoft Document Viewer Documentation API Reference Page
---

# API Reference

## Namespaces

- [`Dynamsoft.DDV`]({{ site.api }}namespace/ddv.html)
- [`Dynamsoft.DDV.Core`]({{ site.api }}namespace/ddv_core.html)
- [`Dynamsoft.DDV.Elements`]({{ site.api }}namespace/ddv_elements.html)
- [`Annotation`]({{ site.api }}namespace/ddv_annotation.html)

## Classes

- Dynamsoft.DDV
    - [DocumentManager]({{ site.api }}class/documentmanager.html)
    - [EditViewer]({{ site.api }}class/editviewer.html)
    - [CaptureViewer]({{ site.api }}class/captureviewer.html)
    - [PerspectiveViewer]({{ site.api }}class/perspectiveviewer.html)
    - [BrowseViewer]({{ site.api }}class/browseviewer.html)
    - [CustomViewer]({{ site.api }}class/customviewer.html)
    - Advanced
        - [ImageFilter]({{ site.api }}class/advanced/imagefilter.html)
        - [DocumentDetect]({{ site.api }}class/advanced/documentdetect.html)

- Annotation
    - [Rectangle]({{ site.api }}class/annotation/rectangle.html)
    - [Ellipse]({{ site.api }}class/annotation/ellipse.html)
    - [Polygon]({{ site.api }}class/annotation/polygon.html)
    - [Polyline]({{ site.api }}class/annotation/polyline.html)
    - [Line]({{ site.api }}class/annotation/line.html)
    - [Ink]({{ site.api }}class/annotation/ink.html)
    - [TextBox]({{ site.api }}class/annotation/textbox.html)
    - [TextTypewriter]({{ site.api }}class/annotation/texttypewriter.html)
    - [Stamp]({{ site.api }}class/annotation/stamp.html) 
    - [Incomplete]({{ site.api }}class/annotation/incomplete.html)
    - [Unknown]({{ site.api }}class/annotation/unknown.html) 


## Interfaces

- [`IDocument`]({{ site.api }}interface/idocument/index.html)
    - [`Source`]({{ site.api }}interface/idocument/source.html)
    - [`ExtraPageData`]({{ site.api }}interface/idocument/extrapagedata.html)
    - [`PdfSource`]({{ site.api }}interface/idocument/pdfsource.html)
    - [`PageData`]({{ site.api }}interface/idocument/pagedata.html)
    - [`UpdatePageOptions`]({{ site.api }}interface/idocument/updatepageoptions.html)
    - [`SavePngSettings`]({{ site.api }}interface/idocument/savepngsettings.html)
    - [`SaveJpegSettings`]({{ site.api }}interface/idocument/savejpegsettings.html)
    - [`SaveTiffSettings`]({{ site.api }}interface/idocument/savetiffsettings.html)
    - [`SavePdfSettings`]({{ site.api }}interface/idocument/savepdfsettings.html)
    - [`CustomTag`]({{ site.api }}interface/idocument/customtag.html)
    - [`PrintSettings`]({{ site.api }}interface/idocument/printsettings.html)

- Style Interfaces

    | Style Name           | Style Interface                                              |
    | -------------------- | ------------------------------------------------------------ |
    | `pageStyle`          | [`BaseStyle`]({{ site.api }}interface/styleinterface/basestyle.html) |
    | `currentPageStyle`     | [`BaseStyle`]({{ site.api }}interface/styleinterface/basestyle.html) |
    | `selectedPageStyle`    | [`BaseStyle`]({{ site.api }}interface/styleinterface/basestyle.html) |
    | `hoveredPageStyle`     | [`BaseStyle`]({{ site.api }}interface/styleinterface/basestyle.html) |
    | `placeholderStyle`     | [`BaseStyle`]({{ site.api }}interface/styleinterface/basestyle.html) |
    | `pageNumberStyle`      | [`PageNumberStyle`]({{ site.api }}interface/styleinterface/pagenumberstyle.html) |
    | `checkboxStyle`        | [`CheckboxStyle`]({{ site.api }}interface/styleinterface/checkboxstyle.html) |
    | `canvasStyle`        | [`CanvasStyle`]({{ site.api }}interface/styleinterface/canvasstyle.html) |
    | `quadSelectionStyle` | [`QuadSelectionStyle`]({{ site.api }}interface/styleinterface/quadselectionstyle.html) |
    | `annotationSelectionStyle`| [`AnnotationSelectionStyle`]({{ site.api }}interface/styleinterface/annotationselectionstyle.html) |

- Annotation Interfaces
    - [`RectAnnotationOptions`]({{ site.api }}interface/annotationinterface/rectannotationoptions.html)
    - [`EllipseAnnotationOptions`]({{ site.api }}interface/annotationinterface/ellipseannotationoptions.html)
    - [`PolygonAnnotationOptions`]({{ site.api }}interface/annotationinterface/polygonannotationoptions.html)
    - [`PolylineAnnotationOptions`]({{ site.api }}interface/annotationinterface/polylineannotationoptions.html)
    - [`LineAnnotationOptions`]({{ site.api }}interface/annotationinterface/lineannotationoptions.html)
    - [`InkAnnotationOptions`]({{ site.api }}interface/annotationinterface/inkannotationoptions.html)
    - [`TextBoxAnnotationOptions`]({{ site.api }}interface/annotationinterface/textboxannotationoptions.html)
    - [`TextTypewriterAnnotationOptions`]({{ site.api }}interface/annotationinterface/texttypewriterannotationoptions.html)
    - [`StampAnnotationOptions`]({{ site.api }}interface/annotationinterface/stampannotationoptions.html)
    - [`Flags`]({{ site.api }}interface/annotationinterface/flags.html)
    - [`Point`]({{ site.api }}interface/annotationinterface/point.html)
    - [`TextContent`]({{ site.api }}interface/annotationinterface/textcontent.html)
    - [`RectangleStyle`]({{ site.api }}interface/annotationinterface/rectanglestyle.html)
    - [`EllipseStyle`]({{ site.api }}interface/annotationinterface/ellipsestyle.html)
    - [`PolygonStyle`]({{ site.api }}interface/annotationinterface/polygonstyle.html)
    - [`PolylineStyle`]({{ site.api }}interface/annotationinterface/polylinestyle.html)
    - [`LineStyle`]({{ site.api }}interface/annotationinterface/linestyle.html)
    - [`InkStyle`]({{ site.api }}interface/annotationinterface/inkstyle.html)
    - [`TextBoxStyle`]({{ site.api }}interface/annotationinterface/textboxstyle.html)
    - [`TextTypewriterStyle`]({{ site.api }}interface/annotationinterface/texttypewriterstyle.html)
    - [`StampStyle`]({{ site.api }}interface/annotationinterface/stampstyle.html)
    - [`ToolbarConfig`]({{ site.api }}interface/annotationinterface/toolbarconfig.html)
    - [`PaletteConfig`]({{ site.api }}interface/annotationinterface/paletteconfig.html)
    - [`AnnotationToolbarButton`]({{ site.api }}interface/annotationinterface/annotationtoolbarbutton.html)

- [`ConfigResult`]({{ site.api }}interface/configresult.html)
- [`CreateDocumentOptions`]({{ site.api }}interface/createdocumentoptions.html)
- [`MergeDocumentOptions`]({{ site.api }}interface/mergedocumentoptions.html)
- [`TransferOptions`]({{ site.api }}interface/transferoptions.html)
- [`EditViewerConstructorOptions`]({{ site.api }}interface/editviewerconstructoroptions.html)
- [`EditViewerConfig`]({{ site.api }}interface/editviewerconfig.html)
- [`ThumbnailConfig`]({{ site.api }}interface/thumbnailconfig.html)
- [`AnnotationConfig`]({{ site.api }}interface/annotationconfig.html)
- [`IBrowseViewer`]({{ site.api }}interface/ibrowseviewer.html)
- [`Rect`]({{ site.api }}interface/rect.html)
- [`ZoomOrigin`]({{ site.api }}interface/zoomorigin.html)
- [`CaptureViewerConstructorOptions`]({{ site.api }}interface/captureviewerconstructoroptions.html)
- [`CaptureViewerConfig`]({{ site.api }}interface/captureviewerconfig.html)
- [`VideoDeviceInfo`]({{ site.api }}interface/videodeviceinfo.html)
- [`PlayCallbackInfo`]({{ site.api }}interface/playcallbackinfo.html)
- [`VideoConfig`]({{ site.api }}interface/videoconfig.html)
- [`PerspectiveViewerConstructorOptions`]({{ site.api }}interface/perspectiveviewerconstructoroptions.html)
- [`PerspectiveViewerConfig`]({{ site.api }}interface/perspectiveviewerconfig.html)
- [`BrowseViewerConstructorOptions`]({{ site.api }}interface/browseviewerconstructoroptions.html)
- [`BrowseViewerConfig`]({{ site.api }}interface/browseviewerconfig.html)
- [`CustomViewerConstructorOptions`]({{ site.api }}interface/customviewerconstructoroptions.html)
- [`Tooltip`]({{ site.api }}interface/tooltip.html)
- [`DisplayTextConfig`]({{ site.api }}interface/displaytextconfig.html)
- [`UiConfig`]({{ site.api }}interface/uiconfig.html)
- [`DDVError`]({{ site.api }}interface/ddverror.html)
- [`VError`]({{ site.api }}interface/verror.html)
- [`VImageData`]({{ site.api }}interface/vimagedata.html)
- [`IImageFilter`]({{ site.api }}interface/iimagefilter.html)
- [`ImageFilterItem`]({{ site.api }}interface/imagefilteritem.html)
- [`IDocumentDetect`]({{ site.api }}interface/idocumentdetect.html)
- [`DetectResult`]({{ site.api }}interface/detectresult.html)
- [`DocumentDetectConfig`]({{ site.api }}interface/documentdetectconfig.html)
- [`DocumentDetectResult`]({{ site.api }}interface/documentdetectresult.html)
- [`DefaultUiConfigOptions`]({{ site.api }}interface/defaultuiconfigoptions.html)

## Enumeration & Type

- [`EnumPdfPageType`]({{ site.api }}enumeration-type/enumpdfpagetype.html)
- [`EnumPdfCompressionType`]({{ site.api }}enumeration-type/enumpdfcompressiontype.html)
- [`EnumTiffCompressionType`]({{ site.api }}enumeration-type/enumtiffcompressiontype.html)
- [`EnumConvertMode`]({{ site.api }}enumeration-type/enumconvertmode.html)
- [`EnumAnnotationRenderMode`]({{ site.api }}enumeration-type/enumannotationrendermode.html)
- [`EnumImageDataType`]({{ site.api }}enumeration-type/enumimagedatatype.html)
- [`EnumImageFilterType`]({{ site.api }}enumeration-type/enumimagefiltertype.html)
- [`EnumDocumentDetectionStatus`]({{ site.api }}enumeration-type/enumdocumentdetectionstatus.html)
- [`EnumStampIcon`]({{ site.api }}enumeration-type/enumstampicon.html)
- [`EnumLineEnding`]({{ site.api }}enumeration-type/enumlineending.html)
- [`type Quad`]({{ site.api }}enumeration-type/quad.html)

## Error

- [Error List]({{ site.api }}errorlist.html)