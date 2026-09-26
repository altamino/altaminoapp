package com.narvii.wallet.optinads;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.util.Log;
import com.narvii.util.PackageUtils;

/* JADX INFO: loaded from: classes9.dex */
public class OptinAds {
    public static final int ADS_LEVEL_0 = 0;
    public static final int ADS_LEVEL_1 = 1;
    public static final int ADS_LEVEL_2 = 2;
    public static final int FLAG_ALL = 27;
    public static final int FLAG_BANNER_ADS = 2;
    public static final int FLAG_BANNER_ADS_GROUP_2 = 16;
    public static final int FLAG_INTERSTITIAL_ADS = 8;
    public static final int FLAG_MREC_ADS = 1;
    public static final int FLAG_NO_ADS = 0;
    public static final int FLAG_PAID_ADS = 4;
    private static final String REMOTE_ADS_SETTINGS = "android_ads_settings";
    private static Boolean forceAds;
    private static Boolean qualified;
    private static Boolean qualified4Preload;

    public static boolean optin(NVContext nVContext, int i10) {
        return optin(nVContext, i10, false);
    }

    public static boolean adsInitAllowed(NVContext nVContext) {
        return optin(nVContext, 27, true);
    }

    public static boolean forceAds() {
        if (forceAds == null) {
            com.google.firebase.remoteconfig.a aVarK = com.google.firebase.remoteconfig.a.k();
            aVarK.g();
            forceAds = Boolean.valueOf(aVarK.i(REMOTE_ADS_SETTINGS));
            Log.v("REMOTE_ADS_SETTINGS = " + forceAds);
        }
        return forceAds.booleanValue();
    }

    public static String getAdLevel(NVContext nVContext) {
        int iOptinAdsLevel = ((AccountService) nVContext.getService("account")).optinAdsLevel();
        if (iOptinAdsLevel == 0) {
            return "ad_level_0";
        }
        if (iOptinAdsLevel == 1) {
            return "ad_level_1";
        }
        if (iOptinAdsLevel != 2) {
            return null;
        }
        return "ad_level_2";
    }

    public static boolean optin(NVContext nVContext, int i10, boolean z6) {
        if (!((AccountService) nVContext.getService("account")).hasAccount() || forceAds()) {
            return true;
        }
        if ((z6 || ((ConfigService) nVContext.getService("config")).getCommunityId() != 0) && (i10 & ((AccountService) nVContext.getService("account")).optinAdsFlags()) != 0) {
            return qualified(nVContext);
        }
        return false;
    }

    public static boolean qualified(NVContext nVContext) {
        if (qualified == null) {
            qualified = Boolean.TRUE;
            if (new PackageUtils(nVContext.getContext()).getAppIdFromPackageName(nVContext.getContext().getPackageName()) != 0) {
                qualified = Boolean.FALSE;
            }
        }
        return qualified.booleanValue();
    }

    public static boolean qualified4Preload(NVContext nVContext) {
        if (qualified4Preload == null) {
            qualified4Preload = Boolean.valueOf(a2.b.d(nVContext.getContext()) > 2013);
        }
        return qualified4Preload.booleanValue();
    }

    public static void sendAdLevelUserProperty(NVContext nVContext) {
        FirebaseAnalytics.getInstance(nVContext.getContext()).c("ad_level", getAdLevel(nVContext));
    }
}
