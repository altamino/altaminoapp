package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.SystemClock;
import android.view.OrientationEventListener;
import javax.annotation.Nullable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class BP {

    @Nullable
    private static OrientationEventListener A02;
    private final BM A00;
    private final EnumC0525Ep A01;

    public BP(BM bm, EnumC0525Ep enumC0525Ep) {
        this.A00 = bm;
        this.A01 = enumC0525Ep;
    }

    public final synchronized void A01() {
        if (A02 != null) {
            A02.disable();
            A02 = null;
        }
    }

    public final synchronized void A02(Context context) {
        if (A02 == null) {
            A02 = new BO(this, context, 3, SystemClock.elapsedRealtime(), this.A01 == EnumC0525Ep.A0F ? null : new F8(context == null ? "" : context.getPackageName()));
            A02.enable();
        }
    }
}
