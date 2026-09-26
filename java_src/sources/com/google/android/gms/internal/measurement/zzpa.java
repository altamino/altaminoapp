package com.google.android.gms.internal.measurement;

import com.google.common.base.u;
import com.google.common.base.v;

/* JADX INFO: loaded from: classes7.dex */
public final class zzpa implements u<zzpd> {
    private static zzpa zza = new zzpa();
    private final u<zzpd> zzb = v.b(new zzpc());

    public static double zza() {
        return ((zzpd) zza.get()).zza();
    }

    public static long zzb() {
        return ((zzpd) zza.get()).zzb();
    }

    public static long zzc() {
        return ((zzpd) zza.get()).zzc();
    }

    public static String zzd() {
        return ((zzpd) zza.get()).zzd();
    }

    public static boolean zze() {
        return ((zzpd) zza.get()).zze();
    }

    @Override // com.google.common.base.u
    public final /* synthetic */ zzpd get() {
        return this.zzb.get();
    }
}
