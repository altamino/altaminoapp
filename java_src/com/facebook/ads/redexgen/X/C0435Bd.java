package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Bd, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0435Bd extends AbstractC0434Bc implements BV {
    private BH A00;
    private final C0430Ay A01;
    private final Map<Integer, C0519Ej> A02;

    @SuppressLint({"UseSparseArrays"})
    public C0435Bd(Context context, C0430Ay c0430Ay) {
        super(context, c0430Ay);
        this.A02 = new HashMap();
        this.A01 = c0430Ay;
    }

    public final void A02(C0519Ej c0519Ej) {
        this.A02.put(Integer.valueOf(c0519Ej.A00()), c0519Ej);
    }

    public final void A03(EnumC0522Em enumC0522Em, Context context) {
        this.A00 = BH.A00(context, this.A01);
        this.A00.A04(this.A02, enumC0522Em);
    }

    @Override // com.facebook.ads.redexgen.X.BV
    public final void A6U() {
        if (this.A00 != null) {
            this.A00.A03();
        }
    }
}
