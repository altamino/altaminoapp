package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes7.dex */
public final class zznx implements zznu {
    private static final zzgn<Boolean> zza = new zzgv(zzgk.zza("com.google.android.gms.measurement")).zzb().zza().zza("measurement.client.firebase_feature_rollout.v1.enable", true);

    @Override // com.google.android.gms.internal.measurement.zznu
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zznu
    public final boolean zzb() {
        return zza.zza().booleanValue();
    }
}
