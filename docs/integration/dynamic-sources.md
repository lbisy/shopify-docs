# Dynamic Sources

Dynamic sources allow sections and blocks in Shopify Online Store 2.0 to pull content directly from shop data — for example products, collections, articles, global settings, and metafields. Using dynamic sources makes your theme flexible and enables merchants to reuse the same section across different pages with different content.

This page explains how ESEN supports dynamic sources, how to configure and bind metafields, and best practices for reliable, maintainable templates.

---

## What are Dynamic Sources

Dynamic sources are references used in the Theme Editor to connect a section or block field to a data source rather than a static value. Common sources include:
- Product fields (title, price, featured_image)
- Collection fields (title, image, description)
- Article fields (title, author, content)
- Shop or theme settings
- Metafields created by merchants or apps

When a field is bound to a dynamic source, the displayed content changes automatically depending on the page context (for example, a product section shows the current product's data).

---

## Where to find Dynamic Sources in the Theme Editor

1. Open **Shopify Admin → Online Store → Themes → Customize**.  
2. Select a template (for example, a product template).  
3. Add or click a section or block that supports dynamic sources.  
4. Look for a small database or "dynamic" icon near text/image fields — click it to open the dynamic sources panel.  
5. Choose a data source (Product > Title, Product > Vendor, Product > Metafield, etc.).

Screenshot placeholder: ../assets/images/dynamic-sources-panel.png

---

## Metafields: the most common dynamic source

Metafields let merchants store custom data for resources such as products, collections, customers, and orders. ESEN uses metafields to support additional structured content, such as:
- Size charts (product metafield)
- Collection badges (collection metafield)
- Custom product subtitles (product metafield)
- Promo expiry dates (product or collection metafield)

### Creating Metafields
1. Go to **Shopify Admin → Settings → Custom data (Metafields)**.  
2. Select the resource type (Product, Collection, Variant, etc.).  
3. Click **Add definition**.  
4. Provide a name, namespace.key (for example `specs.size_chart`), and choose the content type (single line text, rich text, URL, file, etc.).  
5. Save the definition.

Screenshot placeholder: ../assets/images/metafield-definition.png

### Populating Metafields
1. Open a product or collection in Shopify Admin.  
2. Scroll to the **Metafields** section.  
3. Enter values for previously created metafield definitions (upload files, paste URLs, or add text).  
4. Save the resource.

Screenshot placeholder: ../assets/images/metafield-edit.png

---

## Binding Metafields and Dynamic Sources in ESEN

When you edit a section or block in the Theme Editor:
1. Click the field you want to bind (for example, a subtitle or an image).  
2. Click the dynamic sources button.  
3. Choose **Metafields** from the list and then select the appropriate namespace.key (for example `product.specs.size_chart`).  
4. The field will now render the metafield value for the resource being viewed.

Example: Bind product subtitle
- Field: Section > Product Subtitle
- Dynamic source: Product → Metafields → `product.custom.subtitle`

---

## Using Dynamic Sources with Fallbacks

Not all products/collections may have a metafield populated. For robust templates, use fallback text or conditionals where supported.

Example pattern (conceptual):
- Primary: Product.metafields.custom.subtitle
- Fallback: product.description (or a default string like "Details coming soon")



## Recommended metafield types & use cases

| Metafield type                  | Use case                                           |
|---------------------------------|----------------------------------------------------|
| `single_line_text`              | Short subtitles, SKU notes                         |
| `multi_line_text` / `rich_text` | Extended descriptions, shipping or care information|
| `url`                           | Video links, external size charts                  |
| `file_reference` / `image`      | PDF size charts, certificates, banner images       |
| `boolean`                       | Toggle features (e.g., `show_badge`)               |
| `number` / `decimal`            | Numeric values such as weight or capacity          |
| `color`                         | Theme-driven color pickers (use sparingly)         |

---

## Best practices

- Define metafields centrally under **Settings → Metafields** so merchants can populate them consistently.  
- Use clear namespace and key naming (for example `specs.size_chart`, `seo.meta_title`) to avoid collisions.  
- Provide documentation or examples (for example a "Metafields Guide") in the theme settings or README so merchants know which fields to populate.  
- Use fallback values in templates to avoid empty or broken UI when metafields are not provided.  
- Validate file and image sizes for `file_reference` or `image` types to prevent performance issues.  
- Keep frequently used metafields minimal to reduce management overhead and potential performance impact.

---

## Troubleshooting

### Dynamic source not showing in Theme Editor
- Ensure the metafield definition exists and is published.  
- Confirm the resource (product / collection / article) has the metafield populated.  
- Clear browser cache and reload the Theme Editor.  
- Verify that the target field supports dynamic sources (not all section fields do).

### Incorrect or missing data rendering
- Confirm the metafield type matches the expected format (text, URL, file, image).  
- For file or image references, ensure the file is uploaded and accessible in **Settings → Files** if using external references.  
- If using Liquid templates, check any conditional logic or filters that may modify the output.

---

## Example scenarios

### Product subtitle
1. Create metafield definition for resource `product`: key `subtitle`, type `single_line_text`.  
2. Merchant adds a subtitle value for Product A.  
3. In the Theme Editor, bind the product subtitle field to `Product → Metafields → subtitle`. The subtitle will display for that product.

### Collection promotion banner
1. Create metafield definition for resource `collection`: key `promo_banner`, type `image`.  
2. Merchant uploads a seasonal banner image to the `promo_banner` metafield for a collection.  
3. In the collection template, bind the banner field to `Collection → Metafields → promo_banner`. The collection page will render the uploaded banner.

---

## Additional notes

Dynamic sources and metafields are a powerful way to create highly dynamic templates, especially for merchants with large catalogs.

Consider providing a dedicated "Metafields Guide" page in your theme documentation that lists all supported metafields, example values, and where each metafield is used in the storefront. This helps merchants understand which fields to populate and reduces support requests.
