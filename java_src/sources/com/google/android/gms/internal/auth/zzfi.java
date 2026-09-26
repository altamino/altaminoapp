package com.google.android.gms.internal.auth;

/* JADX INFO: loaded from: classes9.dex */
final class zzfi extends zzfk {
    /* synthetic */ zzfi(zzfh zzfhVar) {
        super(null);
    }

    private zzfi() {
        super(null);
    }

    @Override // com.google.android.gms.internal.auth.zzfk
    final void zza(Object obj, long j6) {
        ((zzey) zzhi.zzf(obj, j6)).zzb();
    }

    @Override // com.google.android.gms.internal.auth.zzfk
    final void zzb(Object obj, Object obj2, long j6) {
        zzey zzeyVarZzd = (zzey) zzhi.zzf(obj, j6);
        zzey zzeyVar = (zzey) zzhi.zzf(obj2, j6);
        int size = zzeyVarZzd.size();
        int size2 = zzeyVar.size();
        if (size > 0 && size2 > 0) {
            if (!zzeyVarZzd.zzc()) {
                zzeyVarZzd = zzeyVarZzd.zzd(size2 + size);
            }
            zzeyVarZzd.addAll(zzeyVar);
        }
        if (size > 0) {
            zzeyVar = zzeyVarZzd;
        }
        zzhi.zzp(obj, j6, zzeyVar);
    }
}
