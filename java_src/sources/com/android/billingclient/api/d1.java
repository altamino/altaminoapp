package com.android.billingclient.api;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class d1 {
    d1(JSONObject jSONObject) throws JSONException {
        jSONObject.getLong("preorderReleaseTimeMillis");
        jSONObject.getLong("preorderPresaleEndTimeMillis");
    }
}
