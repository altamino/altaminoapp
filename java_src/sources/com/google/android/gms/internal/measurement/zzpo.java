package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes7.dex */
public final class zzpo implements zzpp {
    private static final zzgn<Boolean> zza;
    private static final zzgn<Long> zzb;

    @Override // com.google.android.gms.internal.measurement.zzpp
    public final boolean zza() {
        return true;
    }

    static {
        zzgv zzgvVarZza = new zzgv(zzgk.zza("com.google.android.gms.measurement")).zzb().zza();
        zza = zzgvVarZza.zza("measurement.remove_app_background.client", false);
        zzb = zzgvVarZza.zza("measurement.id.remove_app_background.client", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzpp
    public final boolean zzb() {
        return zza.zza().booleanValue();
    }
}
