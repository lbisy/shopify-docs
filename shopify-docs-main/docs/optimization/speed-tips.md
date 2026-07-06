# Speed Tips

Speed optimization is a continuous process.  
These actionable tips help keep your Shopify store fast and efficient over time.

## Quick Wins

- **Limit apps** — remove unused or redundant apps that inject extra scripts.  
- **Host large media externally** — use Shopify CDN or trusted third-party CDNs.  
- **Audit your homepage** — remove unnecessary sections or autoplay videos.  
- **Avoid oversized banners** — resize hero images for common screen widths.

## Liquid & Code

- Use the `{% render %}` tag instead of `{% include %}` for better caching.  
- Minimize loops and repetitive queries to Shopify objects.  
- Lazy load non-critical snippets (e.g., reviews or recommendations).  
- Keep snippets modular and reusable.

## Caching & Preloading

- Preload critical assets (fonts, hero images) with `<link rel="preload">`.  
- Use browser caching for static files via theme settings or CDN headers.  
- Prefetch next pages (`<link rel="prefetch">`) for anticipated navigation.

## Testing & Maintenance

- Re-run **Google Lighthouse** and **PageSpeed Insights** monthly.  
- Monitor performance before and after app installations.  
- Periodically reoptimize images and remove old theme files.

## Summary

A consistently fast store improves retention and user satisfaction.  
Combine regular audits, code discipline, and Shopify’s native CDN power to achieve optimal performance.
