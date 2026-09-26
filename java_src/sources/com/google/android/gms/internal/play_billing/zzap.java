package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes10.dex */
final class zzap extends zzaf {
    private final transient Object[] zza;
    private final transient int zzb;
    private final transient int zzc;

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.play_billing.zzac
    final boolean zzf() {
        return true;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        zzx.zza(i10, this.zzc, "index");
        Object obj = this.zza[i10 + i10 + this.zzb];
        obj.getClass();
        return obj;
    }

    zzap(Object[] objArr, int i10, int i11) {
        this.zza = objArr;
        this.zzb = i10;
        this.zzc = i11;
    }
}
