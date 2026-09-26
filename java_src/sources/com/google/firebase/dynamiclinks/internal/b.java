package com.google.firebase.dynamiclinks.internal;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;

/* JADX INFO: loaded from: classes6.dex */
public class b {

    @VisibleForTesting
    public static final String KEY_CAMPAIGN = "campaign";

    @VisibleForTesting
    public static final String KEY_CAMPAIGN_BUNDLE = "_cmp";

    @VisibleForTesting
    public static final String KEY_MEDIUM = "medium";

    @VisibleForTesting
    public static final String KEY_SCION_DATA_BUNDLE = "scionData";

    @VisibleForTesting
    public static final String KEY_SOURCE = "source";
    public static final String KEY_UTM_CAMPAIGN = "utm_campaign";
    public static final String KEY_UTM_MEDIUM = "utm_medium";
    public static final String KEY_UTM_SOURCE = "utm_source";
    private final DynamicLinkData dynamicLinkData;

    @NonNull
    private final Bundle utmParamsBundle;

    @NonNull
    private static Bundle b(DynamicLinkData dynamicLinkData) {
        Bundle bundle;
        Bundle bundle2;
        Bundle bundle3 = new Bundle();
        if (dynamicLinkData == null || dynamicLinkData.y0() == null || (bundle = dynamicLinkData.y0().getBundle("scionData")) == null || (bundle2 = bundle.getBundle(KEY_CAMPAIGN_BUNDLE)) == null) {
            return bundle3;
        }
        a(KEY_MEDIUM, KEY_UTM_MEDIUM, bundle2, bundle3);
        a("source", KEY_UTM_SOURCE, bundle2, bundle3);
        a(KEY_CAMPAIGN, KEY_UTM_CAMPAIGN, bundle2, bundle3);
        return bundle3;
    }

    public b(DynamicLinkData dynamicLinkData) {
        this.dynamicLinkData = dynamicLinkData;
        this.utmParamsBundle = b(dynamicLinkData);
    }

    private static void a(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle, @NonNull Bundle bundle2) {
        String string = bundle.getString(str);
        if (!TextUtils.isEmpty(string)) {
            bundle2.putString(str2, string);
        }
    }
}
