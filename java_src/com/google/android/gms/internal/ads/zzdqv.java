package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes2.dex */
final class zzdqv extends zzdqt<zzdqu, zzdqu> {
    zzdqv() {
    }

    @Override // com.google.android.gms.internal.ads.zzdqt
    final boolean zza(zzdqa zzdqaVar) {
        return false;
    }

    private static void zza(Object obj, zzdqu zzdquVar) {
        ((zzdob) obj).zzhhd = zzdquVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdqt
    final void zzaa(Object obj) {
        ((zzdob) obj).zzhhd.zzavj();
    }

    @Override // com.google.android.gms.internal.ads.zzdqt
    final /* synthetic */ int zzak(zzdqu zzdquVar) {
        return zzdquVar.zzaxj();
    }

    @Override // com.google.android.gms.internal.ads.zzdqt
    final /* synthetic */ int zzaq(zzdqu zzdquVar) {
        return zzdquVar.zzbab();
    }

    @Override // com.google.android.gms.internal.ads.zzdqt
    final /* synthetic */ zzdqu zzh(zzdqu zzdquVar, zzdqu zzdquVar2) {
        zzdqu zzdquVar3 = zzdquVar;
        zzdqu zzdquVar4 = zzdquVar2;
        return zzdquVar4.equals(zzdqu.zzazz()) ? zzdquVar3 : zzdqu.zza(zzdquVar3, zzdquVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzdqt
    final /* synthetic */ void zzc(zzdqu zzdquVar, zzdro zzdroVar) throws IOException {
        zzdquVar.zza(zzdroVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdqt
    final /* synthetic */ void zza(zzdqu zzdquVar, zzdro zzdroVar) throws IOException {
        zzdquVar.zzb(zzdroVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdqt
    final /* synthetic */ void zzg(Object obj, zzdqu zzdquVar) {
        zza(obj, zzdquVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdqt
    final /* synthetic */ zzdqu zzap(Object obj) {
        zzdqu zzdquVar = ((zzdob) obj).zzhhd;
        if (zzdquVar != zzdqu.zzazz()) {
            return zzdquVar;
        }
        zzdqu zzdquVarZzbaa = zzdqu.zzbaa();
        zza(obj, zzdquVarZzbaa);
        return zzdquVarZzbaa;
    }

    @Override // com.google.android.gms.internal.ads.zzdqt
    final /* synthetic */ zzdqu zzao(Object obj) {
        return ((zzdob) obj).zzhhd;
    }

    @Override // com.google.android.gms.internal.ads.zzdqt
    final /* synthetic */ void zzf(Object obj, zzdqu zzdquVar) {
        zza(obj, zzdquVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdqt
    final /* synthetic */ zzdqu zzah(zzdqu zzdquVar) {
        zzdqu zzdquVar2 = zzdquVar;
        zzdquVar2.zzavj();
        return zzdquVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdqt
    final /* synthetic */ zzdqu zzazy() {
        return zzdqu.zzbaa();
    }

    @Override // com.google.android.gms.internal.ads.zzdqt
    final /* synthetic */ void zza(zzdqu zzdquVar, int i, zzdqu zzdquVar2) {
        zzdquVar.zzc((i << 3) | 3, zzdquVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdqt
    final /* synthetic */ void zza(zzdqu zzdquVar, int i, zzdmr zzdmrVar) {
        zzdquVar.zzc((i << 3) | 2, zzdmrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdqt
    final /* synthetic */ void zzb(zzdqu zzdquVar, int i, long j) {
        zzdquVar.zzc((i << 3) | 1, Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.ads.zzdqt
    final /* synthetic */ void zzc(zzdqu zzdquVar, int i, int i2) {
        zzdquVar.zzc((i << 3) | 5, Integer.valueOf(i2));
    }

    @Override // com.google.android.gms.internal.ads.zzdqt
    final /* synthetic */ void zza(zzdqu zzdquVar, int i, long j) {
        zzdquVar.zzc(i << 3, Long.valueOf(j));
    }
}
