package com.google.firebase.appcheck.internal;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes10.dex */
public class l {

    @VisibleForTesting
    static final String CODE_KEY = "code";

    @VisibleForTesting
    static final String ERROR_KEY = "error";

    @VisibleForTesting
    static final String MESSAGE_KEY = "message";
    private int errorCode;
    private String errorMessage;

    public int b() {
        return this.errorCode;
    }

    @NonNull
    public String c() {
        return this.errorMessage;
    }

    @NonNull
    public static l a(@NonNull String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(new JSONObject(str).optString("error"));
        return new l(jSONObject.optInt(CODE_KEY), jSONObject.optString("message"));
    }

    private l(int i10, @NonNull String str) {
        this.errorCode = i10;
        this.errorMessage = str;
    }
}
