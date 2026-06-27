package com.google.android.gms.internal.ads;

import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbtx implements zzdti<zzbrm> {
    private final zzbtv zzfky;
    private final zzdtu<Set<zzbuz<zzbro>>> zzfkz;

    private zzbtx(zzbtv zzbtvVar, zzdtu<Set<zzbuz<zzbro>>> zzdtuVar) {
        this.zzfky = zzbtvVar;
        this.zzfkz = zzdtuVar;
    }

    public static zzbtx zza(zzbtv zzbtvVar, zzdtu<Set<zzbuz<zzbro>>> zzdtuVar) {
        return new zzbtx(zzbtvVar, zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzbrm) zzdto.zza(this.zzfky.zzc(this.zzfkz.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
