package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
final class zzaf {
    final String name;
    final String zzcf;
    final long zzfe;
    final long zzff;
    final long zzfg;
    final long zzfh;
    final Long zzfi;
    final Long zzfj;
    final Long zzfk;
    final Boolean zzfl;

    zzaf(String str, String str2, long j, long j2, long j3, long j4, Long l, Long l2, Long l3, Boolean bool) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkArgument(j >= 0);
        Preconditions.checkArgument(j2 >= 0);
        Preconditions.checkArgument(j4 >= 0);
        this.zzcf = str;
        this.name = str2;
        this.zzfe = j;
        this.zzff = j2;
        this.zzfg = j3;
        this.zzfh = j4;
        this.zzfi = l;
        this.zzfj = l2;
        this.zzfk = l3;
        this.zzfl = bool;
    }

    final zzaf zzw(long j) {
        return new zzaf(this.zzcf, this.name, this.zzfe, this.zzff, j, this.zzfh, this.zzfi, this.zzfj, this.zzfk, this.zzfl);
    }

    final zzaf zza(long j, long j2) {
        return new zzaf(this.zzcf, this.name, this.zzfe, this.zzff, this.zzfg, j, Long.valueOf(j2), this.zzfj, this.zzfk, this.zzfl);
    }

    final zzaf zza(Long l, Long l2, Boolean bool) {
        return new zzaf(this.zzcf, this.name, this.zzfe, this.zzff, this.zzfg, this.zzfh, this.zzfi, l, l2, (bool == null || bool.booleanValue()) ? bool : null);
    }
}
