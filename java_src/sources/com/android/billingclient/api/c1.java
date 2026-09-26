package com.android.billingclient.api;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class c1 {
    c1(JSONObject jSONObject) throws JSONException {
        jSONObject.getInt("maximumQuantity");
        jSONObject.getInt("remainingQuantity");
    }
}
