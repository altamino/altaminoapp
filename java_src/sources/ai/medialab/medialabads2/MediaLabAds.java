package ai.medialab.medialabads2;

import ai.medialab.medialabads2.analytics.AdRevenueListener;
import ai.medialab.medialabads2.cmp.ConsentCompletionListener;
import android.app.Activity;
import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public class MediaLabAds {
    public static Companion Companion = new Companion();
    public static MediaLabAds INSTANCE$stub = new MediaLabAds();

    public class Companion {
        public static Companion INSTANCE$stub = new Companion();

        public MediaLabAds getInstance() {
            return MediaLabAds.INSTANCE$stub;
        }
    }

    public static MediaLabAds getInstance() {
        return INSTANCE$stub;
    }

    public void addRevenueListener(AdRevenueListener adRevenueListener) {
    }

    public void addSdkInitListener(SdkInitListener sdkInitListener) {
    }

    public void initialize(Context context, boolean z6, String str, SdkInitListener sdkInitListener, MediaLabUidListener mediaLabUidListener) {
    }

    public boolean isInitialized() {
        return false;
    }

    public void setUserEmail(String str) {
    }

    public void setUserId(String str) {
    }

    public void setUserPhone(String str) {
    }

    public boolean shouldAllowUserInitiatedConsentUpdate() {
        return false;
    }

    public void showUserInitiatedConsentUpdateForm(Activity activity, ConsentCompletionListener consentCompletionListener) {
    }
}
