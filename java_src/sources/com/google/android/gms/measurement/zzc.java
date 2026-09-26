package com.google.android.gms.measurement;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzil;
import com.google.android.gms.measurement.internal.zzim;
import com.google.android.gms.measurement.internal.zzjz;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class zzc extends AppMeasurement.zza {
    private final zzjz zza;

    public zzc(zzjz zzjzVar) {
        super();
        Preconditions.checkNotNull(zzjzVar);
        this.zza = zzjzVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzjz
    public final int zza(String str) {
        return this.zza.zza(str);
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.zza
    public final Boolean zzb() {
        return (Boolean) this.zza.zza(4);
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.zza
    public final Double zzc() {
        return (Double) this.zza.zza(2);
    }

    @Override // com.google.android.gms.measurement.internal.zzjz
    public final long zza() {
        return this.zza.zza();
    }

    @Override // com.google.android.gms.measurement.internal.zzjz
    public final void zzb(String str) {
        this.zza.zzb(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzjz
    public final void zzc(String str) {
        this.zza.zzc(str);
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.zza
    public final Integer zzd() {
        return (Integer) this.zza.zza(3);
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.zza
    public final Long zze() {
        return (Long) this.zza.zza(1);
    }

    @Override // com.google.android.gms.measurement.internal.zzjz
    public final String zzf() {
        return this.zza.zzf();
    }

    @Override // com.google.android.gms.measurement.internal.zzjz
    public final String zzg() {
        return this.zza.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.zzjz
    public final String zzh() {
        return this.zza.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.zzjz
    public final String zzi() {
        return this.zza.zzi();
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.zza
    public final String zzj() {
        return (String) this.zza.zza(0);
    }

    @Override // com.google.android.gms.measurement.internal.zzjz
    public final Object zza(int i10) {
        return this.zza.zza(i10);
    }

    @Override // com.google.android.gms.measurement.internal.zzjz
    public final void zzb(String str, String str2, Bundle bundle) {
        this.zza.zzb(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzjz
    public final List<Bundle> zza(String str, String str2) {
        return this.zza.zza(str, str2);
    }

    @Override // com.google.android.gms.measurement.internal.zzjz
    public final void zzb(zzil zzilVar) {
        this.zza.zzb(zzilVar);
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.zza
    public final Map<String, Object> zza(boolean z6) {
        return this.zza.zza((String) null, (String) null, z6);
    }

    @Override // com.google.android.gms.measurement.internal.zzjz
    public final Map<String, Object> zza(String str, String str2, boolean z6) {
        return this.zza.zza(str, str2, z6);
    }

    @Override // com.google.android.gms.measurement.internal.zzjz
    public final void zza(String str, String str2, Bundle bundle) {
        this.zza.zza(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzjz
    public final void zza(String str, String str2, Bundle bundle, long j6) {
        this.zza.zza(str, str2, bundle, j6);
    }

    @Override // com.google.android.gms.measurement.internal.zzjz
    public final void zza(zzil zzilVar) {
        this.zza.zza(zzilVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzjz
    public final void zza(Bundle bundle) {
        this.zza.zza(bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzjz
    public final void zza(zzim zzimVar) {
        this.zza.zza(zzimVar);
    }
}
