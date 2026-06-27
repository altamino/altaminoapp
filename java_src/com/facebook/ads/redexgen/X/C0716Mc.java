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
/* renamed from: com.facebook.ads.redexgen.X.Mc, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0716Mc {
    private int A00;

    @Nullable
    private String A01;

    @Nullable
    private Map<String, List<String>> A02;

    @Nullable
    private byte[] A03;

    public C0716Mc(C5e c5e) {
        this.A00 = c5e.A3m();
        this.A01 = c5e.getUrl();
        this.A02 = c5e.A3X();
        this.A03 = c5e.A3G();
    }

    public C0716Mc(HttpURLConnection httpURLConnection, byte[] bArr) {
        try {
            this.A00 = httpURLConnection.getResponseCode();
            this.A01 = httpURLConnection.getURL().toString();
        } catch (IOException e) {
            e.printStackTrace();
        }
        this.A02 = httpURLConnection.getHeaderFields();
        this.A03 = bArr;
    }

    public final int A00() {
        return this.A00;
    }

    @Nullable
    public final String A01() {
        C0716Mc c0716Mc = this;
        String str = null;
        char c = c0716Mc.A03 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0716Mc = c0716Mc;
                    str = new String(c0716Mc.A03);
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

    @Nullable
    public final String A02() {
        return this.A01;
    }

    @Nullable
    public final Map<String, List<String>> A03() {
        return this.A02;
    }

    @Nullable
    public final byte[] A04() {
        return this.A03;
    }
}
