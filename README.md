# flutter_news_reader

A new Flutter project using NewsAPI and Riverpod state Management System.

## Getting Started

# Home_Page
I use Riverpod for state management and it displays a search field at the top. Depending on the value of `isLoading`, it either shows a loading indicator or a list of news articles using a `ListView.builder`. Each news article is rendered with a custom `NewsCard` widget. The app's UI is structured within a `Scaffold` and wrapped in a `SafeArea`.

# News_Details
The `NewsDetailPage` widget has been updated with improved styling, including background colors and text formatting. The title section is displayed on a dark background with white text, while the content section is on a lighter background. These changes enhance the visual appeal of the news detail page.

# Network
This class defines static URL constants for a base API URL and a placeholder image URL.

# Widgets
- NewsCard
This Flutter widget, `NewsCard`, displays a news article's image and title. It uses `CachedNetworkImage` for image loading, and the article's information is provided via the `article` parameter. The card has a white background with rounded corners and is structured as a row with the image on the left and the title on the right.

- SearchField
This Flutter `SearchField` widget, designed for a news reader app, includes a debouncer to delay search requests for improved performance. It listens to text input changes and triggers news search actions via Riverpod when text is entered or cleared. The search field has a white background with a search icon, and it uses a debounce mechanism to manage user input delays.

# News_Provider
A Riverpod provider called `newsProvider` for managing news-related state in a Flutter app. Here I use the `NewsNotifier` class, which extends `StateNotifier`, to load news data and search news asynchronously. The state is managed using the `NewsState` class, which includes loading status and a `NewsModel` representing the news data. The initial state is set to loading, and the `loadNews` method fetches news data from an API, while `loadSearchedNews` fetches news by title. This provider initializes with loading news and can be accessed using `ref.watch(newsProvider)`.

# News_Provider.Freezed
It utilizes Freezed to generate immutable classes for state management.

The NewsState class represents the state of a news-related feature, including loading status and a NewsModel.

It provides implementations for copying and comparing instances of NewsState.

The _NewsState class is an implementation detail and should not be directly used or accessed outside this code.

The code helps manage and maintain a consistent application state for news-related data.

This is part of a larger state management system that uses Riverpod and Freezed to handle news-related data within a Flutter app.


A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
