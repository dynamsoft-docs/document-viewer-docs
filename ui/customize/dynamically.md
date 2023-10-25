


# Update UI dynamically after creating the viewer

Sometimes, there are requirements that require dynamically changing the layout, such as hiding specified elements or modifying the available status of elements under certain conditions. `getUiConfig()` and `updateUiConfig()` can achieve these requirements.

For example, 

- **Step one**: Get current UiConfig by using method [`getUiConfig()`]().
    ```typescript
    const editViewer = new DDV.EditViewer({
        containerId: "viewer",
    });
    const uiConfig = editViewer.getUiConfig();
    ```
- **Step two**: Reverse two elements in its children.
    ```typescript
    uiConfig.children.reverse();
    ```
- **Step three**: Update the revised UiConfig by using method [`updateUiConfig()`]().
    ```typescript
    editViewer.updateUiConfig(uiConfig);
    ```