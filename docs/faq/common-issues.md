# Common Issues

Below are the most frequently reported issues by merchants and their respective solutions.

---

## 1. Theme Not Displaying Correctly After Installation

**Possible Causes**
- Cached browser or CDN content.
- Theme files not fully uploaded.

**Solution**
- Clear browser cache and refresh the page.  
- Re-upload the latest theme version to Shopify.  
- Disable browser extensions that may block scripts (like ad blockers).

---

## 2. Fonts or Icons Not Showing

**Possible Causes**
- Incorrect font URL or missing asset reference.  
- External CDN (Google Fonts) being blocked by browser settings.

**Solution**
- Check the `theme.liquid` file for proper font imports.  
- Verify all assets exist in the `/assets` directory.  
- If using self-hosted fonts, ensure they are in WOFF or WOFF2 format.

---

## 3. Product Images Look Blurry

**Possible Causes**
- Low-resolution source images.  
- Improper image scaling in sections.

**Solution**
- Upload higher-resolution product images (minimum 2048px on the longest side).  
- Ensure you’re using Shopify’s built-in `| img_url:` filters.  
- Avoid stretching images using CSS width/height.

---

## 4. Changes Not Appearing in Theme Editor

**Possible Causes**
- Browser cache.  
- Incorrectly saved settings.  
- JavaScript errors in custom code.

**Solution**
- Click **“Save”** in the Theme Editor after every modification.  
- Refresh or open the editor in a private/incognito window.  
- Check browser console for JavaScript errors (press F12 → Console).

---

## 5. Missing Translations

**Possible Causes**
- `locales` folder missing certain language JSON files.  
- Newly added sections not yet localized.

**Solution**
- Duplicate the default locale file (e.g., `en.default.json`) and translate missing keys.  
- Ensure JSON syntax is valid using an online validator.  
- Re-upload translated files under the `locales` directory.

---

## 6. Slow Page Load

**Possible Causes**
- Too many apps injecting external scripts.  
- Oversized images or videos.

**Solution**
- Disable unused apps and scripts.  
- Optimize images using Shopify’s CDN and `lazyload`.  
- Review the [Optimization → Speed Tips](../optimization/speed-tips.md) guide.
