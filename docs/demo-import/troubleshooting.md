# Demo Import Troubleshooting

If you encounter issues during the demo import process, follow the suggestions below.

---

## Common Issues

### 1. Demo Import Fails or Freezes
- Check your server’s PHP configuration:
  - `max_execution_time` = 300 or higher
  - `memory_limit` = 256M or higher
  - `upload_max_filesize` = 64M or higher
- Ask your hosting provider for assistance if you cannot update these values.

---

### 2. Images Not Imported
- Ensure that `allow_url_fopen` is enabled on your server.
- Sometimes, external image servers block repeated requests. You can manually upload missing images.

---

### 3. Widgets Not Showing Correctly
- Verify that you imported the `widgets.wie` file correctly.
- Go to **Appearance → Widgets** and adjust the layout if needed.

---

## Screenshots

### Import Error Example
![Screenshot Placeholder](../.vuepress/public/screenshot.png)

### Fixed Import Result
![Screenshot Placeholder](../.vuepress/public/screenshot.png)
