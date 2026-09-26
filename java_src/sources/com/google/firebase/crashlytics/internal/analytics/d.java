package com.google.firebase.crashlytics.internal.analytics;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.crashlytics.internal.g;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class d implements b, b4.b {
    private static final String BREADCRUMB_NAME_KEY = "name";
    private static final String BREADCRUMB_PARAMS_KEY = "parameters";
    private static final String BREADCRUMB_PREFIX = "$A$:";

    @Nullable
    private b4.a breadcrumbHandler;

    @NonNull
    private static String b(@NonNull String str, @NonNull Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        for (String str2 : bundle.keySet()) {
            jSONObject2.put(str2, bundle.get(str2));
        }
        jSONObject.put("name", str);
        jSONObject.put(BREADCRUMB_PARAMS_KEY, jSONObject2);
        return jSONObject.toString();
    }

    @Override // b4.b
    public void a(@Nullable b4.a aVar) {
        this.breadcrumbHandler = aVar;
        g.f().b("Registered Firebase Analytics event receiver for breadcrumbs");
    }

    @Override // com.google.firebase.crashlytics.internal.analytics.b
    public void onEvent(@NonNull String str, @NonNull Bundle bundle) {
        b4.a aVar = this.breadcrumbHandler;
        if (aVar != null) {
            try {
                aVar.a(BREADCRUMB_PREFIX + b(str, bundle));
            } catch (JSONException unused) {
                g.f().k("Unable to serialize Firebase Analytics event to breadcrumb.");
            }
        }
    }
}
