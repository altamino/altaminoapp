package com.narvii.util.http;

import com.fasterxml.jackson.databind.JsonNode;
import com.narvii.util.JacksonUtils;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.StringTokenizer;

/* loaded from: classes3.dex */
public class URLFetch {
    private boolean canceled;
    private HttpURLConnection conn;
    private Exception error;

    public void cancel() {
        this.canceled = true;
    }

    public boolean isCanceled() {
        return this.canceled;
    }

    public Object getError() {
        return this.error;
    }

    public byte[] getRaw(String str, int i) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            this.conn = httpURLConnection;
            onConnected(str, httpURLConnection);
            InputStream inputStream = httpURLConnection.getInputStream();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i > 0 ? i : 32768);
            byte[] bArr = new byte[4096];
            int i2 = 0;
            while (true) {
                if (i > 0 && i2 >= i) {
                    break;
                }
                int i3 = inputStream.read(bArr, 0, i > 0 ? Math.min(bArr.length, i - i2) : bArr.length);
                if (i3 == -1 || isCanceled()) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, i3);
                i2 += i3;
            }
            inputStream.close();
            byteArrayOutputStream.close();
            if (isCanceled()) {
                return null;
            }
            return byteArrayOutputStream.toByteArray();
        } catch (Exception unused) {
            return null;
        } finally {
            this.conn = null;
        }
    }

    public String getUTF8String(String str, int i) {
        byte[] raw = getRaw(str, i);
        if (raw == null) {
            return null;
        }
        try {
            return new String(raw, "utf-8");
        } catch (Exception unused) {
            return null;
        }
    }

    public JsonNode getJsonNode(String str) {
        byte[] raw = getRaw(str, 0);
        if (raw == null) {
            return null;
        }
        try {
            return JacksonUtils.DEFAULT_MAPPER.readTree(raw);
        } catch (Exception unused) {
            return null;
        }
    }

    private static String getQueryPart(String str) {
        int iIndexOf = str.indexOf(63);
        int iIndexOf2 = str.indexOf(35);
        if (iIndexOf == -1 && iIndexOf2 == -1) {
            return str;
        }
        if (iIndexOf == -1) {
            return str.substring(0, iIndexOf2);
        }
        return str.substring(iIndexOf);
    }

    public static String[] getQueryKeys(String str) {
        String queryPart = getQueryPart(str);
        ArrayList arrayList = new ArrayList();
        StringTokenizer stringTokenizer = new StringTokenizer(queryPart, "&");
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            int iIndexOf = strNextToken.indexOf(61);
            if (iIndexOf > 0) {
                arrayList.add(strNextToken.substring(0, iIndexOf));
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static String getQueryString(String str, String str2) {
        StringTokenizer stringTokenizer = new StringTokenizer(getQueryPart(str), "&");
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            int iIndexOf = strNextToken.indexOf(61);
            if (iIndexOf > 0 && str2.equals(strNextToken.substring(0, iIndexOf))) {
                try {
                    return URLDecoder.decode(strNextToken.substring(iIndexOf + 1));
                } catch (Exception unused) {
                }
            }
        }
        return null;
    }

    protected void onConnected(String str, HttpURLConnection httpURLConnection) {
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setConnectTimeout(10000);
    }
}
