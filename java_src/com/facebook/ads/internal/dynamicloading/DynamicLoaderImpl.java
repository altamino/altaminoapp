package com.facebook.ads.internal.dynamicloading;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.facebook.ads.AdChoicesView;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.AdSize;
import com.facebook.ads.AdView;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.AudienceNetworkAds;
import com.facebook.ads.InstreamVideoAdView;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdLayout;
import com.facebook.ads.NativeAdScrollView;
import com.facebook.ads.NativeAdView;
import com.facebook.ads.NativeAdViewAttributes;
import com.facebook.ads.NativeAdsManager;
import com.facebook.ads.NativeBannerAd;
import com.facebook.ads.NativeBannerAdView;
import com.facebook.ads.RewardedVideoAd;
import com.facebook.ads.internal.api.AdChoicesViewApi;
import com.facebook.ads.internal.api.AdOptionsViewApi;
import com.facebook.ads.internal.api.AdSettingsApi;
import com.facebook.ads.internal.api.AdSizeApi;
import com.facebook.ads.internal.api.AdViewApi;
import com.facebook.ads.internal.api.AdViewParentApi;
import com.facebook.ads.internal.api.AdsMessengerServiceApi;
import com.facebook.ads.internal.api.AudienceNetworkActivityApi;
import com.facebook.ads.internal.api.AudienceNetworkAdsApi;
import com.facebook.ads.internal.api.BidderTokenProviderApi;
import com.facebook.ads.internal.api.DefaultMediaViewVideoRendererApi;
import com.facebook.ads.internal.api.InitApi;
import com.facebook.ads.internal.api.InstreamVideoAdViewApi;
import com.facebook.ads.internal.api.InterstitialAdApi;
import com.facebook.ads.internal.api.MediaViewApi;
import com.facebook.ads.internal.api.MediaViewVideoRendererApi;
import com.facebook.ads.internal.api.NativeAdBaseApi;
import com.facebook.ads.internal.api.NativeAdImageApi;
import com.facebook.ads.internal.api.NativeAdLayoutApi;
import com.facebook.ads.internal.api.NativeAdScrollViewApi;
import com.facebook.ads.internal.api.NativeAdViewApi;
import com.facebook.ads.internal.api.NativeAdViewAttributesApi;
import com.facebook.ads.internal.api.NativeAdViewTypeApi;
import com.facebook.ads.internal.api.NativeAdsManagerApi;
import com.facebook.ads.internal.api.NativeBannerAdApi;
import com.facebook.ads.internal.api.NativeBannerAdViewApi;
import com.facebook.ads.internal.api.NativeComponentTagApi;
import com.facebook.ads.internal.api.RewardedVideoAdApi;
import com.facebook.ads.internal.dynamicloading.DynamicLoader;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import com.facebook.ads.internal.ipc.AdsMessengerService;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.facebook.ads.internal.settings.MultithreadedBundleWrapper;
import com.facebook.ads.internal.util.process.ProcessUtils;
import com.facebook.ads.redexgen.X.A0;
import com.facebook.ads.redexgen.X.AnonymousClass99;
import com.facebook.ads.redexgen.X.C03588c;
import com.facebook.ads.redexgen.X.C03618f;
import com.facebook.ads.redexgen.X.C03638h;
import com.facebook.ads.redexgen.X.C03668k;
import com.facebook.ads.redexgen.X.C03778w;
import com.facebook.ads.redexgen.X.C03808z;
import com.facebook.ads.redexgen.X.C03829b;
import com.facebook.ads.redexgen.X.C03859e;
import com.facebook.ads.redexgen.X.C03889h;
import com.facebook.ads.redexgen.X.C03989r;
import com.facebook.ads.redexgen.X.C0684Ku;
import com.facebook.ads.redexgen.X.C8V;
import com.facebook.ads.redexgen.X.C8s;
import com.facebook.ads.redexgen.X.C9A;
import com.facebook.ads.redexgen.X.C9K;
import com.facebook.ads.redexgen.X.C9Z;
import com.facebook.ads.redexgen.X.JT;
import com.facebook.ads.redexgen.X.L8;
import com.facebook.ads.redexgen.X.L9;
import com.facebook.ads.redexgen.X.LH;
import com.facebook.ads.redexgen.X.LI;
import com.facebook.ads.redexgen.X.LR;
import com.facebook.ads.redexgen.X.LV;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.UUID;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class DynamicLoaderImpl implements DynamicLoader {
    private static AdSettingsApi A00;
    private static AudienceNetworkAdsApi A01;
    private static BidderTokenProviderApi A02;
    private static NativeAdViewApi A03;
    private static NativeBannerAdViewApi A04;
    private static final InitApi A05 = new InitApi() { // from class: com.facebook.ads.redexgen.X.90
        public final void initialize(Context context, @Nullable MultithreadedBundleWrapper multithreadedBundleWrapper, @Nullable AudienceNetworkAds.InitListener initListener, int i) {
            JT.A0C(context, multithreadedBundleWrapper, initListener, i);
        }

        public final boolean isInitialized() {
            return JT.A0G();
        }

        public final void maybeAttachCrashListener(Context context) {
            JT.A03(context);
        }

        public final void onAdEventManagerCreated(Context context) {
            JT.A04(context);
        }

        public final void onAdLoadInvoked(Context context) {
            JT.A05(context);
        }

        public final void onContentProviderCreated(Context context) {
            JT.A06(context);
        }
    };

    public AdChoicesViewApi createAdChoicesViewApi(AdChoicesView adChoicesView, Context context, NativeAdBase nativeAdBase) {
        return new C03588c(adChoicesView, context, nativeAdBase);
    }

    public AdOptionsViewApi createAdOptionsView(Context context, NativeAdBase nativeAdBase, @Nullable NativeAdLayout nativeAdLayout, AdOptionsView.Orientation orientation, int i, AdOptionsView adOptionsView) {
        return new C03618f(context, nativeAdBase, nativeAdLayout, orientation, i, adOptionsView);
    }

    public AdOptionsViewApi createAdOptionsView(Context context, NativeAdBase nativeAdBase, @Nullable NativeAdLayout nativeAdLayout, AdOptionsView adOptionsView) {
        return new C03618f(context, nativeAdBase, nativeAdLayout, adOptionsView);
    }

    public AdSettingsApi createAdSettingsApi() {
        if (A00 == null) {
            A00 = new AdSettingsApi() { // from class: com.facebook.ads.redexgen.X.8g
                private static byte[] A00;
                private static final String A01;
                private static final Collection<String> A02;
                private static volatile boolean A03;

                private static String A00(int i, int i2, int i3) {
                    byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
                    int i4 = 0;
                    char c = 2;
                    while (true) {
                        switch (c) {
                            case 2:
                                bArrCopyOfRange = bArrCopyOfRange;
                                if (i4 >= bArrCopyOfRange.length) {
                                    c = 4;
                                    break;
                                } else {
                                    c = 3;
                                    break;
                                }
                            case 3:
                                bArrCopyOfRange = bArrCopyOfRange;
                                bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 15);
                                i4++;
                                c = 2;
                                break;
                            case 4:
                                return new String(bArrCopyOfRange);
                        }
                    }
                }

                private static void A01() {
                    A00 = new byte[]{-115, -114, -97, -110, -116, -114, 114, -115, 113, -118, -100, -111, -117, -109, -109, -117, -112, -119, -125, -105, -120, -113, 100, 101, 99, 112, 85, 86, 103, 90, 84, 86, 112, 90, 85, 112, 89, 82, 100, 89, 112, 92, 86, 106, -76, -96, -83, -74, 118, 116, -78, -82, 102, 119, -123, -122, 50, 127, -127, 118, 119, 50, 118, 119, -120, 123, 117, 119, 50, 122, 115, -123, 122, 76, 50, -49, -69, -56, -47, -111, -113, -55, -116, -109, -91, 116, -123, -126, -117, 61, -111, -126, -112, -111, -122, -117, -124, 61, -106, -116, -110, -113, 61, 126, -115, -115, 61, -108, -122, -111, -123, 61, 99, 126, -128, -126, 127, -116, -116, -120, 68, -112, 61, 126, -127, 61, -110, -117, -122, -111, -112, 61, -106, -116, -110, 61, -118, -110, -112, -111, 61, -112, -115, -126, -128, -122, -125, -106, 61, -111, -123, -126, 61, -127, -126, -109, -122, -128, -126, 61, -123, 126, -112, -123, -126, -127, 61, 102, 97, 61, -111, -116, 61, -126, -117, -112, -110, -113, -126, 61, -111, -123, -126, 61, -127, -126, -119, -122, -109, -126, -113, -106, 61, -116, -125, 61, -111, -126, -112, -111, 61, 126, -127, -112, 73, 61, 126, -127, -127, 61, -111, -123, -126, 61, -125, -116, -119, -119, -116, -108, -122, -117, -124, 61, -128, -116, -127, -126, 61, 127, -126, -125, -116, -113, -126, 61, -119, -116, 126, -127, -122, -117, -124, 61, 126, -117, 61, 126, -127, 87, 61, 94, -127, 112, -126, -111, -111, -122, -117, -124, -112, 75, 126, -127, -127, 113, -126, -112, -111, 97, -126, -109, -122, -128, -126, 69, 63, 123, 119, 118, -103, -123, -89, -102, -101, -88, -96, -111, -104};
                }

                static {
                    A01();
                    A01 = AdInternalSettings.class.getSimpleName();
                    A02 = new HashSet();
                    A02.add(A00(286, 3, 30));
                    A02.add(A00(12, 10, 21));
                    A02.add(A00(75, 7, 74));
                    A02.add(A00(44, 8, 47));
                    A03 = false;
                }

                private static void A02(String str) {
                    if (A03) {
                        return;
                    }
                    A03 = true;
                    String str2 = A00(52, 23, 3) + str;
                    String str3 = A00(85, PsExtractor.AUDIO_STREAM, 14) + str + A00(82, 3, 91);
                }

                public final boolean isTestMode(Context context) {
                    SharedPreferences sharedPreferences = null;
                    String string = null;
                    String str = null;
                    boolean z = true;
                    boolean z2 = false;
                    char c = !AdInternalSettings.isDebugBuild() ? (char) 2 : (char) 4;
                    while (true) {
                        switch (c) {
                            case 2:
                                if (!AdInternalSettings.isExplicitTestMode()) {
                                    c = 3;
                                    break;
                                } else {
                                    c = 4;
                                    break;
                                }
                            case 3:
                                if (!A02.contains(Build.PRODUCT)) {
                                    c = 5;
                                    break;
                                } else {
                                    c = 4;
                                    break;
                                }
                            case 4:
                                return z;
                            case 5:
                                str = null;
                                string = AdInternalSettings.sSettingsBundle.getString(A00(22, 22, 2), (String) null);
                                if (string != null) {
                                    c = '\t';
                                    break;
                                } else {
                                    c = 6;
                                    break;
                                }
                            case 6:
                                context = context;
                                z2 = false;
                                sharedPreferences = context.getSharedPreferences(ProcessUtils.getProcessSpecificName(A00(277, 9, 38), context), 0);
                                string = sharedPreferences.getString(A00(0, 12, 26), str);
                                if (!TextUtils.isEmpty(string)) {
                                    c = '\b';
                                    break;
                                } else {
                                    c = 7;
                                    break;
                                }
                            case 7:
                                sharedPreferences = sharedPreferences;
                                string = UUID.randomUUID().toString();
                                sharedPreferences.edit().putString(A00(0, 12, 26), string).apply();
                                c = '\b';
                                break;
                            case '\b':
                                string = string;
                                AdInternalSettings.sSettingsBundle.putString(A00(22, 22, 2), string);
                                c = '\t';
                                break;
                            case '\t':
                                string = string;
                                if (!AdInternalSettings.getTestDevicesList().contains(string)) {
                                    c = '\n';
                                    break;
                                } else {
                                    c = 4;
                                    break;
                                }
                            case '\n':
                                string = string;
                                A02(string);
                                z = z2;
                                c = 4;
                                break;
                        }
                    }
                }

                public final void turnOnDebugger() {
                    C0695Lf.A02();
                }
            };
        }
        return A00;
    }

    public AdSizeApi createAdSizeApi(int i) {
        return LV.A00(i);
    }

    public AdViewApi createAdViewApi(Context context, String str, AdSize adSize, AdViewParentApi adViewParentApi, AdView adView) {
        return (AdViewApi) C8V.A00(new C03638h(context, str, adSize, adViewParentApi, adView), AdViewApi.class);
    }

    public AdViewApi createAdViewApi(Context context, String str, String str2, AdViewParentApi adViewParentApi, AdView adView) throws Exception {
        try {
            return (AdViewApi) C8V.A00(new C03638h(context, str, str2, adViewParentApi, adView), AdViewApi.class);
        } catch (LR e) {
            throw new Exception(e.A01());
        }
    }

    public AdsMessengerServiceApi createAdsMessengerServiceApi(AdsMessengerService adsMessengerService) {
        return new C03668k(adsMessengerService);
    }

    public AudienceNetworkActivityApi createAudienceNetworkActivity(final AudienceNetworkActivity audienceNetworkActivity, final AudienceNetworkActivityApi audienceNetworkActivityApi) {
        final C8s c8s = new C8s(audienceNetworkActivity, audienceNetworkActivityApi);
        return new AudienceNetworkActivityApi(audienceNetworkActivity, audienceNetworkActivityApi, c8s) { // from class: com.facebook.ads.redexgen.X.8t
            private static byte[] A04;
            private boolean A00;
            private final AudienceNetworkActivity A01;
            private final AudienceNetworkActivityApi A02;
            private final C8s A03;

            static {
                A01();
            }

            private static String A00(int i, int i2, int i3) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
                int i4 = 0;
                char c = 2;
                while (true) {
                    switch (c) {
                        case 2:
                            bArrCopyOfRange = bArrCopyOfRange;
                            if (i4 >= bArrCopyOfRange.length) {
                                c = 4;
                                break;
                            } else {
                                c = 3;
                                break;
                            }
                        case 3:
                            bArrCopyOfRange = bArrCopyOfRange;
                            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 126);
                            i4++;
                            c = 2;
                            break;
                        case 4:
                            return new String(bArrCopyOfRange);
                    }
                }
            }

            private static void A01() {
                A04 = new byte[]{-13, 0, -15, -13, -11, 6, -5, 8, -5, 6, 11};
            }

            {
                this.A01 = audienceNetworkActivity;
                this.A02 = audienceNetworkActivityApi;
                this.A03 = c8s;
            }

            private void A02(Throwable th) {
                this.A00 = true;
                finish();
                P7.A07(this.A01, A00(0, 11, 20), P8.A03, new PA(th));
            }

            public final void finish() {
                this.A03.finish();
            }

            @SuppressLint({"CatchGeneralException"})
            public final void onBackPressed() {
                try {
                    if (!this.A00) {
                        this.A03.onBackPressed();
                    }
                } catch (Throwable th) {
                    A02(th);
                }
            }

            @SuppressLint({"CatchGeneralException"})
            public final void onConfigurationChanged(Configuration configuration) {
                C03748t c03748t = this;
                char c = 2;
                while (true) {
                    switch (c) {
                        case 2:
                            try {
                                c03748t = c03748t;
                                if (!c03748t.A00) {
                                    c = 6;
                                    break;
                                } else {
                                    c = 4;
                                    break;
                                }
                            } catch (Throwable th) {
                                c03748t.A02(th);
                                c03748t.A02.onConfigurationChanged(configuration);
                                return;
                            }
                        case 4:
                            c03748t.A02.onConfigurationChanged(configuration);
                            return;
                        case 6:
                            c03748t = c03748t;
                            c03748t.A03.onConfigurationChanged(configuration);
                            break;
                    }
                }
            }

            @SuppressLint({"CatchGeneralException"})
            public final void onCreate(Bundle bundle) {
                this.A02.onCreate(bundle);
                try {
                    this.A03.onCreate(bundle);
                } catch (Throwable th) {
                    A02(th);
                }
            }

            @SuppressLint({"CatchGeneralException"})
            public final void onDestroy() {
                C03748t c03748t = this;
                char c = 2;
                while (true) {
                    switch (c) {
                        case 2:
                            try {
                                c03748t = c03748t;
                                if (!c03748t.A00) {
                                    c = 6;
                                    break;
                                } else {
                                    c = 4;
                                    break;
                                }
                            } catch (Throwable th) {
                                c03748t.A02(th);
                                c03748t.A02.onDestroy();
                                return;
                            }
                        case 4:
                            c03748t.A02.onDestroy();
                            return;
                        case 6:
                            c03748t = c03748t;
                            c03748t.A03.onDestroy();
                            break;
                    }
                }
            }

            @SuppressLint({"CatchGeneralException"})
            public final void onPause() {
                C03748t c03748t = this;
                char c = 2;
                while (true) {
                    switch (c) {
                        case 2:
                            try {
                                c03748t = c03748t;
                                if (!c03748t.A00) {
                                    c = 6;
                                    break;
                                } else {
                                    c = 4;
                                    break;
                                }
                            } catch (Throwable th) {
                                c03748t.A02(th);
                                c03748t.A02.onPause();
                                return;
                            }
                        case 4:
                            c03748t.A02.onPause();
                            return;
                        case 6:
                            c03748t = c03748t;
                            c03748t.A03.onPause();
                            break;
                    }
                }
            }

            @SuppressLint({"CatchGeneralException"})
            public final void onResume() {
                this.A02.onResume();
                try {
                    if (!this.A00) {
                        this.A03.onResume();
                    }
                } catch (Throwable th) {
                    A02(th);
                }
            }

            @SuppressLint({"CatchGeneralException"})
            public final void onSaveInstanceState(Bundle bundle) {
                this.A02.onSaveInstanceState(bundle);
                try {
                    if (!this.A00) {
                        this.A03.onSaveInstanceState(bundle);
                    }
                } catch (Throwable th) {
                    A02(th);
                }
            }

            @SuppressLint({"CatchGeneralException"})
            public final void onStart() {
                this.A02.onStart();
                try {
                    if (!this.A00) {
                        this.A03.onStart();
                    }
                } catch (Throwable th) {
                    A02(th);
                }
            }

            @SuppressLint({"CatchGeneralException"})
            public final boolean onTouchEvent(MotionEvent motionEvent) {
                C03748t c03748t = this;
                boolean zOnTouchEvent = false;
                char c = 2;
                while (true) {
                    switch (c) {
                        case 2:
                            c03748t = c03748t;
                            if (!c03748t.A00) {
                                c = 7;
                                break;
                            } else {
                                c = 4;
                                break;
                            }
                        case 4:
                            c03748t = c03748t;
                            zOnTouchEvent = c03748t.A02.onTouchEvent(motionEvent);
                            c = 11;
                            break;
                        case 7:
                            try {
                                c03748t = c03748t;
                                c03748t.A03.onTouchEvent(motionEvent);
                            } catch (Throwable th) {
                                c03748t.A02(th);
                            }
                            zOnTouchEvent = c03748t.A02.onTouchEvent(motionEvent);
                            c = 11;
                            break;
                        case 11:
                            return zOnTouchEvent;
                    }
                }
            }
        };
    }

    public AudienceNetworkAdsApi createAudienceNetworkAdsApi() {
        if (A01 == null) {
            A01 = new AudienceNetworkAdsApi() { // from class: com.facebook.ads.redexgen.X.8v
                public final int getAdFormatForPlacement(String str) {
                    return C0655Jq.A00(str).intValue();
                }

                public final void initialize(Context context, @Nullable MultithreadedBundleWrapper multithreadedBundleWrapper, @Nullable AudienceNetworkAds.InitListener initListener) {
                    if (initListener == null) {
                        initListener = new AudienceNetworkAds.InitListener() { // from class: com.facebook.ads.redexgen.X.8u
                            public final void onInitialized(AudienceNetworkAds.InitResult initResult) {
                            }
                        };
                    }
                    DynamicLoaderFactory.makeLoader(context).getInitApi().initialize(context, multithreadedBundleWrapper, initListener, 1);
                }

                public final boolean isInitialized() {
                    boolean zIsInitialized = false;
                    DynamicLoader dynamicLoader = DynamicLoaderFactory.getDynamicLoader();
                    char c = dynamicLoader == null ? (char) 2 : (char) 4;
                    while (true) {
                        switch (c) {
                            case 2:
                                zIsInitialized = false;
                                c = 3;
                                break;
                            case 3:
                                return zIsInitialized;
                            case 4:
                                dynamicLoader = dynamicLoader;
                                zIsInitialized = dynamicLoader.getInitApi().isInitialized();
                                c = 3;
                                break;
                        }
                    }
                }

                public final void onContentProviderCreated(Context context) {
                    DynamicLoaderFactory.makeLoader(context).getInitApi().onContentProviderCreated(context);
                }
            };
        }
        return A01;
    }

    public BidderTokenProviderApi createBidderTokenProviderApi() {
        if (A02 == null) {
            A02 = new C03808z();
        }
        return A02;
    }

    public DefaultMediaViewVideoRendererApi createDefaultMediaViewVideoRendererApi() {
        return new C0684Ku();
    }

    public InstreamVideoAdViewApi createInstreamVideoAdViewApi(InstreamVideoAdView instreamVideoAdView, Context context, Bundle bundle) {
        return (InstreamVideoAdViewApi) C8V.A00(new AnonymousClass99(instreamVideoAdView, context, bundle), InstreamVideoAdViewApi.class);
    }

    public InstreamVideoAdViewApi createInstreamVideoAdViewApi(InstreamVideoAdView instreamVideoAdView, Context context, String str, AdSize adSize) {
        return (InstreamVideoAdViewApi) C8V.A00(new AnonymousClass99(instreamVideoAdView, context, str, adSize), InstreamVideoAdViewApi.class);
    }

    public InterstitialAdApi createInterstitialAd(Context context, String str, InterstitialAd interstitialAd) {
        return (InterstitialAdApi) C8V.A00(new C9A(context, str, interstitialAd), InterstitialAdApi.class);
    }

    public MediaViewApi createMediaViewApi() {
        return new C9K();
    }

    public MediaViewVideoRendererApi createMediaViewVideoRendererApi() {
        return new C9Z();
    }

    public C03829b createNativeAdApi(NativeAd nativeAd, NativeAdBaseApi nativeAdBaseApi) {
        return new C03829b(nativeAd, nativeAdBaseApi);
    }

    public C03829b createNativeAdApi(NativeAdBase nativeAdBase, NativeAd nativeAd, NativeAdBaseApi nativeAdBaseApi) {
        return new C03829b(nativeAdBase, nativeAd, nativeAdBaseApi);
    }

    public NativeAdBaseApi createNativeAdBaseApi(Context context, String str) {
        return new L8(context, str, L8.A0G());
    }

    public NativeAdBaseApi createNativeAdBaseApi(NativeAdBaseApi nativeAdBaseApi) {
        return new L8((L8) nativeAdBaseApi);
    }

    public NativeAdBase createNativeAdBaseFromBidPayload(Context context, String str, String str2) throws Exception {
        try {
            return L8.A09(context, str, str2);
        } catch (LR e) {
            throw new Exception(e.A01());
        }
    }

    @Nullable
    public NativeAdImageApi createNativeAdImageApi(JSONObject jSONObject) {
        return L9.A00(jSONObject);
    }

    public NativeAdLayoutApi createNativeAdLayoutApi() {
        return new C03778w();
    }

    @Nullable
    public LH createNativeAdRatingApi(JSONObject jSONObject) {
        return LH.A00(jSONObject);
    }

    public NativeAdScrollViewApi createNativeAdScrollViewApi(NativeAdScrollView nativeAdScrollView, Context context, NativeAdsManager nativeAdsManager, @Nullable NativeAdScrollView.AdViewProvider adViewProvider, int i, @Nullable NativeAdView.Type type, NativeAdViewAttributes nativeAdViewAttributes, int i2) {
        return new C03859e(nativeAdScrollView, context, nativeAdsManager, adViewProvider, i, type, nativeAdViewAttributes, i2);
    }

    public NativeAdViewApi createNativeAdViewApi() {
        if (A03 == null) {
            A03 = new NativeAdViewApi() { // from class: com.facebook.ads.redexgen.X.9f
                private static View A00(Context context, NativeAd nativeAd, NativeAdView.Type type, @Nullable NativeAdViewAttributes nativeAdViewAttributes) {
                    if (nativeAdViewAttributes == null) {
                        nativeAdViewAttributes = new NativeAdViewAttributes();
                    }
                    LI li = (LI) nativeAdViewAttributes.getInternalAttributes();
                    L8 l8A0H = L8.A0H(nativeAd.getInternalNativeAd());
                    l8A0H.A1G(LJ.A00(type.getEnumCode()));
                    l8A0H.A1F(li);
                    C03819a c03819a = new C03819a();
                    NativeAdLayout nativeAdLayout = new NativeAdLayout(context, c03819a);
                    c03819a.A05(nativeAdLayout, context, nativeAd, li);
                    nativeAdLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, (int) (OY.A01 * type.getHeight())));
                    return nativeAdLayout;
                }

                private static View A01(Context context, NativeAd nativeAd, @Nullable NativeAdViewAttributes nativeAdViewAttributes) {
                    if (nativeAdViewAttributes == null) {
                        nativeAdViewAttributes = new NativeAdViewAttributes();
                    }
                    L8 l8A0H = L8.A0H(nativeAd.getInternalNativeAd());
                    LI li = (LI) nativeAdViewAttributes.getInternalAttributes();
                    l8A0H.A1G(LJ.A0B);
                    l8A0H.A1F(li);
                    C03819a c03819a = new C03819a();
                    NativeAdLayout nativeAdLayout = new NativeAdLayout(context, c03819a);
                    c03819a.A05(nativeAdLayout, context, nativeAd, li);
                    return nativeAdLayout;
                }

                public final View render(Context context, NativeAd nativeAd) {
                    return render(context, nativeAd, (NativeAdViewAttributes) null);
                }

                public final View render(Context context, NativeAd nativeAd, NativeAdView.Type type) {
                    return render(context, nativeAd, type, null);
                }

                @SuppressLint({"CatchGeneralException"})
                public final View render(Context context, NativeAd nativeAd, NativeAdView.Type type, @Nullable NativeAdViewAttributes nativeAdViewAttributes) {
                    try {
                        return A00(context, nativeAd, type, nativeAdViewAttributes);
                    } catch (Throwable th) {
                        return QO.A00(context, th);
                    }
                }

                @SuppressLint({"CatchGeneralException"})
                public final View render(Context context, NativeAd nativeAd, @Nullable NativeAdViewAttributes nativeAdViewAttributes) {
                    try {
                        return A01(context, nativeAd, nativeAdViewAttributes);
                    } catch (Throwable th) {
                        return QO.A00(context, th);
                    }
                }
            };
        }
        return A03;
    }

    public NativeAdViewAttributesApi createNativeAdViewAttributesApi() {
        return new LI();
    }

    public NativeAdViewTypeApi createNativeAdViewTypeApi(final int i) {
        return new NativeAdViewTypeApi(i) { // from class: com.facebook.ads.redexgen.X.9g
            private final LJ A00;

            {
                this.A00 = LJ.A00(i);
            }

            public final int getHeight() {
                return this.A00.A03();
            }

            public final int getValue() {
                return this.A00.A04();
            }

            public final int getWidth() {
                return this.A00.A05();
            }
        };
    }

    public NativeAdsManagerApi createNativeAdsManagerApi(Context context, String str, int i) {
        return (NativeAdsManagerApi) C8V.A00(new C03889h(context, str, i), NativeAdsManagerApi.class);
    }

    public NativeBannerAdApi createNativeBannerAdApi(NativeBannerAd nativeBannerAd, NativeAdBaseApi nativeAdBaseApi) {
        return new C03989r(nativeAdBaseApi);
    }

    public NativeBannerAdViewApi createNativeBannerAdViewApi() {
        if (A04 == null) {
            A04 = new NativeBannerAdViewApi() { // from class: com.facebook.ads.redexgen.X.9s
                /* JADX WARN: Type inference failed for: r1v1, types: [com.facebook.ads.internal.api.NativeAdLayoutApi, com.facebook.ads.redexgen.X.8x] */
                private static View A00(Context context, NativeBannerAd nativeBannerAd, NativeBannerAdView.Type type, @Nullable NativeAdViewAttributes nativeAdViewAttributes) {
                    if (nativeAdViewAttributes == null) {
                        nativeAdViewAttributes = new NativeAdViewAttributes();
                    }
                    L8.A0H(nativeBannerAd.getInternalNativeAd()).A1G(LJ.A00(type.getEnumCode()));
                    ?? r1 = new C03778w() { // from class: com.facebook.ads.redexgen.X.8x
                        private InterfaceC0671Kg A00;

                        public final void A05(Context context2, NativeBannerAd nativeBannerAd2, LI li, NativeAdLayout nativeAdLayout) {
                            MediaView mediaView = new MediaView(nativeAdLayout.getContext());
                            AdOptionsView adOptionsView = new AdOptionsView(nativeAdLayout.getContext(), nativeBannerAd2, nativeAdLayout);
                            li.A09(adOptionsView, 20);
                            L8 l8A0H = L8.A0H(nativeBannerAd2.getInternalNativeAd());
                            LJ ljA0w = l8A0H.A0w();
                            LJ adType = LJ.A0A;
                            if (ljA0w == adType || K1.A0u(nativeAdLayout.getContext())) {
                                this.A00 = new C0755Nq(context2, nativeBannerAd2, li, ljA0w, mediaView, adOptionsView);
                            } else {
                                this.A00 = new C0672Kh(context2, l8A0H, adOptionsView, null, mediaView, ljA0w, li);
                            }
                            OY.A0P(nativeAdLayout, li.A00());
                            nativeBannerAd2.registerViewForInteraction(nativeAdLayout, mediaView, this.A00.getViewsForInteraction());
                            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                            layoutParams.gravity = 17;
                            nativeAdLayout.addView(this.A00.getView(), layoutParams);
                        }

                        @Override // com.facebook.ads.redexgen.X.C03608e
                        public final void onDetachedFromWindow() {
                            super.onDetachedFromWindow();
                            this.A00.unregisterView();
                        }
                    };
                    NativeAdLayout nativeAdLayout = new NativeAdLayout(context, (NativeAdLayoutApi) r1);
                    r1.A05(context, nativeBannerAd, (LI) nativeAdViewAttributes.getInternalAttributes(), nativeAdLayout);
                    nativeAdLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, (int) (OY.A01 * type.getHeight())));
                    return nativeAdLayout;
                }

                public final View render(Context context, NativeBannerAd nativeBannerAd, NativeBannerAdView.Type type) {
                    return render(context, nativeBannerAd, type, null);
                }

                @SuppressLint({"CatchGeneralException"})
                public final View render(Context context, NativeBannerAd nativeBannerAd, NativeBannerAdView.Type type, @Nullable NativeAdViewAttributes nativeAdViewAttributes) {
                    try {
                        return A00(context, nativeBannerAd, type, nativeAdViewAttributes);
                    } catch (Throwable th) {
                        return QO.A00(context, th);
                    }
                }
            };
        }
        return A04;
    }

    public NativeComponentTagApi createNativeComponentTagApi() {
        return new NativeComponentTagApi() { // from class: com.facebook.ads.redexgen.X.9t
            public final void tagView(View view, NativeAdBase.NativeComponentTag nativeComponentTag) {
                char c = view != null ? (char) 2 : (char) 4;
                while (true) {
                    switch (c) {
                        case 2:
                            nativeComponentTag = nativeComponentTag;
                            if (nativeComponentTag == null) {
                                c = 4;
                                break;
                            } else {
                                c = 3;
                                break;
                            }
                        case 3:
                            view = view;
                            nativeComponentTag = nativeComponentTag;
                            EnumC0759Nu.A03(view, nativeComponentTag);
                            c = 4;
                            break;
                        case 4:
                            return;
                    }
                }
            }
        };
    }

    public RewardedVideoAdApi createRewardedVideoAd(Context context, String str, RewardedVideoAd rewardedVideoAd) {
        return (RewardedVideoAdApi) C8V.A00(new A0(context, str, rewardedVideoAd), RewardedVideoAdApi.class);
    }

    public InitApi getInitApi() {
        return A05;
    }

    public void maybeInitInternally(Context context) {
        JT.A07(context);
    }
}
