package com.narvii.volley.util;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;

/* JADX INFO: loaded from: classes10.dex */
public class HurlConnectionHelper {
    public static InputStream getInputStream(HttpURLConnection httpURLConnection) throws IOException {
        String responseMessage;
        if (httpURLConnection.getResponseCode() < 400) {
            return httpURLConnection.getInputStream();
        }
        if (httpURLConnection.getResponseMessage() != null && httpURLConnection.getResponseMessage().length() > 0) {
            responseMessage = httpURLConnection.getResponseMessage();
        } else {
            responseMessage = "Something went wrong";
        }
        throw new IOException(responseMessage);
    }
}
