package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzbjq implements zzdti<Context> {
    private final zzbjn zzeof;

    public zzbjq(zzbjn zzbjnVar) {
        this.zzeof = zzbjnVar;
    }

    public static Context zza(zzbjn zzbjnVar) {
        return (Context) zzdto.zza(zzbjnVar.zzaco(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return zza(this.zzeof);
    }
}
