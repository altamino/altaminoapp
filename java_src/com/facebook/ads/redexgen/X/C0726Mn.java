package com.facebook.ads.redexgen.X;

import java.io.File;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Mn, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0726Mn {
    public final N8 A00;
    public final NA A01;
    public final File A02;

    public C0726Mn(File file, NA na, N8 n8) {
        this.A02 = file;
        this.A01 = na;
        this.A00 = n8;
    }

    public final File A00(String str) {
        return new File(this.A02, this.A01.A39(str));
    }
}
