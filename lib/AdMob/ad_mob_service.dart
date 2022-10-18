//android
// appOpen	ca-app-pub-3940256099942544/3419835294
// banner	ca-app-pub-3940256099942544/6300978111
// interstitial	ca-app-pub-3940256099942544/1033173712
// interstitialVideo	ca-app-pub-3940256099942544/8691691433
// rewarded	ca-app-pub-3940256099942544/5224354917
// rewardedInterstitial	ca-app-pub-3940256099942544/5354046379
// nativeAdvanced	ca-app-pub-3940256099942544/2247696110
// nativeAdvancedVideo	ca-app-pub-3940256099942544/1044960115

//ios
// appOpen	ca-app-pub-3940256099942544/5662855259
// banner	ca-app-pub-3940256099942544/2934735716
// interstitial	ca-app-pub-3940256099942544/4411468910
// interstitialVideo	ca-app-pub-3940256099942544/5135589807
// rewarded	ca-app-pub-3940256099942544/1712485313
// rewarded Interstitial	ca-app-pub-3940256099942544/6978759866
// nativeAdvanced	ca-app-pub-3940256099942544/3986624511
// nativeAdvancedVideo	ca-app-pub-3940256099942544/2521693316


import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdMobService {
  // static String? get  {
  //   if (Platform.isAndroid) {
  //     return '';
  //   } else if (Platform.isIOS) {
  //     return '';
  //   }
  //   return null;
  //}
  //앱시작
  static String? get appOpenAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/3419835294';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/5662855259';
    }
    return null;
  }
  //배너
  static String? get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/6300978111';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/2934735716';
    }
    return null;
  }
//전면
  static String? get interstitialAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/1033173712';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/4411468910';
    }
    return null;
  }
  static String? get interstitialVideoAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/8691691433';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/5135589807';
    }
    return null;
  }
  static String? get rewardedAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/5224354917';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/1712485313';
    }
    return null;
  }
  static String? get rewardedInterstitialAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/5354046379';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/6978759866';
    }
    return null;
  }


  static final BannerAdListener bannerListener = BannerAdListener(
    onAdLoaded: (ad) => debugPrint('Ad loaded'),
    onAdFailedToLoad: (ad, error) {
      ad.dispose();
      debugPrint('Ad failed to load:$error');
    },
    onAdOpened: (ad) => debugPrint('Ad opened'),
    onAdClosed: (ad) => debugPrint('Ad opened'),
  );
}
