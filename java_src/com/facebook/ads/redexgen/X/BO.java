package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.view.OrientationEventListener;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class BO extends OrientationEventListener {
    public final /* synthetic */ long A00;
    public final /* synthetic */ BP A01;
    public final /* synthetic */ F8 A02;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BO(BP bp, Context context, int i, long j, F8 f8) {
        super(context, i);
        this.A01 = bp;
        this.A00 = j;
        this.A02 = f8;
    }

    @Override // android.view.OrientationEventListener
    public final void onOrientationChanged(int i) {
        this.A01.A00.A02(new C0534Ey(this.A00, this.A02, i), BL.A09);
    }
}
