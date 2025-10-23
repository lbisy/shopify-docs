# Performance Optimization

Performance optimization ensures that your theme loads quickly and runs smoothly across all devices.  
A fast theme reduces bounce rates and increases sales conversions.

## Image Optimization

- Use **Shopify’s built-in image filters** (e.g., `| img_url: '800x'`) to serve optimized sizes.  
- Prefer **modern formats** like WebP for smaller file sizes.  
- Compress images before uploading (e.g., using TinyPNG or Squoosh).  
- Implement **lazy loading** using the `loading="lazy"` attribute for below-the-fold images.

## CSS & JavaScript

- Combine and **minify** CSS and JS assets when possible.  
- Avoid blocking render by loading non-critical scripts with `defer` or `async`.  
- Keep inline scripts minimal and move reusable code to external files.  
- Remove unused libraries or redundant framework files.

## Fonts

- Use **system fonts** where possible to reduce load time.  
- For custom fonts, preload key resources using `<link rel="preload" ...>`.  
- Limit font weights and styles to essential variants.  
- Convert large font files to modern formats like WOFF2.

## Liquid Rendering

- Minimize the use of complex nested loops in Liquid templates.  
- Cache repeated snippets using Shopify’s built-in **render caching**.  
- Use conditional logic efficiently — avoid unnecessary object lookups.  
- Remove or comment out debugging statements before publishing.

## Monitoring & Tools

- Use **Shopify Theme Inspector for Chrome** to debug Liquid performance.  
- Analyze speed using **Google Lighthouse** or **GTmetrix**.  
- Track performance metrics regularly after updates.

## Summary

A fast-performing theme improves user engagement, SEO ranking, and overall conversion rate.  
Always test and monitor performance after making design or code changes.
