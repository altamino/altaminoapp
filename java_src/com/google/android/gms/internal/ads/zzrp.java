package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public abstract class zzrp {
    private zzrq zzblx;

    public abstract zzrr zza(zzlp[] zzlpVarArr, zzrb zzrbVar) throws zzku;

    public abstract void zzd(Object obj);

    public final void zza(zzrq zzrqVar) {
        this.zzblx = zzrqVar;
    }

    protected final void invalidate() {
        zzrq zzrqVar = this.zzblx;
        if (zzrqVar != null) {
            zzrqVar.zzgv();
        }
    }
}
