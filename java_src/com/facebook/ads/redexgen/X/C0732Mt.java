package com.facebook.ads.redexgen.X;

import android.content.Context;
import java.io.File;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Mt, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0732Mt {
    private N8 A00 = new NI(67108864);
    private NA A01 = new NG();
    private File A02;

    public C0732Mt(Context context) {
        this.A02 = N7.A00(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C0726Mn A00() {
        return new C0726Mn(this.A02, this.A01, this.A00);
    }
}
