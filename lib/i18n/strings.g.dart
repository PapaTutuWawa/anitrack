/// Generated file. Do not edit.
///
/// Locales: 1
/// Strings: 36
///
/// Built on 2023-06-21 at 20:03 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, _StringsEn> {
	en(languageCode: 'en', build: _StringsEn.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, _StringsEn> build;

	/// Gets current instance managed by [LocaleSettings].
	_StringsEn get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
_StringsEn get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class Translations {
	Translations._(); // no constructor

	static _StringsEn of(BuildContext context) => InheritedLocaleData.of<AppLocale, _StringsEn>(context).translations;
}

/// The provider for method B
class TranslationProvider extends BaseTranslationProvider<AppLocale, _StringsEn> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, _StringsEn> of(BuildContext context) => InheritedLocaleData.of<AppLocale, _StringsEn>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	_StringsEn get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, _StringsEn> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, _StringsEn> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class _StringsEn implements BaseTranslations<AppLocale, _StringsEn> {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final _StringsEn _root = this; // ignore: unused_field

	// Translations
	late final _StringsSettingsEn settings = _StringsSettingsEn._(_root);
	late final _StringsAboutEn about = _StringsAboutEn._(_root);
	late final _StringsTooltipsEn tooltips = _StringsTooltipsEn._(_root);
	late final _StringsContentEn content = _StringsContentEn._(_root);
	late final _StringsSearchEn search = _StringsSearchEn._(_root);
	late final _StringsDetailsEn details = _StringsDetailsEn._(_root);
	late final _StringsDataEn data = _StringsDataEn._(_root);
}

// Path: settings
class _StringsSettingsEn {
	_StringsSettingsEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Settings';
	String get importAnime => 'Import anime list';
	String get importAnimeDesc => 'Import anime list exported from MyAnimeList.';
	String get invalidAnimeListTitle => 'Invalid anime list';
	String get invalidAnimeListBody => 'The selected file is not a MAL anime list. It lacks the ".xml.gz" suffix.';
	String get importManga => 'Import manga list';
	String get importMangaDesc => 'Import manga list exported from MyAnimeList.';
	String get invalidMangaListTitle => 'Invalid manga list';
	String get invalidMangaListBody => 'The selected file is not a MAL manga list. It lacks the ".xml.gz" suffix.';
	String importIndicator({required Object current, required Object total}) => '${current} of ${total}';
}

// Path: about
class _StringsAboutEn {
	_StringsAboutEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'About';
	String get source => 'Source code';
}

// Path: tooltips
class _StringsTooltipsEn {
	_StringsTooltipsEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get addNewItem => 'Add new item';
}

// Path: content
class _StringsContentEn {
	_StringsContentEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get anime => 'Anime';
	String get manga => 'Manga';
}

// Path: search
class _StringsSearchEn {
	_StringsSearchEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get anime => 'Anime search';
	String get manga => 'Manga search';
	String get query => 'Search query';
}

// Path: details
class _StringsDetailsEn {
	_StringsDetailsEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Details';
	String removeTitle({required Object title}) => 'Remove ${title}?';
	String removeBody({required Object title}) => 'Are you sure you want to remove "${title}" from the list?';
	String get removeButton => 'Remove';
	String get cancelButton => 'Cancel';
	String get watchState => 'Watch state';
	String get readState => 'Read state';
	String get episodes => 'Episodes';
	String get chapters => 'Chapters';
	String get volumesOwned => 'Volumes owned';
}

// Path: data
class _StringsDataEn {
	_StringsDataEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	late final _StringsDataOngoingEn ongoing = _StringsDataOngoingEn._(_root);
	String get completed => 'Completed';
	late final _StringsDataPlannedEn planned = _StringsDataPlannedEn._(_root);
	String get dropped => 'Dropped';
	String get paused => 'Paused';
	String get all => 'All';
}

// Path: data.ongoing
class _StringsDataOngoingEn {
	_StringsDataOngoingEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get anime => 'Watching';
	String get manga => 'Reading';
}

// Path: data.planned
class _StringsDataPlannedEn {
	_StringsDataPlannedEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get anime => 'Plan to watch';
	String get manga => 'Plan to read';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _StringsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'settings.title': return 'Settings';
			case 'settings.importAnime': return 'Import anime list';
			case 'settings.importAnimeDesc': return 'Import anime list exported from MyAnimeList.';
			case 'settings.invalidAnimeListTitle': return 'Invalid anime list';
			case 'settings.invalidAnimeListBody': return 'The selected file is not a MAL anime list. It lacks the ".xml.gz" suffix.';
			case 'settings.importManga': return 'Import manga list';
			case 'settings.importMangaDesc': return 'Import manga list exported from MyAnimeList.';
			case 'settings.invalidMangaListTitle': return 'Invalid manga list';
			case 'settings.invalidMangaListBody': return 'The selected file is not a MAL manga list. It lacks the ".xml.gz" suffix.';
			case 'settings.importIndicator': return ({required Object current, required Object total}) => '${current} of ${total}';
			case 'about.title': return 'About';
			case 'about.source': return 'Source code';
			case 'tooltips.addNewItem': return 'Add new item';
			case 'content.anime': return 'Anime';
			case 'content.manga': return 'Manga';
			case 'search.anime': return 'Anime search';
			case 'search.manga': return 'Manga search';
			case 'search.query': return 'Search query';
			case 'details.title': return 'Details';
			case 'details.removeTitle': return ({required Object title}) => 'Remove ${title}?';
			case 'details.removeBody': return ({required Object title}) => 'Are you sure you want to remove "${title}" from the list?';
			case 'details.removeButton': return 'Remove';
			case 'details.cancelButton': return 'Cancel';
			case 'details.watchState': return 'Watch state';
			case 'details.readState': return 'Read state';
			case 'details.episodes': return 'Episodes';
			case 'details.chapters': return 'Chapters';
			case 'details.volumesOwned': return 'Volumes owned';
			case 'data.ongoing.anime': return 'Watching';
			case 'data.ongoing.manga': return 'Reading';
			case 'data.completed': return 'Completed';
			case 'data.planned.anime': return 'Plan to watch';
			case 'data.planned.manga': return 'Plan to read';
			case 'data.dropped': return 'Dropped';
			case 'data.paused': return 'Paused';
			case 'data.all': return 'All';
			default: return null;
		}
	}
}
