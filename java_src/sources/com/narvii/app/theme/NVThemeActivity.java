package com.narvii.app.theme;

import ai.medialab.medialabads2.banners.BannerLoadListener;
import ai.medialab.medialabads2.banners.DeveloperInfoListener;
import ai.medialab.medialabads2.banners.MediaLabSingletonBanner;
import ai.medialab.medialabads2.maliciousadblockers.RedirectBlockingFragmentActivity;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.LayoutRes;
import androidx.lifecycle.Lifecycle;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.util.Log;
import com.narvii.wallet.optinads.OptinAds;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public abstract class NVThemeActivity extends RedirectBlockingFragmentActivity implements NVThemeOwner {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static boolean wasAddLoaded;
    private boolean conversationScreen;

    @NotNull
    private final BannerLoadListener loaderListener = new BannerLoadListener() { // from class: com.narvii.app.theme.NVThemeActivity$loaderListener$1
        public void onLoadFinished(boolean z6, int i10) {
            Log.v("MediaLab", "onLoadFinished - " + z6 + ", code: " + i10);
            if (z6) {
                MediaLabSingletonBanner medialabAdView = this.this$0.getMedialabAdView();
                if (medialabAdView != null) {
                    medialabAdView.setVisibility(0);
                }
                NVThemeActivity.wasAddLoaded = true;
            }
        }
    };

    @NotNull
    private final NVTheme nvTheme = new NVTheme();
    private boolean shouldInflateAd;
    private boolean waitNotifyThemeChange;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public final boolean getConversationScreen() {
        return this.conversationScreen;
    }

    @Override // com.narvii.app.theme.NVThemeOwner
    @NotNull
    public NVTheme getNVTheme() {
        return this.nvTheme;
    }

    public final boolean getShouldInflateAd() {
        return this.shouldInflateAd;
    }

    public int initNVTheme() {
        return 1;
    }

    public void onThemeChange(int i10) {
    }

    @LayoutRes
    public int provideAdsResourceId() {
        return R.layout.activity_base_medialab_banner;
    }

    public final void setConversationScreen(boolean z6) {
        this.conversationScreen = z6;
    }

    public final void setShouldInflateAd(boolean z6) {
        this.shouldInflateAd = z6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final MediaLabSingletonBanner getMedialabAdView() {
        return (MediaLabSingletonBanner) findViewById(R.id.media_lab_ad_view);
    }

    @Override // com.narvii.app.theme.NVThemeOwner
    public boolean isDarkNVTheme() {
        return this.nvTheme.getThemeValue() == 2;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        this.nvTheme.removeAllObserver();
        super.onDestroy();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i10) {
        if (this.shouldInflateAd) {
            setAdContentView(i10);
        } else {
            super.setContentView(i10);
        }
        NVTheme.Companion companion = NVTheme.Companion;
        NVTheme nVTheme = getNVTheme();
        View viewFindViewById = getWindow().getDecorView().findViewById(this.shouldInflateAd ? R.id.activity_content : android.R.id.content);
        t.i(viewFindViewById, "findViewById(...)");
        companion.bindNVThemeView(nVTheme, viewFindViewById);
    }

    public final void setDarkNVTheme(boolean z6) {
        setNVThemeValue(z6 ? 2 : 1);
    }

    @Override // com.narvii.app.theme.NVThemeOwner
    public void setNVThemeValue(int i10) {
        this.nvTheme.setThemeValue(i10);
        if (getLifecycle().b().b(Lifecycle.State.STARTED)) {
            onThemeChange(i10);
        } else {
            this.waitNotifyThemeChange = true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void showBottomAdsViewIfOptinAds() {
        MediaLabSingletonBanner medialabAdView;
        if (wasAddLoaded && (medialabAdView = getMedialabAdView()) != null) {
            medialabAdView.setVisibility(0);
        }
        t.h(this, "null cannot be cast to non-null type com.narvii.app.NVContext");
        if (!OptinAds.adsInitAllowed((NVContext) this)) {
            hideBottomAdsView();
            return;
        }
        MediaLabSingletonBanner medialabAdView2 = getMedialabAdView();
        if (medialabAdView2 != null) {
            medialabAdView2.addCustomTargetingValue("screen", this.conversationScreen ? "conversation" : "other");
        }
    }

    private final void setAdContentView(int i10) {
        super.setContentView(provideAdsResourceId());
        ((FrameLayout) findViewById(R.id.activity_content)).addView(getLayoutInflater().inflate(i10, (ViewGroup) null));
        MediaLabSingletonBanner medialabAdView = getMedialabAdView();
        if (medialabAdView == null) {
            return;
        }
        medialabAdView.getLayoutParams().height = (int) TypedValue.applyDimension(1, medialabAdView.getAdaptiveHeightDp(), getResources().getDisplayMetrics());
        medialabAdView.setBannerLoadListener(this.loaderListener);
        medialabAdView.setBackgroundColor(0);
        medialabAdView.setDeveloperInfoListener(new WeakReference(new DeveloperInfoListener() { // from class: com.narvii.app.theme.NVThemeActivity.setAdContentView.1
            public void onAdDisplayed(@NotNull String source, @Nullable String str) {
                t.j(source, "source");
            }

            public void onStatusChanged(@NotNull String status) {
                t.j(status, "status");
            }
        }));
        showBottomAdsViewIfOptinAds();
    }

    public final void hideBottomAdsView() {
        MediaLabSingletonBanner medialabAdView = getMedialabAdView();
        if (medialabAdView != null) {
            medialabAdView.setVisibility(8);
            medialabAdView.pause();
        }
    }

    public final boolean isBottomAdsViewVisible() {
        MediaLabSingletonBanner medialabAdView = getMedialabAdView();
        if (medialabAdView == null || medialabAdView.getVisibility() != 0) {
            return false;
        }
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        int themeValue;
        super.onCreate(bundle);
        if (this.nvTheme.getThemeValue() == 0) {
            themeValue = initNVTheme();
        } else {
            themeValue = this.nvTheme.getThemeValue();
        }
        setNVThemeValue(themeValue);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    @CallSuper
    protected void onResume() {
        super.onResume();
        showBottomAdsViewIfOptinAds();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        if (this.waitNotifyThemeChange) {
            this.waitNotifyThemeChange = false;
            onThemeChange(this.nvTheme.getThemeValue());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void setScreenName(@Nullable String str) {
        FirebaseAnalytics.getInstance(this).setCurrentScreen(this, str, str);
        t.h(this, "null cannot be cast to non-null type com.narvii.app.NVContext");
        if (OptinAds.adsInitAllowed((NVContext) this)) {
            try {
                MediaLabSingletonBanner medialabAdView = getMedialabAdView();
                if (medialabAdView != null) {
                    if (str == null || str.length() == 0) {
                        str = "other";
                    }
                    medialabAdView.addCustomTargetingValue("screen", str);
                }
            } catch (NullPointerException unused) {
            }
        }
    }
}
