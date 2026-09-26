package com.google.firebase.crashlytics.internal.settings;

import com.google.firebase.crashlytics.internal.common.w;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class g {
    private final w currentTimeProvider;

    private static h a(int i10) {
        if (i10 == 3) {
            return new l();
        }
        com.google.firebase.crashlytics.internal.g.f().d("Could not determine SettingsJsonTransform for settings version " + i10 + ". Using default settings values.");
        return new b();
    }

    public d b(JSONObject jSONObject) throws JSONException {
        return a(jSONObject.getInt("settings_version")).a(this.currentTimeProvider, jSONObject);
    }

    g(w wVar) {
        this.currentTimeProvider = wVar;
    }
}
