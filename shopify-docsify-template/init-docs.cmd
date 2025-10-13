:: 创建 docs 根目录
mkdir docs
cd docs

:: 创建根文件
echo # MyTheme Documentation > README.md
echo > _sidebar.md

:: Getting Started
mkdir getting-started
echo # Getting Started > getting-started\README.md
echo > getting-started\requirements.md
echo > getting-started\installation.md
echo > getting-started\quick-start.md
echo > getting-started\theme-structure.md

:: Theme Setup
mkdir theme-setup
echo # Theme Setup > theme-setup\README.md
echo > theme-setup\general-settings.md
echo > theme-setup\colors.md
echo > theme-setup\typography.md
echo > theme-setup\header.md
echo > theme-setup\footer.md
echo > theme-setup\buttons-forms.md
echo > theme-setup\social-favicon.md

:: Sections
mkdir sections
echo # Sections > sections\README.md
echo > sections\homepage.md
echo > sections\collection.md
echo > sections\product.md
echo > sections\blog-article.md
echo > sections\cart-checkout.md
echo > sections\common-sections.md

:: Integration
mkdir integration
echo # Integration > integration\README.md
echo > integration\navigation-menus.md
echo > integration\shopify-settings.md
echo > integration\apps-integration.md

:: Customization
mkdir customization
echo # Customization > customization\README.md
echo > customization\custom-css.md
echo > customization\custom-js.md
echo > customization\translation.md

:: Advanced
mkdir advanced
echo # Advanced > advanced\README.md
echo > advanced\metafields.md
echo > advanced\dynamic-sources.md
echo > advanced\json-templates.md

:: Optimization
mkdir optimization
echo # Optimization > optimization\README.md
echo > optimization\performance.md
echo > optimization\seo.md
echo > optimization\accessibility.md

:: FAQ
mkdir faq
echo # FAQ > faq\README.md
echo > faq\common-issues.md
echo > faq\troubleshooting.md

:: Updates & Support
mkdir updates-support
echo # Updates & Support > updates-support\README.md
echo > updates-support\updates.md
echo > updates-support\support.md

cd ..
