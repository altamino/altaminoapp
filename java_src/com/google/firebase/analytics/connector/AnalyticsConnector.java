package com.google.firebase.analytics.connector;

import android.os.Bundle;
import com.google.android.gms.common.annotation.KeepForSdk;

/* loaded from: classes2.dex */
public interface AnalyticsConnector {
    @KeepForSdk
    void logEvent(String str, String str2, Bundle bundle);

    @KeepForSdk
    void setUserProperty(String str, String str2, Object obj);
}
