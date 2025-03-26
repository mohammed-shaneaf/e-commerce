// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome To You`
  String get title {
    return Intl.message('Welcome To You', name: 'title', desc: '', args: []);
  }

  /// `skip`
  String get skip {
    return Intl.message('skip', name: 'skip', desc: '', args: []);
  }

  /// `search and shop`
  String get searchAndShop {
    return Intl.message(
      'search and shop',
      name: 'searchAndShop',
      desc: '',
      args: [],
    );
  }

  /// `StartNow`
  String get StartNow {
    return Intl.message('StartNow', name: 'StartNow', desc: '', args: []);
  }

  /// `Discover a unique shopping experience with FruitHUB. Explore our wide range of premium fresh fruits and get the best deals and high quality`
  String get OnBoardingSubTitle1 {
    return Intl.message(
      'Discover a unique shopping experience with FruitHUB. Explore our wide range of premium fresh fruits and get the best deals and high quality',
      name: 'OnBoardingSubTitle1',
      desc: '',
      args: [],
    );
  }

  /// `We offer you the best carefully selected fruits. Check out the details, photos and reviews to make sure you choose the perfect fruit.`
  String get OnBoradingSubTitle {
    return Intl.message(
      'We offer you the best carefully selected fruits. Check out the details, photos and reviews to make sure you choose the perfect fruit.',
      name: 'OnBoradingSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get Login {
    return Intl.message('Login', name: 'Login', desc: '', args: []);
  }

  /// `Email`
  String get Email {
    return Intl.message('Email', name: 'Email', desc: '', args: []);
  }

  /// `Password`
  String get Password {
    return Intl.message('Password', name: 'Password', desc: '', args: []);
  }

  /// `ForgetYourPassword ?`
  String get ForgetYourPassword {
    return Intl.message(
      'ForgetYourPassword ?',
      name: 'ForgetYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Do Not Have An Account ?`
  String get DoNotHaveAnAccount {
    return Intl.message(
      'Do Not Have An Account ?',
      name: 'DoNotHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Create An Account`
  String get CreateAnAccount {
    return Intl.message(
      'Create An Account',
      name: 'CreateAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get Or {
    return Intl.message('Or', name: 'Or', desc: '', args: []);
  }

  /// `SignInWithGoogle`
  String get SignInWithGoogle {
    return Intl.message(
      'SignInWithGoogle',
      name: 'SignInWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `SignInWithApple`
  String get SignInWithApple {
    return Intl.message(
      'SignInWithApple',
      name: 'SignInWithApple',
      desc: '',
      args: [],
    );
  }

  /// `SignInWithFecebook`
  String get SignInWithFecebook {
    return Intl.message(
      'SignInWithFecebook',
      name: 'SignInWithFecebook',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get FullName {
    return Intl.message('Full Name', name: 'FullName', desc: '', args: []);
  }

  /// `Create New Account`
  String get NewAccount {
    return Intl.message(
      'Create New Account',
      name: 'NewAccount',
      desc: '',
      args: [],
    );
  }

  /// `Create New Account`
  String get CreateNewAccount {
    return Intl.message(
      'Create New Account',
      name: 'CreateNewAccount',
      desc: '',
      args: [],
    );
  }

  /// `You already Have An Account ?`
  String get YoualreadyhaveAnAccount {
    return Intl.message(
      'You already Have An Account ?',
      name: 'YoualreadyhaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `By creating an accountyou agree to `
  String get Bycreatinganaccountyouagreeto {
    return Intl.message(
      'By creating an accountyou agree to ',
      name: 'Bycreatinganaccountyouagreeto',
      desc: '',
      args: [],
    );
  }

  /// ` Our Terms and Conditions`
  String get OurTermsandConditions {
    return Intl.message(
      ' Our Terms and Conditions',
      name: 'OurTermsandConditions',
      desc: '',
      args: [],
    );
  }

  /// `GoodMorning`
  String get GoodMorning {
    return Intl.message('GoodMorning', name: 'GoodMorning', desc: '', args: []);
  }

  /// `Search For . . . `
  String get SearchFor {
    return Intl.message(
      'Search For . . . ',
      name: 'SearchFor',
      desc: '',
      args: [],
    );
  }

  /// `AhmadMoustafa`
  String get AhmadMoustafa {
    return Intl.message(
      'AhmadMoustafa',
      name: 'AhmadMoustafa',
      desc: '',
      args: [],
    );
  }

  /// `Eid offer`
  String get Eidoffer {
    return Intl.message('Eid offer', name: 'Eidoffer', desc: '', args: []);
  }

  /// `25% Discount`
  String get Discount25 {
    return Intl.message('25% Discount', name: 'Discount25', desc: '', args: []);
  }

  /// `Shopping now`
  String get shoppingNow {
    return Intl.message(
      'Shopping now',
      name: 'shoppingNow',
      desc: '',
      args: [],
    );
  }

  /// `best seller`
  String get bestseller {
    return Intl.message('best seller', name: 'bestseller', desc: '', args: []);
  }

  /// `More`
  String get More {
    return Intl.message('More', name: 'More', desc: '', args: []);
  }

  /// `watermelon`
  String get Watermelon {
    return Intl.message('watermelon', name: 'Watermelon', desc: '', args: []);
  }

  /// `home`
  String get home {
    return Intl.message('home', name: 'home', desc: '', args: []);
  }

  /// `profile`
  String get profile {
    return Intl.message('profile', name: 'profile', desc: '', args: []);
  }

  /// `cart`
  String get cart {
    return Intl.message('cart', name: 'cart', desc: '', args: []);
  }

  /// `products`
  String get products {
    return Intl.message('products', name: 'products', desc: '', args: []);
  }

  /// `Best Selling`
  String get BestSelling {
    return Intl.message(
      'Best Selling',
      name: 'BestSelling',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
