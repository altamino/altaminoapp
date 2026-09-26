package com.google.firebase.appcheck.playintegrity.internal;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes10.dex */
class a {

    @VisibleForTesting
    static final String PLAY_INTEGRITY_TOKEN_KEY = "playIntegrityToken";
    private final String playIntegrityToken;

    @NonNull
    public String a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(PLAY_INTEGRITY_TOKEN_KEY, this.playIntegrityToken);
        return jSONObject.toString();
    }

    public a(@NonNull String str) {
        this.playIntegrityToken = str;
    }
}
