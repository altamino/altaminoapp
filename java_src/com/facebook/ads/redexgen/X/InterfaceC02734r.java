package com.facebook.ads.redexgen.X;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.4r, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public interface InterfaceC02734r {
    boolean A5J(C02564a c02564a);

    HttpURLConnection A6R(String str) throws IOException;

    InputStream A6S(HttpURLConnection httpURLConnection) throws IOException;

    OutputStream A6T(HttpURLConnection httpURLConnection) throws IOException;

    void A6b(HttpURLConnection httpURLConnection, EnumC02644i enumC02644i, String str) throws IOException;

    byte[] A6j(InputStream inputStream) throws IOException;

    void A7K(OutputStream outputStream, byte[] bArr) throws IOException;
}
