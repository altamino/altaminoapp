package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzvp implements zzut {
    private final /* synthetic */ zzvn zzbwq;

    zzvp(zzvn zzvnVar) {
        this.zzbwq = zzvnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final void zzp(boolean z) {
        if (!z) {
            this.zzbwq.disconnect();
        } else {
            this.zzbwq.connect();
        }
    }
}
