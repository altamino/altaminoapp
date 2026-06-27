package com.facebook.ads.redexgen.X;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Qs, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0835Qs extends BroadcastReceiver {
    public final /* synthetic */ C0836Qt A00;

    private C0835Qs(C0836Qt c0836Qt) {
        this.A00 = c0836Qt;
    }

    public /* synthetic */ C0835Qs(C0836Qt c0836Qt, C0824Qh c0824Qh) {
        this(c0836Qt);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.A00.A0F = true;
    }
}
