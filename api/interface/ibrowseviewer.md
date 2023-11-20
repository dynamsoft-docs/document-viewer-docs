---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface IBrowseViewer
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface IBrowseViewer
breadcrumbText: Interface IBrowseViewer
description: Dynamsoft Document Viewer Documentation API Reference Interface IBrowseViewer Page
permalink: /api/interface/ibrowseviewer.html
---

# IBrowseViewer



## Members

| API Name            | Description                                                  |
| ------------------- | ------------------------------------------------------------ |
| [`getStyle()`](#getstyle)            | Get the style object of `BrowseViewer`.                        |
| [`updateStyle()`](#updatestyle)        | Update the style object of `BrowseViewer`.                     |
| [`getUiConfig()`](#getuiconfig)         | Get current `UiConfig` object.                               |
| [`updateUiConfig()`](#updateuiconfig)     | Update `UiConfig` object.                                    |
| [`show()`](#show)                | Show the viewer.                                             |
| [`hide()`](#hide)                | Hide the viewer.                                             |
| [`isVisible`](#isvisible)        | Return whether the viewer is shown or hidden.      |
| [`multiselectMode`](#multiselectmode) | Specify or return whether to allow multiple pages to be selected at once. |
| [`getSelectedPageIndices()`](#getselectedpageindices) | Get indices of selected pages.                               |
| [`selectPages()`](#selectpages)            | Select pages by specified indices.                           |
| [`selectAllPages()`](#selectallpages)         | Select all pages.                                            |
| [`setRowAndColumn()`](#setrowandcolumn)        | Set rows and columns of displayed pages.                     |

## Events

Refer to [BrowseViewer-Events]({{ site.api }}class/browseviewer.html#events)