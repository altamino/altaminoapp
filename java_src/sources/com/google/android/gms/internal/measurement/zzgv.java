package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
import com.google.common.base.g;

/* JADX INFO: loaded from: classes7.dex */
public final class zzgv {
    final String zza;
    final Uri zzb;
    final String zzc;
    final String zzd;
    final boolean zze;
    final boolean zzf;
    final boolean zzg;
    final g<Context, Boolean> zzh;
    private final boolean zzi;

    public zzgv(Uri uri) {
        this(null, uri, "", "", false, false, false, false, null);
    }

    public final zzgv zza() {
        return new zzgv(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, true, this.zzg, this.zzh);
    }

    private zzgv(String str, Uri uri, String str2, String str3, boolean z6, boolean z10, boolean z11, boolean z12, g<Context, Boolean> gVar) {
        this.zza = str;
        this.zzb = uri;
        this.zzc = str2;
        this.zzd = str3;
        this.zze = z6;
        this.zzf = z10;
        this.zzi = z11;
        this.zzg = z12;
        this.zzh = gVar;
    }

    public final zzgn<Double> zza(String str, double d) {
        return zzgn.zza(this, str, Double.valueOf(-3.0d), true);
    }

    public final zzgv zzb() {
        if (!this.zzc.isEmpty()) {
            throw new IllegalStateException("Cannot set GServices prefix and skip GServices");
        }
        g<Context, Boolean> gVar = this.zzh;
        if (gVar == null) {
            return new zzgv(this.zza, this.zzb, this.zzc, this.zzd, true, this.zzf, this.zzi, this.zzg, gVar);
        }
        throw new IllegalStateException("Cannot skip gservices both always and conditionally");
    }

    public final zzgn<Long> zza(String str, long j6) {
        return zzgn.zza(this, str, Long.valueOf(j6), true);
    }

    public final zzgn<String> zza(String str, String str2) {
        return zzgn.zza(this, str, str2, true);
    }

    public final zzgn<Boolean> zza(String str, boolean z6) {
        return zzgn.zza(this, str, Boolean.valueOf(z6), true);
    }
}
