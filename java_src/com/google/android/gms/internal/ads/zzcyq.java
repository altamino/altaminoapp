package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcyq implements zzdti<zzcym> {
    private final zzdtu<zzcyk> zzfgf;
    private final zzcyo zzglu;
    private final zzdtu<String> zzglw;

    private zzcyq(zzcyo zzcyoVar, zzdtu<zzcyk> zzdtuVar, zzdtu<String> zzdtuVar2) {
        this.zzglu = zzcyoVar;
        this.zzfgf = zzdtuVar;
        this.zzglw = zzdtuVar2;
    }

    public static zzcyq zza(zzcyo zzcyoVar, zzdtu<zzcyk> zzdtuVar, zzdtu<String> zzdtuVar2) {
        return new zzcyq(zzcyoVar, zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzcym) zzdto.zza(this.zzfgf.get().zzfw(this.zzglw.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
