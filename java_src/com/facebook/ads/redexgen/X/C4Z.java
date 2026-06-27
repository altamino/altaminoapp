package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.List;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.4Z, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C4Z implements C5e {
    private int A00;

    @Nullable
    private String A01;

    @Nullable
    private Map<String, List<String>> A02;

    @Nullable
    private byte[] A03;

    public C4Z(HttpURLConnection httpURLConnection, byte[] bArr) {
        try {
            this.A00 = httpURLConnection.getResponseCode();
            this.A01 = httpURLConnection.getURL().toString();
        } catch (IOException e) {
            e.printStackTrace();
        }
        this.A02 = httpURLConnection.getHeaderFields();
        this.A03 = bArr;
    }

    @Override // com.facebook.ads.redexgen.X.C5e
    @Nullable
    public final byte[] A3G() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.C5e
    @Nullable
    public final String A3H() {
        C4Z c4z = this;
        String str = null;
        char c = c4z.A03 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c4z = c4z;
                    str = new String(c4z.A03);
                    c = 3;
                    break;
                case 3:
                    return str;
                case 4:
                    str = null;
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C5e
    @Nullable
    public final Map<String, List<String>> A3X() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.C5e
    public final int A3m() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.C5e
    @Nullable
    public final String getUrl() {
        return this.A01;
    }
}
