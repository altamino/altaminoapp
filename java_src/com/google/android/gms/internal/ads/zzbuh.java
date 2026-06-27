package com.google.android.gms.internal.ads;

import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbuh implements zzdti<Set<zzbuz<zzbsr>>> {
    private final zzbtv zzfky;

    private zzbuh(zzbtv zzbtvVar) {
        this.zzfky = zzbtvVar;
    }

    public static zzbuh zzn(zzbtv zzbtvVar) {
        return new zzbuh(zzbtvVar);
    }

    public static Set<zzbuz<zzbsr>> zzo(zzbtv zzbtvVar) {
        return (Set) zzdto.zza(zzbtvVar.zzagm(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return zzo(this.zzfky);
    }
}
