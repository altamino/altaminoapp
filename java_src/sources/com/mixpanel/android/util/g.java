package com.mixpanel.android.util;

import android.content.Context;
import java.io.IOException;
import java.util.Map;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes9.dex */
public interface g {
    byte[] a(String str, f fVar, Map<String, Object> map, SSLSocketFactory sSLSocketFactory) throws a, IOException;

    boolean b(Context context, e eVar);

    void c();

    public static class a extends Exception {
        private final int mRetryAfter;

        public int a() {
            return this.mRetryAfter;
        }

        public a(String str, String str2) {
            int i10;
            super(str);
            try {
                i10 = Integer.parseInt(str2);
            } catch (NumberFormatException unused) {
                i10 = 0;
            }
            this.mRetryAfter = i10;
        }
    }
}
