package com.narvii.ad;

import ai.medialab.medialabads2.MediaLabAds;
import ai.medialab.medialabads2.SdkInitListener;
import ai.medialab.medialabads2.interstitials.MediaLabInterstitial;
import android.app.Activity;
import com.narvii.util.Log;
import e8.a;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public final class MediaLabInterstitials {

    @NotNull
    public static final MediaLabInterstitials INSTANCE = new MediaLabInterstitials();

    @NotNull
    private static final String TAG = "MediaLabInterstitials";
    private static boolean initialized;
    private static MediaLabInterstitial mediaLabInterstitial;

    @Nullable
    private static a<l0> onInterstitialDismiss;

    public final void initialize(@NotNull Activity activity) {
        t.j(activity, "activity");
        Log.v(TAG, "initialize");
        initialized = true;
        MediaLabInterstitial mediaLabInterstitial2 = new MediaLabInterstitial();
        mediaLabInterstitial = mediaLabInterstitial2;
        MediaLabInterstitial.initialize$default(mediaLabInterstitial2, activity, new MediaLabInterstitial.InterstitialListener() { // from class: com.narvii.ad.MediaLabInterstitials.initialize.1
            public void onAdDisplayFailed(int i10) {
                Log.v(MediaLabInterstitials.TAG, "onAdDisplayFailed << " + i10);
            }

            public void onInterstitialClicked() {
                Log.v(MediaLabInterstitials.TAG, "onInterstitialClicked");
            }

            public void onInterstitialDismissed() {
                Log.v(MediaLabInterstitials.TAG, "onInterstitialDismissed");
                a aVar = MediaLabInterstitials.onInterstitialDismiss;
                if (aVar != null) {
                    aVar.invoke();
                }
                MediaLabInterstitial mediaLabInterstitial3 = null;
                MediaLabInterstitials.onInterstitialDismiss = null;
                MediaLabInterstitial mediaLabInterstitial4 = MediaLabInterstitials.mediaLabInterstitial;
                if (mediaLabInterstitial4 == null) {
                    t.B("mediaLabInterstitial");
                } else {
                    mediaLabInterstitial3 = mediaLabInterstitial4;
                }
                mediaLabInterstitial3.loadAd();
            }

            public void onInterstitialDisplayed() {
                Log.v(MediaLabInterstitials.TAG, "onInterstitialDisplayed");
            }

            public void onLoadFailed(int i10) {
                Log.v(MediaLabInterstitials.TAG, "onLoadFailed");
            }

            public void onLoadSucceeded() {
                Log.v(MediaLabInterstitials.TAG, "onLoadSucceeded");
            }
        }, null, 4, null);
        MediaLabAds.Companion.getInstance().addSdkInitListener(new SdkInitListener() { // from class: com.narvii.ad.MediaLabInterstitials.initialize.2
            public void onDestroyed() {
                Log.v(MediaLabInterstitials.TAG, "onDestroyed");
            }

            public void onInitFailed(int i10, @Nullable String str) {
                Log.v(MediaLabInterstitials.TAG, "onInitFailed");
            }

            public void onInitSucceeded() {
                Log.v(MediaLabInterstitials.TAG, "onInitSucceeded");
                MediaLabInterstitial mediaLabInterstitial3 = MediaLabInterstitials.mediaLabInterstitial;
                if (mediaLabInterstitial3 == null) {
                    t.B("mediaLabInterstitial");
                    mediaLabInterstitial3 = null;
                }
                mediaLabInterstitial3.loadAd();
            }
        });
    }

    public final boolean showAdWithDelayedAction(@NotNull String trigger, @Nullable a<l0> aVar) {
        t.j(trigger, "trigger");
        if (!initialized) {
            Log.d(TAG, "Not initialized");
            return false;
        }
        MediaLabInterstitial mediaLabInterstitial2 = mediaLabInterstitial;
        MediaLabInterstitial mediaLabInterstitial3 = null;
        if (mediaLabInterstitial2 == null) {
            t.B("mediaLabInterstitial");
            mediaLabInterstitial2 = null;
        }
        if (mediaLabInterstitial2.showAd(trigger)) {
            onInterstitialDismiss = aVar;
            return true;
        }
        MediaLabInterstitial mediaLabInterstitial4 = mediaLabInterstitial;
        if (mediaLabInterstitial4 == null) {
            t.B("mediaLabInterstitial");
        } else {
            mediaLabInterstitial3 = mediaLabInterstitial4;
        }
        mediaLabInterstitial3.loadAd();
        return false;
    }

    private MediaLabInterstitials() {
    }
}
