# File Structure

When you download **MyTheme**, you will receive a `.zip` package that includes all necessary files.  
Below is the structure and explanation of each folder.

            mytheme/
                ├── mytheme.zip # Installable WordPress theme
                ├── child-theme/ # Child theme for safe customization
                ├── demo-data/ # Demo import files
                ├── documentation/ # Documentation (this guide)
                └── license.txt # Theme license
                （此处可添加文件夹结构截图）  
![主题文件结构](../.vuepress/public/getting-started/file-structure.png)

## Explanation

- **mytheme.zip** – The main theme file. Upload this in WordPress to install the theme.  
- **child-theme/** – A pre-configured child theme that allows you to safely customize code without affecting updates.  
- **demo-data/** – Contains XML/WIE files for demo content import (optional).  
- **documentation/** – Offline version of this documentation.  
- **license.txt** – License and terms of use.  

（此处可添加代码截图）  
![functions.php 示例](../.vuepress/public/getting-started/functions-code.png)
> We recommend always using the **child theme** when making custom code modifications.
