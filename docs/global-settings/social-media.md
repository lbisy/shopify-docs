# Social Media Settings

This section allows you to connect your store to social media platforms and control how links, icons, and share options appear throughout your theme.

---

## 1. Overview

Shopify themes typically include social media integration in multiple areas, such as:
- **Header or Footer** — for profile links (e.g., Facebook, Instagram, X/Twitter)
- **Product Pages** — for sharing buttons
- **Blog Articles** — for sharing or following content

These settings help build your brand identity and drive user engagement.

---

## 2. Adding Social Media Links

You can add your social media accounts through:

**Path:**  
`Online Store → Themes → Customize → Theme Settings → Social Media`

**Available fields may include:**
- Facebook URL  
- Instagram URL  
- Pinterest URL  
- YouTube URL  
- TikTok URL  
- X (Twitter) URL  
- LinkedIn URL  

Each field corresponds to a link displayed in your header, footer, or dedicated section.

---

## 3. Example: Footer Social Icons

```liquid
<ul class="social-icons">
  {% if settings.social_facebook %}
    <li><a href="{{ settings.social_facebook }}" target="_blank" rel="noopener" aria-label="Facebook">{% render 'icon-facebook' %}</a></li>
  {% endif %}
  {% if settings.social_instagram %}
    <li><a href="{{ settings.social_instagram }}" target="_blank" rel="noopener" aria-label="Instagram">{% render 'icon-instagram' %}</a></li>
  {% endif %}
  {% if settings.social_twitter %}
    <li><a href="{{ settings.social_twitter }}" target="_blank" rel="noopener" aria-label="Twitter">{% render 'icon-twitter' %}</a></li>
  {% endif %}
</ul>
```

This snippet checks if a social media URL exists in the settings and then renders its corresponding SVG icon.

---

## 4. Social Sharing Buttons

Some themes allow enabling **share buttons** on product or blog pages.

**Example:**
```liquid
<div class="share-buttons">
  <a href="https://www.facebook.com/sharer/sharer.php?u={{ shop.url }}{{ shop.url }}" target="_blank" aria-label="Share on Facebook">Share</a>
  <a href="https://twitter.com/intent/tweet?url={{ shop.url }}{{ shop.url }}&text={{ page_title }}" target="_blank" aria-label="Share on Twitter">Tweet</a>
</div>
```

**Recommendation:**
- Always include `aria-label` for accessibility.  
- Use `rel="noopener"` for external links to improve security.

---

## 5. Social Media Icons

Icons are typically stored as SVG snippets (e.g., `snippets/icon-facebook.liquid`).  
This ensures they load quickly and scale perfectly on all devices.

Example snippet (`snippets/icon-instagram.liquid`):
```liquid
<svg viewBox="0 0 24 24" aria-hidden="true">
  <path d="..." />
</svg>
```

---

## 6. Open Graph & Twitter Meta Tags

To control how your pages appear when shared on social media, ensure your theme includes proper meta tags in the `<head>` section.

**Example:**
```liquid
<meta property="og:title" content="{{ page_title }}">
<meta property="og:description" content="{{ page_description }}">
<meta property="og:image" content="{{ product.featured_image | img_url: 'large' | prepend: 'https:' }}">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="{{ page_title }}">
<meta name="twitter:description" content="{{ page_description }}">
```

---

## 7. Tips for Optimization

✅ Use SVG icons instead of raster images  
✅ Always link to HTTPS-secured URLs  
✅ Add `aria-label` attributes for accessibility  
✅ Verify Open Graph tags using [Facebook Debugger](https://developers.facebook.com/tools/debug/)  
✅ Use consistent icon style across all platforms  

---

## 8. Summary

| Setting | Description | Example |
|----------|--------------|----------|
| `social_facebook` | Facebook page URL | `https://facebook.com/yourbrand` |
| `social_instagram` | Instagram page URL | `https://instagram.com/yourbrand` |
| `social_twitter` | Twitter / X URL | `https://twitter.com/yourbrand` |
| `social_youtube` | YouTube channel | `https://youtube.com/yourbrand` |
| `social_linkedin` | LinkedIn page | `https://linkedin.com/company/yourbrand` |
