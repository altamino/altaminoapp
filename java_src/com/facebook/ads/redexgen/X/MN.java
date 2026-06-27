package com.facebook.ads.redexgen.X;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public interface MN {
    boolean A5I(C0715Mb c0715Mb);

    HttpURLConnection A6R(String str) throws IOException;

    InputStream A6S(HttpURLConnection httpURLConnection) throws IOException;

    OutputStream A6T(HttpURLConnection httpURLConnection) throws IOException;

    void A6a(HttpURLConnection httpURLConnection, MZ mz, String str) throws IOException;

    byte[] A6j(InputStream inputStream) throws IOException;

    void A7K(OutputStream outputStream, byte[] bArr) throws IOException;
}
