package com.google.firebase.appcheck.debug.internal;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes11.dex */
public class f {

    @VisibleForTesting
    static final String DEBUG_TOKEN_KEY = "debugToken";
    private final String debugToken;

    @NonNull
    public String a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(DEBUG_TOKEN_KEY, this.debugToken);
        return jSONObject.toString();
    }

    public f(@NonNull String str) {
        this.debugToken = str;
    }
}
