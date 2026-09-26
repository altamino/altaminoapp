package com.google.android.gms.internal.measurement;

import com.google.common.base.u;
import com.google.common.base.v;

/* JADX INFO: loaded from: classes7.dex */
public final class zzqd implements u<zzqc> {
    private static zzqd zza = new zzqd();
    private final u<zzqc> zzb = v.b(new zzqf());

    public static boolean zza() {
        return ((zzqc) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzqc) zza.get()).zzb();
    }

    public static boolean zzc() {
        return ((zzqc) zza.get()).zzc();
    }

    @Override // com.google.common.base.u
    public final /* synthetic */ zzqc get() {
        return this.zzb.get();
    }
}
