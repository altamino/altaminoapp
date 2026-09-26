package com.google.android.gms.internal.auth;

/* JADX INFO: loaded from: classes9.dex */
final class zzha extends zzgy {
    zzha() {
    }

    @Override // com.google.android.gms.internal.auth.zzgy
    final /* synthetic */ Object zzc() {
        return zzgz.zzc();
    }

    @Override // com.google.android.gms.internal.auth.zzgy
    final /* synthetic */ Object zza(Object obj) {
        return ((zzeu) obj).zzc;
    }

    @Override // com.google.android.gms.internal.auth.zzgy
    final void zze(Object obj) {
        ((zzeu) obj).zzc.zzd();
    }

    @Override // com.google.android.gms.internal.auth.zzgy
    final /* synthetic */ void zzf(Object obj, Object obj2) {
        ((zzeu) obj).zzc = (zzgz) obj2;
    }

    @Override // com.google.android.gms.internal.auth.zzgy
    final /* bridge */ /* synthetic */ Object zzb(Object obj, Object obj2) {
        zzgz zzgzVar = (zzgz) obj2;
        if (zzgzVar.equals(zzgz.zza())) {
            return obj;
        }
        return zzgz.zzb((zzgz) obj, zzgzVar);
    }

    @Override // com.google.android.gms.internal.auth.zzgy
    final /* bridge */ /* synthetic */ void zzd(Object obj, int i10, long j6) {
        ((zzgz) obj).zzf(i10 << 3, Long.valueOf(j6));
    }
}
