package com.google.android.gms.measurement.internal;

import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
final class zzgu implements com.google.android.gms.internal.measurement.zzv {
    private final /* synthetic */ zzgp zza;

    zzgu(zzgp zzgpVar) {
        this.zza = zzgpVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void zza(com.google.android.gms.internal.measurement.zzs zzsVar, String str, List<String> list, boolean z6, boolean z10) {
        zzft zzftVarZzc;
        int i10 = zzgw.zza[zzsVar.ordinal()];
        if (i10 == 1) {
            zzftVarZzc = this.zza.zzj().zzc();
        } else if (i10 != 2) {
            if (i10 != 3) {
                zzftVarZzc = i10 != 4 ? this.zza.zzj().zzn() : this.zza.zzj().zzp();
            } else if (z6) {
                zzftVarZzc = this.zza.zzj().zzw();
            } else {
                zzftVarZzc = !z10 ? this.zza.zzj().zzv() : this.zza.zzj().zzu();
            }
        } else if (z6) {
            zzftVarZzc = this.zza.zzj().zzm();
        } else {
            zzftVarZzc = !z10 ? this.zza.zzj().zzh() : this.zza.zzj().zzg();
        }
        int size = list.size();
        if (size == 1) {
            zzftVarZzc.zza(str, list.get(0));
            return;
        }
        if (size == 2) {
            zzftVarZzc.zza(str, list.get(0), list.get(1));
        } else if (size != 3) {
            zzftVarZzc.zza(str);
        } else {
            zzftVarZzc.zza(str, list.get(0), list.get(1), list.get(2));
        }
    }
}
