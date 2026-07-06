# Theme Structure

Understanding ESEN’s file and section structure helps you make safe customizations.

---

##  Folder Overview

/sections → JSON templates for pages
/snippets → Reusable UI components
/assets → CSS, JS, images
/config → Theme settings and presets
/templates → Layouts for pages (home, product, etc.)
/locales → Translation files

 *(Screenshot placeholder: “theme-file-structure.png”)*

---

##  Section Components

Each **section** file controls a customizable block on your page.  
Example: `sections/hero-banner.liquid` defines the top banner of your homepage.

---

##  JSON Templates

Shopify 2.0 introduced `.json` templates to define section order and layout per page.  
For example:

```json
{
  "sections": {
    "main": { "type": "hero-banner" },
    "products": { "type": "featured-collection" }
  }
}
