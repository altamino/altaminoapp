package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes7.dex */
public final class zzod implements zzoa {
    private static final zzgn<Boolean> zza;
    private static final zzgn<Boolean> zzb;
    private static final zzgn<Boolean> zzc;
    private static final zzgn<Boolean> zzd;

    @Override // com.google.android.gms.internal.measurement.zzoa
    public final boolean zza() {
        return true;
    }

    static {
        zzgv zzgvVarZza = new zzgv(zzgk.zza("com.google.android.gms.measurement")).zzb().zza();
        zza = zzgvVarZza.zza("measurement.service.audience.fix_skip_audience_with_failed_filters", true);
        zzb = zzgvVarZza.zza("measurement.audience.refresh_event_count_filters_timestamp", false);
        zzc = zzgvVarZza.zza("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", false);
        zzd = zzgvVarZza.zza("measurement.audience.use_bundle_timestamp_for_event_count_filters", false);
    }

    @Override // com.google.android.gms.internal.measurement.zzoa
    public final boolean zzb() {
        return zzb.zza().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzoa
    public final boolean zzc() {
        return zzc.zza().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzoa
    public final boolean zzd() {
        return zzd.zza().booleanValue();
    }
}
