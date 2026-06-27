package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbqy;

/* loaded from: classes2.dex */
public final class zzbrf implements zzdti<zzbqy.zza> {
    private final zzbqy zzfjw;

    private zzbrf(zzbqy zzbqyVar) {
        this.zzfjw = zzbqyVar;
    }

    public static zzbrf zzj(zzbqy zzbqyVar) {
        return new zzbrf(zzbqyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzbqy.zza) zzdto.zza(this.zzfjw.zzagd(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
