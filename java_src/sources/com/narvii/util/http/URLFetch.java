package com.narvii.util.http;

import com.fasterxml.jackson.databind.JsonNode;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.narvii.util.JacksonUtils;
import com.narvii.volley.util.HurlConnectionHelper;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes2.dex */
public class URLFetch {
    private boolean canceled;
    private HttpURLConnection conn;
    private Exception error;

    public void cancel() {
        this.canceled = true;
    }

    public Object getError() {
        return this.error;
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

    public byte[] getRaw(String str, int i10) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection()));
            this.conn = httpURLConnection;
            onConnected(str, httpURLConnection);
            InputStream inputStream = HurlConnectionHelper.getInputStream(httpURLConnection);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i10 > 0 ? i10 : 32768);
            byte[] bArr = new byte[4096];
            int i11 = 0;
            while (true) {
                if (i10 > 0 && i11 >= i10) {
                    break;
                }
                int i12 = inputStream.read(bArr, 0, i10 > 0 ? Math.min(4096, i10 - i11) : 4096);
                if (i12 == -1 || isCanceled()) {
                    break;
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, i12);
                i11 += i12;
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

    public boolean isCanceled() {
        return this.canceled;
    }

    protected void onConnected(String str, HttpURLConnection httpURLConnection) {
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setConnectTimeout(10000);
    }

    private static String getQueryPart(String str) {
        int iIndexOf = str.indexOf(63);
        int iIndexOf2 = str.indexOf(35);
        if (iIndexOf == -1 && iIndexOf2 == -1) {
            return str;
        }
        return iIndexOf == -1 ? str.substring(0, iIndexOf2) : str.substring(iIndexOf);
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
                    continue;
                }
            }
        }
        return null;
    }

    public String getUTF8String(String str, int i10) {
        byte[] raw = getRaw(str, i10);
        if (raw == null) {
            return null;
        }
        try {
            return new String(raw, "utf-8");
        } catch (Exception unused) {
            return null;
        }
    }
}
