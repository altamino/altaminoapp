package com.facebook.ads.redexgen.X;

import android.os.Build;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Cw, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0480Cw implements InterfaceC0442Bk {
    public final /* synthetic */ DB A00;

    public C0480Cw(DB db) {
        this.A00 = db;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        return this.A00.A08(Build.USER);
    }
}
