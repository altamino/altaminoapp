package com.facebook.ads.redexgen.X;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Bf, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0437Bf extends AbstractC0434Bc {
    private final List<C0519Ej> A00;

    public C0437Bf(Context context, C0430Ay c0430Ay) {
        super(context, c0430Ay);
        this.A00 = new ArrayList();
    }

    public final void A02(C0519Ej c0519Ej) {
        if (!c0519Ej.A02().contains(EnumC0525Ep.A0A)) {
            this.A00.add(c0519Ej);
        }
    }

    public final void A03(EnumC0522Em enumC0522Em) {
        A01(enumC0522Em, this.A00);
    }
}
