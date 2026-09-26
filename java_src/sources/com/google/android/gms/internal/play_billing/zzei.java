package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes10.dex */
final class zzei {
    private final Object zza;
    private final int zzb;

    zzei(Object obj, int i10) {
        this.zza = obj;
        this.zzb = i10;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzei)) {
            return false;
        }
        zzei zzeiVar = (zzei) obj;
        return this.zza == zzeiVar.zza && this.zzb == zzeiVar.zzb;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.zza) * 65535) + this.zzb;
    }
}
