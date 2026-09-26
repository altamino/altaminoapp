package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes7.dex */
public final class zzqf implements zzqc {
    private static final zzgn<Boolean> zza;
    private static final zzgn<Boolean> zzb;

    @Override // com.google.android.gms.internal.measurement.zzqc
    public final boolean zza() {
        return true;
    }

    static {
        zzgv zzgvVarZza = new zzgv(zzgk.zza("com.google.android.gms.measurement")).zzb().zza();
        zza = zzgvVarZza.zza("measurement.sgtm.client.dev", false);
        zzb = zzgvVarZza.zza("measurement.sgtm.service", false);
    }

    @Override // com.google.android.gms.internal.measurement.zzqc
    public final boolean zzb() {
        return zza.zza().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzqc
    public final boolean zzc() {
        return zzb.zza().booleanValue();
    }
}
