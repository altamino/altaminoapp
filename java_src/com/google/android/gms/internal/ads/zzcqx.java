package com.google.android.gms.internal.ads;

import java.util.Set;

/* loaded from: classes2.dex */
public final class zzcqx implements zzdti<Set<String>> {
    private final zzcqt zzgfu;

    public zzcqx(zzcqt zzcqtVar) {
        this.zzgfu = zzcqtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (Set) zzdto.zza(this.zzgfu.zzalj(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
