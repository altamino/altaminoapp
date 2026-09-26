package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes10.dex */
final class zzfo extends zzfq {
    /* synthetic */ zzfo(zzfn zzfnVar) {
        super(null);
    }

    private zzfo() {
        super(null);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfq
    final void zza(Object obj, long j6) {
        ((zzfc) zzhn.zzf(obj, j6)).zzb();
    }

    @Override // com.google.android.gms.internal.play_billing.zzfq
    final void zzb(Object obj, Object obj2, long j6) {
        zzfc zzfcVarZzd = (zzfc) zzhn.zzf(obj, j6);
        zzfc zzfcVar = (zzfc) zzhn.zzf(obj2, j6);
        int size = zzfcVarZzd.size();
        int size2 = zzfcVar.size();
        if (size > 0 && size2 > 0) {
            if (!zzfcVarZzd.zzc()) {
                zzfcVarZzd = zzfcVarZzd.zzd(size2 + size);
            }
            zzfcVarZzd.addAll(zzfcVar);
        }
        if (size > 0) {
            zzfcVar = zzfcVarZzd;
        }
        zzhn.zzs(obj, j6, zzfcVar);
    }
}
