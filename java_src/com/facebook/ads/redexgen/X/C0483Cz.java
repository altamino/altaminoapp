package com.facebook.ads.redexgen.X;

import android.os.Build;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Cz, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0483Cz implements InterfaceC0442Bk {
    public final /* synthetic */ DB A00;

    public C0483Cz(DB db) {
        this.A00 = db;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        return this.A00.A04(Build.VERSION.SDK_INT);
    }
}
