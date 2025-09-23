# Clean Architecture Flutter App

This is a modular Flutter application following a feature-first, clean-architecture-inspired structure. It emphasizes separation of concerns and reusability through `features/` and a shared `core/` module.

## Table of Contents
- Overview
- Architecture
- Folder Structure
- Navigation
- Core Module
- Assets & Styles
- Dependencies
- Run & Build

## Overview
The app showcases multiple screens such as Anime Details and Upgrade Plan. It uses reusable UI elements, named routes, and a clear separation between UI, models, and shared utilities.

## Architecture
The project follows a simplified Clean Architecture:

- Presentation (UI): Widgets, views, and simple state handled via `StatelessWidget`/`StatefulWidget`.
- Data: Simple data models used to populate UI (`data/models`).
- Core: Reusable utilities, styles, routing, and shared widgets.

Each feature is self-contained under `features/<feature_name>/` with its own `presentation/` and `data/` layers. This structure makes it easy to scale by adding new features without coupling.

## Folder Structure
```
lib/
  core/
    routes/
      app_routes.dart
      on_generate_routes.dart
    utils/
      app_assets.dart
      app_colors.dart
      app_styles.dart
    widgets/
      custom_action_button_widget.dart
      custom_divider.dart
  features/
    anime/
      data/
        models/
          anime_model.dart
      presentation/
        views/
          anime_details_view.dart
        widgets/
          anime_description_widget.dart
          anime_icons_with_text_row_widget.dart
          anime_image_and_logo_widget.dart
          icon_with_text_widget.dart
          custom_bottom_navigation_barr_buttons_widget.dart
    home/
      data/
        models/
          bottom_navigation_bar_item_model.dart
      presentation/
        widgets/
          background_star_image.dart
          custom_bottom_navigation_bar_widget.dart
    top_characters/
      data/
        models/
          top_character_model.dart
    upgrade_plan/
      data/
        models/
          upgrade_plan_model.dart
      presentation/
        views/
          upgrade_plan_view.dart
        widgets/
          upgrade_plan_item_widget.dart
          upgrade_plan_list_view_builder.dart
```

## Anime Feature Architecture (Focused Example)
This section explains just one feature—`anime/`—as a concrete example of the project’s architecture. No networking or API layer is involved here; it’s all local models and UI.

### Structure
- `features/anime/data/models/anime_model.dart`
  - Local data model used to represent anime items for lists and UI previews.
- `features/anime/presentation/views/anime_details_view.dart`
  - The main screen for displaying a single anime’s details.
- `features/anime/presentation/widgets/`
  - `anime_image_and_logo_widget.dart`: Top hero section using a `Stack` to show the banner image and floating logo.
  - `anime_labels_row_widget.dart`: Label chips/tags (e.g., kind, rating). [If present in your codebase]
  - `anime_icons_with_text_row_widget.dart` and `icon_with_text_widget.dart`: Reusable row with small icon + text pairs (e.g., eye icon and views count).
  - `anime_description_widget.dart`: Brief descriptive text with a small icon header.
  - `custom_bottom_navigation_barr_buttons_widget.dart`: Bottom actions (e.g., Preview / Watch Now) that can navigate elsewhere (like Upgrade Plan).

### Flow
1) `AnimeDetailsView` lays out the page as a scrollable column.
   - Top area: `AnimeImageAndLogoWidget` with a `Stack` that shows `AppAssets.imagesDemonSlayer` and a floating `AppAssets.imagesDemonLogo`.
   - Middle: Labels row, dividers, and an icon-with-text row for quick stats.
   - Bottom: `AnimeDescriptionWidget` shows a concise description with an accompanying `AppAssets.imagesFire` icon.
2) Bottom actions are provided via `CustomBottomNavigationBarButtonsWidget` (from anime widgets), which internally composes `CustomActionButtonWidget` from `core/widgets/`.
3) Navigation to other screens (e.g., Upgrade Plan) is performed using named routes (`Navigator.pushNamed(context, AppRoutes.upgradePlan)`), keeping navigation concerns decoupled from view construction.

### UI Considerations
- Sizing: Uses `sizer` (e.g., `65.h`, `100.w`) for responsive height/width.
- Assets: Icons and images are centralized in `core/utils/app_assets.dart` and used via `Image.asset` and `SvgPicture.asset`.
- Clipping: Widgets that intentionally overflow (like the floating logo) use `Stack(clipBehavior: Clip.none)` to avoid clipping issues.
- Reusability: Common text styles come from `core/utils/app_styles.dart`, and common components like dividers and action buttons live in `core/widgets/`.

### Extending the Feature
- Add a new UI element: Create a dedicated widget under `features/anime/presentation/widgets/` and compose it in `AnimeDetailsView`.
- Add a new navigable action: Add a route constant to `AppRoutes`, handle it in `on_generate_routes.dart`, and call `Navigator.pushNamed` from a button in the anime view/widgets.

## Navigation
Navigation uses named routes with a single `onGenerateRoute` function and a central `AppRoutes` registry.

- Route names are defined in `core/routes/app_routes.dart`:
  - `AppRoutes.bottomNavBar`
  - `AppRoutes.animeDetails`
  - `AppRoutes.upgradePlan`

- Route generation is centralized in `core/routes/on_generate_routes.dart`, which maps route names to pages using `MaterialPageRoute`.

Example: Navigating to the Upgrade Plan screen
```dart
Navigator.pushNamed(context, AppRoutes.upgradePlan);
```

Adding a new route
1) Add a constant to `AppRoutes`:
```dart
static const String myNewScreen = 'myNewScreen';
```
2) Handle it in `onGenerateRoute`:
```dart
case AppRoutes.myNewScreen:
  return MaterialPageRoute(builder: (_) => const MyNewScreen());
```
3) Navigate with `Navigator.pushNamed(context, AppRoutes.myNewScreen);`

## Core Module
The `core/` directory holds cross-cutting concerns used across features:

- `utils/app_assets.dart`: Centralized asset paths. Only assets that are referenced in code are kept for safety and clarity.
- `utils/app_styles.dart`: Typography styles (e.g., `style22Bold`, `style24Bold`, `style14Regular`, `style15Regular`). Fonts are configured in `pubspec.yaml` (e.g., `Inter`, `Raleway`).
- `utils/app_colors.dart`: Centralized color palette (e.g., `AppColors.primaryColor`).
- `routes/`: Named route constants and `onGenerateRoute` implementation.
- `widgets/`: Reusable UI components such as:
  - `CustomActionButtonWidget` (rounded action button with icon/text)
  - `CustomDivider` (consistent divider spacing and color)

## Assets & Styles
- Asset constants are declared in `core/utils/app_assets.dart` and referenced throughout the app (e.g., `AppAssets.imagesDemonSlayer`).
- SVGs are rendered via `flutter_svg` (e.g., `SvgPicture.asset(AppAssets.imagesEye)`).
- Sizer (`sizer`) is used for responsive sizing (e.g., `65.h`, `100.w`).

If you add a new asset:
1) Place the file under `assets/images/`.
2) Reference it in `pubspec.yaml` under the `assets:` section (the folder is already included).
3) Add a constant in `app_assets.dart` and use it where needed.

## Dependencies
Commonly used packages:
- `flutter_svg` – Render SVGs.
- `sizer` – Responsive sizing.

Ensure they are added to `pubspec.yaml` and run `flutter pub get`.

## Run & Build
Run the app:
```bash
flutter pub get
flutter run
```

Build release (example for Android):
```bash
flutter build apk --release
```

## Adding a New Feature
Use the feature-first pattern:
1) Create `features/<feature>/data/models` for models.
2) Create `features/<feature>/presentation/views` and `.../widgets` for UI.
3) Register a route if needed and add any shared widgets to `core/widgets/`.

