package com.google.firebase.crashlytics.internal.analytics;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public class e implements a {
    static final String FIREBASE_ANALYTICS_ORIGIN_CRASHLYTICS = "clx";

    @NonNull
    private final com.google.firebase.analytics.connector.a analyticsConnector;

    @Override // com.google.firebase.crashlytics.internal.analytics.a
    public void a(@NonNull String str, @Nullable Bundle bundle) {
        this.analyticsConnector.a(FIREBASE_ANALYTICS_ORIGIN_CRASHLYTICS, str, bundle);
    }

    public e(@NonNull com.google.firebase.analytics.connector.a aVar) {
        this.analyticsConnector = aVar;
    }
}
