package com.google.android.exoplayer2.drm;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
final class a {
    private static final String TAG = "ClearKeyUtil";

    public static byte[] a(byte[] bArr) {
        return com.google.android.exoplayer2.util.o0.SDK_INT >= 27 ? bArr : com.google.android.exoplayer2.util.o0.h0(c(com.google.android.exoplayer2.util.o0.A(bArr)));
    }

    public static byte[] b(byte[] bArr) {
        if (com.google.android.exoplayer2.util.o0.SDK_INT >= 27) {
            return bArr;
        }
        try {
            JSONObject jSONObject = new JSONObject(com.google.android.exoplayer2.util.o0.A(bArr));
            StringBuilder sb = new StringBuilder("{\"keys\":[");
            JSONArray jSONArray = jSONObject.getJSONArray(com.google.firebase.crashlytics.internal.metadata.n.KEYDATA_FILENAME);
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                if (i10 != 0) {
                    sb.append(",");
                }
                JSONObject jSONObject2 = jSONArray.getJSONObject(i10);
                sb.append("{\"k\":\"");
                sb.append(d(jSONObject2.getString("k")));
                sb.append("\",\"kid\":\"");
                sb.append(d(jSONObject2.getString("kid")));
                sb.append("\",\"kty\":\"");
                sb.append(jSONObject2.getString("kty"));
                sb.append("\"}");
            }
            sb.append("]}");
            return com.google.android.exoplayer2.util.o0.h0(sb.toString());
        } catch (JSONException e) {
            com.google.android.exoplayer2.util.t.d(TAG, "Failed to adjust response data: " + com.google.android.exoplayer2.util.o0.A(bArr), e);
            return bArr;
        }
    }

    private static String c(String str) {
        return str.replace('+', '-').replace('/', '_');
    }

    private static String d(String str) {
        return str.replace('-', '+').replace('_', '/');
    }
}
