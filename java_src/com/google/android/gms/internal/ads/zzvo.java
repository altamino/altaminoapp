package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzvo implements Runnable {
    private final /* synthetic */ zzvn zzbwq;

    zzvo(zzvn zzvnVar) {
        this.zzbwq = zzvnVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzbwq.disconnect();
    }
}
