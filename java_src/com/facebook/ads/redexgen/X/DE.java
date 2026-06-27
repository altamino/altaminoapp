package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.SystemClock;
import java.util.HashMap;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class DE extends C0454Bw {
    private static PackageManager A00;

    public DE(Context context, C0430Ay c0430Ay) {
        super(context, c0430Ay);
        A00 = context.getPackageManager();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"Nullable Dereference"})
    public AbstractC0528Es A02(HashMap<String, DD> map) {
        return new F3(SystemClock.elapsedRealtime(), A02(), map, F9.A0C);
    }

    public final InterfaceC0442Bk A0G(List<C0521El> list) {
        return new DC(this, list);
    }
}
