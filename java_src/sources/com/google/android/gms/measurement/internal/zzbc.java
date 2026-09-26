package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes10.dex */
final class zzbc {
    final String zza;
    final String zzb;
    final long zzc;
    final long zzd;
    final long zze;
    final long zzf;
    final long zzg;
    final Long zzh;
    final Long zzi;
    final Long zzj;
    final Boolean zzk;

    zzbc(String str, String str2, long j6, long j10, long j11, long j12, Long l, Long l6, Long l10, Boolean bool) {
        this(str, str2, 0L, 0L, 0L, j11, 0L, null, null, null, null);
    }

    final zzbc zza(Long l, Long l6, Boolean bool) {
        return new zzbc(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, l, l6, (bool == null || bool.booleanValue()) ? bool : null);
    }

    zzbc(String str, String str2, long j6, long j10, long j11, long j12, long j13, Long l, Long l6, Long l10, Boolean bool) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkArgument(j6 >= 0);
        Preconditions.checkArgument(j10 >= 0);
        Preconditions.checkArgument(j11 >= 0);
        Preconditions.checkArgument(j13 >= 0);
        this.zza = str;
        this.zzb = str2;
        this.zzc = j6;
        this.zzd = j10;
        this.zze = j11;
        this.zzf = j12;
        this.zzg = j13;
        this.zzh = l;
        this.zzi = l6;
        this.zzj = l10;
        this.zzk = bool;
    }

    final zzbc zza(long j6, long j10) {
        return new zzbc(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, j6, Long.valueOf(j10), this.zzi, this.zzj, this.zzk);
    }

    final zzbc zza(long j6) {
        return new zzbc(this.zza, this.zzb, this.zzc, this.zzd, this.zze, j6, this.zzg, this.zzh, this.zzi, this.zzj, this.zzk);
    }
}
