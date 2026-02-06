# Zi EcoSystem – SDP – v0.1.1

Zi Software Development – 2nd Update
Release Type: Feature + Architecture Alignment
Status: IN PROGRESS

---

## Contributors

- Product Owner: Ammar (AmmarDev99)
- 📞 +92 332 7799494
- 🔗 [Contact](https://bit.ly/AmmarDev99-WA)

---

## 📅 Reference

> Points received on **04 Feb 2026**
> Scope: Architecture consistency, Design System, UX components, Navigation, Theming

---

## 🚧 Planned (To Be Added) – v0.1.1

### 1. Core Architecture & Standards

- [ ] Enforce standard widget structure:
  - `zi_<name>.dart`
  - `zi_<name>_style.dart`
  - `zi_<name>_type.dart`
  - `zi_<name>_variant.dart`
  - `zi_<name>_get.dart`
- [ ] Separation of concerns: Visual / Layout / Behavior

---

### 6. ZiInput Enhancements

- [ ] `maxLines` support for description / notes
- [ ] Expandable input for long text
- [ ] Centralized `obscureText` handling
- [ ] Address / description input variants
- [ ] Label size scaling support

---

### 7. Button System

- [ ] Mini button variant
- [ ] Icon + text compact button
- [ ] Tab-style buttons (no extra padding)
- [ ] Icon-only button support
- [ ] Consistent padding and text styles

---

### 8. Dialogs, Sheets & Alerts

- [ ] `ZiAlertDialog`
- [ ] `ZiBottomSheet`
- [ ] `ZiElevatedActionDialog`
- [ ] Forgot-password dialog using ZiAlertDialog
- [ ] Remove raw `AlertDialog` usage in core

---

### 11. Menu Tile Improvements

- [ ] Increase default tile height
- [ ] Arrow color → grey (not theme color)
- [ ] Label text color control
- [ ] Enable states:
  - Enabled
  - Disabled
  - Hidden

---

### 13. Chips, Radio & Checkbox

- [ ] Outline chip
- [ ] Active chip
- [ ] Radio-style tab buttons (Yes / No, Gender)
- [ ] Clickable checkbox
- [ ] Configurable checkbox size

---

> ------------- **Under Development** -------------

- Validate your existing code
- Provide updated, production-safe code
- NOT remove anything
- Use @Deprecated() where behavior changes
- Keep architecture extensible
>

### 15. Theme & Color Override

- [ ] `ZiColors.override(AppColors)`
- [ ] Sync Zi theme with host app theme

- [@] Menu tile label color theming
- [@] Dark icon & text color consistency

---

### 10. Bottom Navigation System

- [ ] Native Flutter bottom bar (`ZiBottomBar_native`)
- [ ] Support Fixed & Shifting types
- [ ] Icon-only & Icon+Label layouts
- [ ] Dark / Light theme support
- [ ] Badge overlay support
- [ ] Center FAB compatibility

---

### 14. Share, URL & Toast Actions

- [ ] `ZiTapActionType.share` (text / image / link / combined)
- [ ] URL opening utility
- [ ] Toast on tap actions

---

### 9. Navigation System

- [ ] `ZiNavigator` abstraction
- [ ] Push / Replace / Clear-stack navigation
- [ ] Page transition support
- [ ] GetX-like API (without dependency)

---

### 4. Spacing Utility

- Add `ZiGap` widget
  - `ZiGap(x)`
  - `ZiGap(width, height)`
- [ ] Replace raw `SizedBox` usage where applicable

---

### 3. ZiScaffold & Layout System

- [ ] Default page padding support
- [ ] Ability to disable page padding per screen
- Standard spacing scale (6, 10, 12, 16, 20, 24)
- [@] Keyboard-safe scrolling
- [@] Keyboard dismiss on drag
>

---

## 🛠 Added in (v0.1.1)

> ------------- Completed -------------

### 2. zi_core Meta & Health

- [ ] Add `zi_core_meta` library
- [ ] Add core version, build, author constants
- [ ] Add `ziCoreHealth()` debug helper
- [ ] Assert-based health logging (debug only)

---

### 5. Typography & Text System

- Add `titleSm` text style
- Add `titleLg` text style
- Add `titleXl` text style
- Add dark readable heading color (`ZiColors.heading` dark $404040)
- Button text default: 14px / w600
- Button text mobile scale (1.5x)
- [@] Input label scale (1.5x)
- [@] Actionable inline text support (tap-enabled spans)

---

### 12. Image & Radius System

- Standard radius for:
  - Banner images
  - Cards
  - Thumbnails
  - Circular avatars
- Radius configurable via style override

---

### 16. Package Exports

- Centralized exports for external packages
- Reduce repeated imports in apps

---

## 📌 Notes

- This release focuses on **architecture hardening**, **design system maturity**, and **reusability across apps**
- All public widgets must follow Zi naming & structure rules
- No breaking changes without version bump

---
