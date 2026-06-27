package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzbrb implements zzdti<Context> {
    private final zzdtu<Context> zzfjq;
    private final zzbqy zzfjw;

    private zzbrb(zzbqy zzbqyVar, zzdtu<Context> zzdtuVar) {
        this.zzfjw = zzbqyVar;
        this.zzfjq = zzdtuVar;
    }

    public static zzbrb zza(zzbqy zzbqyVar, zzdtu<Context> zzdtuVar) {
        return new zzbrb(zzbqyVar, zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (Context) zzdto.zza(this.zzfjw.zzbs(this.zzfjq.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
