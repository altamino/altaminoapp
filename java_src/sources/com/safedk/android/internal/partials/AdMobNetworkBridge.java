package com.safedk.android.internal.partials;

import java.net.HttpURLConnection;

/* JADX INFO: loaded from: classes.dex */
public class AdMobNetworkBridge {
    public static void httpUrlConnectionDisconnect(HttpURLConnection httpURLConnection) {
        httpURLConnection.disconnect();
    }

    public static int httpUrlConnectionGetResponseCode(HttpURLConnection httpURLConnection) {
        return httpURLConnection.getResponseCode();
    }
}
