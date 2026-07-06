# Accessibility

Accessibility ensures your theme can be used by all visitors, including those with disabilities.  
A fully accessible theme improves usability, inclusivity, and often SEO.

## Keyboard Navigation

- All interactive elements (buttons, links, menus) must be reachable using the **Tab** key.  
- Use proper focus states for visibility.  
- Avoid JavaScript interactions that block keyboard access.

## Color Contrast

- Ensure sufficient contrast between text and background (WCAG 2.1 AA standard).  
- Avoid using color alone to convey meaning.  
- Use tools like **Contrast Checker** to verify readability.

## ARIA & Labels

- Use **ARIA attributes** (`aria-label`, `role`, `aria-expanded`) only when native HTML tags are insufficient.  
- Provide descriptive labels for all form inputs and interactive components.  
- Use `aria-live` for dynamic content updates.

## Images & Media

- All non-decorative images must have descriptive `alt` attributes.  
- Provide text alternatives for icons or SVGs.  
- Offer captions or transcripts for video or audio content.

## Forms

- Always include associated `<label>` elements.  
- Display clear error messages and instructions.  
- Maintain logical tab order for form fields.

## Testing Tools

- Use **axe DevTools**, **WAVE**, or **Lighthouse Accessibility Audit**.  
- Test navigation with keyboard and screen readers (e.g., NVDA, VoiceOver).  
- Regularly recheck accessibility after design updates.

## Summary

Accessibility is not only a best practice but also an ethical responsibility.  
Following WCAG standards ensures inclusivity and enhances user trust.
