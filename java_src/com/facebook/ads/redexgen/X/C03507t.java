package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.7t, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C03507t {
    public int A00;
    public int A01;
    public int A02;
    public int A03;

    private final C03507t A00(C8G c8g, int i) {
        View view = c8g.A0H;
        this.A01 = view.getLeft();
        this.A03 = view.getTop();
        this.A02 = view.getRight();
        this.A00 = view.getBottom();
        return this;
    }

    public final C03507t A01(C8G c8g) {
        return A00(c8g, 0);
    }
}
