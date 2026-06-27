package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbzh implements zzdti<zzbyt> {
    private final zzbzf zzfpe;

    private zzbzh(zzbzf zzbzfVar) {
        this.zzfpe = zzbzfVar;
    }

    public static zzbzh zza(zzbzf zzbzfVar) {
        return new zzbzh(zzbzfVar);
    }

    public static zzbyt zzb(zzbzf zzbzfVar) {
        return (zzbyt) zzdto.zza(zzbzfVar.zzaiq(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return zzb(this.zzfpe);
    }
}
