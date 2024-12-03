---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface
breadcrumbText: Interface IBrowseViewer
description: Dynamsoft Document Viewer Documentation API Reference Interface Index Page
permalink: /api/interface/index.html
---

# DDV Interfaces

- [`IDocument`]({{ site.api }}interface/idocument/index.html)
    - [`Source`]({{ site.api }}interface/idocument/source.html)
    - [`ExtraPageData`]({{ site.api }}interface/idocument/extrapagedata.html)
    - [`PdfSource`]({{ site.api }}interface/idocument/pdfsource.html)
    - [`PageData`]({{ site.api }}interface/idocument/pagedata.html)
    - [`UpdatePageOptions`]({{ site.api }}interface/idocument/updatepageoptions.html)
    - [`SaveJpegSettings`]({{ site.api }}interface/idocument/savejpegsettings.html)
    - [`SaveTiffSettings`]({{ site.api }}interface/idocument/savetiffsettings.html)
    - [`SavePdfSettings`]({{ site.api }}interface/idocument/savepdfsettings.html)
    - [`CustomTag`]({{ site.api }}interface/idocument/customtag.html)
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
    - [`TextTypewriterStyle`]({{ site.api }}interface/annotationinterface/textTypewriterstyle.html)
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
