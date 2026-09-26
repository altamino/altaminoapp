package com.google.firebase.crashlytics;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Locale;

/* JADX INFO: loaded from: classes11.dex */
class e implements com.google.firebase.analytics.connector.a.b {
    static final String CRASHLYTICS_ORIGIN = "clx";
    static final String EVENT_NAME_KEY = "name";
    static final String EVENT_ORIGIN_KEY = "_o";
    static final String EVENT_PARAMS_KEY = "params";
    private com.google.firebase.crashlytics.internal.analytics.b breadcrumbEventReceiver;
    private com.google.firebase.crashlytics.internal.analytics.b crashlyticsOriginEventReceiver;

    public void d(@Nullable com.google.firebase.crashlytics.internal.analytics.b bVar) {
        this.breadcrumbEventReceiver = bVar;
    }

    public void e(@Nullable com.google.firebase.crashlytics.internal.analytics.b bVar) {
        this.crashlyticsOriginEventReceiver = bVar;
    }

    private static void b(@Nullable com.google.firebase.crashlytics.internal.analytics.b bVar, @NonNull String str, @NonNull Bundle bundle) {
        if (bVar == null) {
            return;
        }
        bVar.onEvent(str, bundle);
    }

    private void c(@NonNull String str, @NonNull Bundle bundle) {
        b(CRASHLYTICS_ORIGIN.equals(bundle.getString(EVENT_ORIGIN_KEY)) ? this.crashlyticsOriginEventReceiver : this.breadcrumbEventReceiver, str, bundle);
    }

    e() {
    }

    @Override // com.google.firebase.analytics.connector.a.b
    public void a(int i10, @Nullable Bundle bundle) {
        String string;
        com.google.firebase.crashlytics.internal.g.f().i(String.format(Locale.US, "Analytics listener received message. ID: %d, Extras: %s", Integer.valueOf(i10), bundle));
        if (bundle != null && (string = bundle.getString("name")) != null) {
            Bundle bundle2 = bundle.getBundle(EVENT_PARAMS_KEY);
            if (bundle2 == null) {
                bundle2 = new Bundle();
            }
            c(string, bundle2);
        }
    }
}
