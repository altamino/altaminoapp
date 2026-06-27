package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcca implements zzdti<zzcbz> {
    private final zzdtu<String> zzfhk;
    private final zzdtu<zzbyt> zzfnh;
    private final zzdtu<zzbyn> zzfsd;

    private zzcca(zzdtu<String> zzdtuVar, zzdtu<zzbyn> zzdtuVar2, zzdtu<zzbyt> zzdtuVar3) {
        this.zzfhk = zzdtuVar;
        this.zzfsd = zzdtuVar2;
        this.zzfnh = zzdtuVar3;
    }

    public static zzcca zzi(zzdtu<String> zzdtuVar, zzdtu<zzbyn> zzdtuVar2, zzdtu<zzbyt> zzdtuVar3) {
        return new zzcca(zzdtuVar, zzdtuVar2, zzdtuVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcbz(this.zzfhk.get(), this.zzfsd.get(), this.zzfnh.get());
    }
}
