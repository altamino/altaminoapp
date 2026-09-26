package com.bytedance.tea.common.utility;

import android.util.Pair;
import java.io.ByteArrayOutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPOutputStream;
import org.apache.http.entity.mime.MIME;
import org.jsoup.helper.HttpConnection;

/* JADX INFO: loaded from: classes6.dex */
public abstract class NetworkClient {
    private static NetworkClient sDefault = new b();

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f899a;
    }

    public static byte[] compressWithgzip(byte[] bArr) throws Exception {
        GZIPOutputStream gZIPOutputStream = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(8192);
            GZIPOutputStream gZIPOutputStream2 = new GZIPOutputStream(byteArrayOutputStream);
            try {
                gZIPOutputStream2.write(bArr);
                gZIPOutputStream2.close();
                return byteArrayOutputStream.toByteArray();
            } catch (Throwable th) {
                th = th;
                gZIPOutputStream = gZIPOutputStream2;
                if (gZIPOutputStream != null) {
                    gZIPOutputStream.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static NetworkClient getDefault() {
        return sDefault;
    }

    public static void setDefault(NetworkClient networkClient) {
        if (networkClient == null || networkClient == sDefault) {
            return;
        }
        sDefault = networkClient;
    }

    public String get(String str) throws Exception {
        a aVar = new a();
        aVar.f899a = true;
        return get(str, null, aVar);
    }

    public abstract String get(String str, Map<String, String> map, a aVar) throws Exception;

    public String post(String str, List<Pair<String, String>> list) throws CommonHttpException {
        a aVar = new a();
        aVar.f899a = true;
        return post(str, list, (Map<String, String>) null, aVar);
    }

    public abstract String post(String str, List<Pair<String, String>> list, Map<String, String> map, a aVar) throws CommonHttpException;

    public abstract String post(String str, byte[] bArr, Map<String, String> map, a aVar) throws CommonHttpException;

    public String post(String str, byte[] bArr, boolean z6, String str2, boolean z10) throws CommonHttpException {
        HashMap map = new HashMap();
        if (z6) {
            try {
                bArr = compressWithgzip(bArr);
                map.put(HttpConnection.CONTENT_ENCODING, "gzip");
            } catch (Exception e) {
                throw new CommonHttpException(0, e.getMessage());
            }
        }
        if (!d.a(str2)) {
            map.put(MIME.CONTENT_TYPE, str2);
        }
        a aVar = new a();
        aVar.f899a = z10;
        return post(str, bArr, map, aVar);
    }
}
