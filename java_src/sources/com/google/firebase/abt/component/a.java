package com.google.firebase.abt.component;

import android.content.Context;
import androidx.annotation.GuardedBy;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.abt.c;
import java.util.HashMap;
import java.util.Map;
import o4.b;

/* JADX INFO: loaded from: classes10.dex */
public class a {

    @GuardedBy
    private final Map<String, c> abtOriginInstances = new HashMap();
    private final b<com.google.firebase.analytics.connector.a> analyticsConnector;
    private final Context appContext;

    public synchronized c b(String str) {
        try {
            if (!this.abtOriginInstances.containsKey(str)) {
                this.abtOriginInstances.put(str, a(str));
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.abtOriginInstances.get(str);
    }

    @VisibleForTesting
    protected c a(String str) {
        return new c(this.appContext, this.analyticsConnector, str);
    }

    @VisibleForTesting
    protected a(Context context, b<com.google.firebase.analytics.connector.a> bVar) {
        this.appContext = context;
        this.analyticsConnector = bVar;
    }
}
