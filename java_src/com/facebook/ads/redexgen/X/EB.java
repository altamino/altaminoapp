package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.SystemClock;
import java.util.HashMap;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class EB extends C0454Bw {
    private final Context A00;

    public EB(Context context, C0430Ay c0430Ay) {
        super(context, c0430Ay);
        this.A00 = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"Nullable Dereference"})
    public AbstractC0528Es A02(HashMap<String, EA> map) {
        return new F3(SystemClock.elapsedRealtime(), A02(), map, F9.A0C);
    }

    public final InterfaceC0442Bk A0G(List<C0521El> list, E9 e9) {
        return new E7(this, list, e9);
    }
}
