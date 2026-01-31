# Zi EcoSystem - SDP - v0.1.0

Zi Software Development 1st Build  `25 to 30 Jan 2026`

## Contributors

- Product Owner - Ammar
- +92332 7799494
- [Contact us](https://bit.ly/AmmarDev99-WA)

---

> 31 Jan 2026

**Zi Software Development 1st Build**  `25 to 30 Jan 2026`

## Theme

- Added core colors: `zi_colors.dart`
- Spacing tokens: `zi_spacing.dart`
- Radius tokens: `zi_radius.dart`
- Typography styles: `zi_typography.dart`
- Motion & animation durations: `zi_motion.dart`
- Elevations, shadows, layouts, sizes

## Atoms

- Badge: `zi_badge.dart`
- Divider: `zi_divider.dart`
- Section Divider: `zi_section_divider.dart`
- Tooltip: `zi_tooltip.dart`
- Progress Bar: `zi_progress_bar.dart`
- Status Dot: `zi_status_dot.dart`
- States: `zi_empty_state.dart`, `zi_error_state.dart`, `zi_loading_state.dart`
- Chip: `zi_chip.dart`
- Progress Indicator: `zi_progress_indicator.dart`

## Molecules

- Buttons: `zi_button_primary.dart`, `zi_button_secondary.dart`, `zi_button_outline.dart`, `zi_button_text.dart`, `zi_button_icon.dart`, `zi_button_chip.dart`
- Forms: `zi_input.dart`, `zi_input_layout.dart`, `zi_input_style.dart`, `zi_input_style_variant.dart`, `zi_checkbox.dart`, `zi_dropdown.dart`, `zi_radio.dart`, `zi_switch.dart`, formatters & validators
- Feedback: dialogs, snackbars, toasts, action sheets, bottom sheets
- Loadings: circular, linear, dots, skeletons
- Menu options: `menu_tile.dart`, `menu_group.dart`, `menu_card.dart`, `tap_action.dart`
- Cards & Sections: `zi_card.dart`, `zi_list_tile.dart`, `zi_section_header.dart`, `zi_section_title.dart`, toggle switch

## Organisms / Layout

- App bars: `zi_app_bar.dart`, `zi_tab_bar.dart`
- Tabs: `zi_tabs.dart`
- Bottom navigation: `zi_bottom_bar.dart`
- Scaffold: `zi_scaffold.dart`
- Widgets IO entry points: `zi_widgets_io.dart`, `zi_theme_io.dart`, `zi_utils_io.dart`

## Utilities

- Formatters: `zi_formatter.dart`
- Validators: `zi_validators.dart`
- App strings: `app_strings.dart`
- Generic utils: `zi_utils_io.dart`

## Notes

- This is **first public build** of `zi_core`.
- Designed for **reusable UI kit and design system**.
- No app-specific logic included.

> 30 Jan 2026

### Buttons

`add`

- New `ZiButtonB` system with multiple variants:
  - `primary`, `secondary`, `outline`, `text`, `icon`, `iconFillCircular`, `chip`, `destructive`
- `ZiButtonStyleB` allows centralized styling and overrides
- `ZiGetButtonB` centralizes button creation per variant
- Demo usage in `view_buttons.dart` with Row / Wrap

`Removed`

- Old button files (`zi_button.dart`, `zi_fill_button.dart`, `zi_gradient_btn.dart`, `zi_icon_btn.dart`, `zi_icon_text_btn.dart`, `zi_outline_btn.dart`, `zi_text_btn.dart`)
- Old button style and enum files

`Changed`

- Updated views (`view_buttons.dart`, `view_loadings.dart`, `zi_collection.dart`) to use new button system
- Updated `tap_action.dart` and `zi_widgets_io.dart` as required for new buttons

`[Zi Core] Theme Freeze`

Foundations QA (colors, spacing, radius, elevation, typography)

    - Canonical spacing scale and layout tokens
    - Semantic elevation + shadow mapping
    - Unified radius system with component aliases
    - Expanded typography hierarchy (display, title, body, label)
    - Input, caption, and meta text styles

`Improved`

    - Alignment with Material 3, One UI, and Polaris
    - Clear separation of tokens vs components
    - Better scalability for web and large screens

`Compatibility`

    - No breaking changes
    - Existing widgets remain functional
    - Legacy text styles mapped internally

> 29 Jan 2026

- feedback/
  - toasts/
  - snackbars/
  - dialogs/
  - bottom_sheets/
  - controllers/

- Zi Bottom bar - awesome_bottom_bar: ^1.2.4 [link] {pub.dev/packages/awesome_bottom_bar}

- Awesome Bottom Bar
  - IOS
  - Android

- Intresting Styles
  - default
  - creative
  - creativeHexagon
  - floating
  - inspiredOutsideDeep
  - inspiredTop
  - salomon

- Others Styles
  - background
  - borderBottom
  - background
  - borderBottom
  - borderTop
  - bottomTop
  - creative
  - default
  - fancyBorder
  - fancyDot
  - fancyBorder
  - fancyDot
  - inspiredInside
  - floating
  - inspiredInside
  - inspiredInsideHexagon
  - inspiredOutSide
  - inspiredInsideHexagon
  - inspiredOutSide
  - inspiredOutSideHexagon
  - inspiredOutsideDeep
  - inspiredOutSideHexagon
  - inspiredOutsideRadius
  - inspiredTopHexagon
  - inspiredOutsideRadius
  - inspiredTopHexagon

- Introduced `ZiBottomBar` as a unified bottom navigation bar for Zi Ecosystem.
- Supports multiple styles via `ZiBottomBarType` (InspiredOutside, Creative, Fancy, Divider, etc.).
- Configurable design system through `ZiBottomBarStyle` (backgroundColor, activeColor, inactiveColor, elevation, animation).
- Wrappers for `awesome_bottom_bar` package implemented internally to ensure consistent API.
- Enables future expansion: floating icons, hexagon/diamond shapes, labels on/off.

> 28 Jan 2026

- zi_core/widgets/zi_inputs/
- zi_core/widgets/zi_forms/
- My Zi inputs
  - zi_input_style_variant  //
  - zi_input_layout         //
- Introduced a new unified `ZiInput` system with support for multiple variants:
  - outline
  - filled
  - underlined
  - stacked
- Added input style abstraction via `ZiInputStyle`
- Added variant-based decoration builder using `ZiInputStyleVariant`
- Added input type handling utilities (text, phone, password, etc.)
- Added `view_inputs` screen to showcase and test all input configurations

---

> 27 Jan 2026

- zi_buttons/
- zi_loadings/

✨ `Added`

- ZiLoading system
- Circular, Linear, Dots, Percent, and Skeleton loaders
- Theme-based and custom style variants
- Skeleton loaders
- List-based skeleton loading
- Grid-based skeleton loading with configurable columns & ratios
- Shimmer engine
- Shared shimmer animation for all skeleton loaders
- Loader overlay foundation
- Blocking overlay loader for async operations (login, submit, fetch)
- New UI kit components
- Section titles and dividers
- Menu option molecules
- Button and icon button refinements

🎨 `Updated`

- Theme tokens refactored
- Colors
- Radius
- Spacing
- Typography
- Theme IO
- Improved consistency across Zi widgets and layouts
- Updated widget exports (zi_widgets_io)

🧹 `Removed`

- Deprecated legacy loader widget
- Deprecated tab action organism
- Cleaned unused / experimental UI components

🧱 `Internal`

- Prepared foundation for:
- Input system (ZiInput, ZiInputType, ZiInputStyle)
- Controlled form validation
- Future overlay & feedback components

---
