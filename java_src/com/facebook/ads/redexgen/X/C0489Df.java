package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.SystemClock;
import java.util.HashMap;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Df, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0489Df extends C0454Bw {
    public C0489Df(Context context, C0430Ay c0430Ay) {
        super(context, c0430Ay);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"Nullable Dereference"})
    public AbstractC0528Es A01(HashMap<String, C0488De> map) {
        return new F3(SystemClock.elapsedRealtime(), A02(), map, F9.A0C);
    }

    public final InterfaceC0442Bk A0G() {
        return new C0486Dc(this);
    }
}
