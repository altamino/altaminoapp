package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes7.dex */
public final class zzpt implements zzpq {
    private static final zzgn<Boolean> zza = new zzgv(zzgk.zza("com.google.android.gms.measurement")).zzb().zza().zza("measurement.sessionid.enable_client_session_id", true);

    @Override // com.google.android.gms.internal.measurement.zzpq
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzpq
    public final boolean zzb() {
        return zza.zza().booleanValue();
    }
}
