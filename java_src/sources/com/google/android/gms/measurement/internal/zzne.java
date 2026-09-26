package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes11.dex */
final class zzne {
    final String zza;
    final String zzb;
    final String zzc;
    final long zzd;
    final Object zze;

    zzne(String str, String str2, String str3, long j6, Object obj) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str3);
        Preconditions.checkNotNull(obj);
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = j6;
        this.zze = obj;
    }
}
