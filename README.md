# Project Overview

A feature-first Flutter app structured with a shared `core/` module and isolated features. Below is a concise view of the `lib/` layout and explanations for the `core/` folder and one concrete feature: `anime/`.

## lib/ Tree
```text
lib/
├── core/
│   ├── routes/
│   │   ├── app_routes.dart
│   │   └── on_generate_routes.dart
│   ├── utils/
│   │   ├── app_assets.dart
│   │   ├── app_colors.dart
│   │   └── app_styles.dart
│   └── widgets/
│       ├── custom_action_button_widget.dart
│       └── custom_divider.dart
├── features/
│   ├── anime/
│   │   ├── data/
│   │   │   └── models/
│   │   │       └── anime_model.dart
│   │   └── presentation/
│   │       ├── views/
│   │       │   └── anime_details_view.dart
│   │       └── widgets/
│   │           ├── anime_description_widget.dart
│   │           ├── anime_icons_with_text_row_widget.dart
│   │           ├── anime_image_and_logo_widget.dart
│   │           ├── custom_bottom_navigation_barr_buttons_widget.dart
│   │           └── icon_with_text_widget.dart
│   ├── home/
│   │   ├── data/models/bottom_navigation_bar_item_model.dart
│   │   └── presentation/widgets/(background_star_image.dart, custom_bottom_navigation_bar_widget.dart)
│   ├── top_characters/
│   │   └── data/models/top_character_model.dart
│   └── upgrade_plan/
│       ├── data/models/upgrade_plan_model.dart
│       └── presentation/
│           ├── views/upgrade_plan_view.dart
│           └── widgets/(upgrade_plan_item_widget.dart, upgrade_plan_list_view_builder.dart)
└── main.dart
```

## Core Folder (What it provides)
- **routes/**
  - `app_routes.dart`: Central route name constants (e.g., `AppRoutes.animeDetails`, `AppRoutes.upgradePlan`).
  - `on_generate_routes.dart`: Single source of truth for navigation. Maps route names to pages via `MaterialPageRoute`.
- **utils/**
  - `app_assets.dart`: Centralized asset paths (images/SVGs). Use these constants from features to avoid hardcoded strings.
  - `app_colors.dart`: Shared color palette (e.g., `AppColors.primaryColor`).
  - `app_styles.dart`: Shared text styles (e.g., `style22Bold`, `style24Bold`, `style14Regular`, `style15Regular`).
- **widgets/**
  - `custom_action_button_widget.dart`: Rounded action button with icon + label, reusable across features.
  - `custom_divider.dart`: Consistent divider styling for spacing and color.

These core modules keep styling, assets, navigation, and common widgets consistent and reusable throughout the app.

## Anime Feature (Focused Example)
A self-contained feature demonstrating how presentation and data are organized—no API layer involved.

- **data/models/anime_model.dart**
  - Simple model class used to populate UI lists or previews within the app (local/dummy data).

- **presentation/views/anime_details_view.dart**
  - The main screen for a single anime. It uses a `SingleChildScrollView` with a vertical `Column` layout and a `bottomNavigationBar` for primary actions.
  - Background uses the theme/color from core; spacing and sizes use `sizer` where appropriate.

- **presentation/widgets/** (compositional UI)
  - `anime_image_and_logo_widget.dart`: Top hero section using a `Stack(clipBehavior: Clip.none)` to place a floating logo over the banner image (prevents clipping of intentional overflow).
  - `anime_icons_with_text_row_widget.dart` and `icon_with_text_widget.dart`: Small icon + text items (e.g., views) with styles from `app_styles.dart` and assets from `app_assets.dart`.
  - `anime_description_widget.dart`: Text description with a small leading icon.
  - `custom_bottom_navigation_barr_buttons_widget.dart`: Bottom actions built using `core/widgets/custom_action_button_widget.dart` (e.g., Preview/Watch). Buttons can navigate using core routes.

- **Navigation (from Anime)**
  - To navigate elsewhere (e.g., Upgrade Plan), call:
    ```dart
    Navigator.pushNamed(context, AppRoutes.upgradePlan);
    ```
  - Route names live in `core/routes/app_routes.dart` and are resolved in `core/routes/on_generate_routes.dart`.

- **Why this structure**
  - Clear separation of concerns: data models vs. UI widgets.
  - Reusability: icons, styles, colors, and buttons come from `core/`.
  - Scalability: new anime UI parts go into `presentation/widgets/` and can be composed in `anime_details_view.dart` without affecting other features.

---
For additions, prefer creating new widgets under the feature’s `presentation/widgets/` and new screens under `presentation/views/`. Register any new screens via `AppRoutes` and `on_generate_routes.dart`.

