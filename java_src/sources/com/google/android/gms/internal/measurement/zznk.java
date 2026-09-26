package com.google.android.gms.internal.measurement;

import com.google.common.base.u;
import com.google.common.base.v;

/* JADX INFO: loaded from: classes8.dex */
public final class zznk implements u<zznn> {
    private static zznk zza = new zznk();
    private final u<zznn> zzb = v.b(new zznm());

    public static boolean zza() {
        return ((zznn) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zznn) zza.get()).zzb();
    }

    @Override // com.google.common.base.u
    public final /* synthetic */ zznn get() {
        return this.zzb.get();
    }
}
