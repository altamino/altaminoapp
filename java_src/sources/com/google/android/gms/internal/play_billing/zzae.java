package com.google.android.gms.internal.play_billing;

import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
final class zzae extends zzaf {
    final transient int zza;
    final transient int zzb;
    final /* synthetic */ zzaf zzc;

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.play_billing.zzac
    final boolean zzf() {
        return true;
    }

    @Override // com.google.android.gms.internal.play_billing.zzac
    final Object[] zzg() {
        return this.zzc.zzg();
    }

    zzae(zzaf zzafVar, int i10, int i11) {
        this.zzc = zzafVar;
        this.zza = i10;
        this.zzb = i11;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        zzx.zza(i10, this.zzb, "index");
        return this.zzc.get(i10 + this.zza);
    }

    @Override // com.google.android.gms.internal.play_billing.zzac
    final int zzb() {
        return this.zzc.zzc() + this.zza + this.zzb;
    }

    @Override // com.google.android.gms.internal.play_billing.zzac
    final int zzc() {
        return this.zzc.zzc() + this.zza;
    }

    @Override // com.google.android.gms.internal.play_billing.zzaf
    /* JADX INFO: renamed from: zzh */
    public final zzaf subList(int i10, int i11) {
        zzx.zzd(i10, i11, this.zzb);
        int i12 = this.zza;
        return this.zzc.subList(i10 + i12, i11 + i12);
    }

    @Override // com.google.android.gms.internal.play_billing.zzaf, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i10, int i11) {
        return subList(i10, i11);
    }
}
