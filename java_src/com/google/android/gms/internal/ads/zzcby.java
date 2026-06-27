package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcby implements zzdti<zzcbw> {
    private final zzdtu<zzbyt> zzfnh;
    private final zzdtu<zzbyn> zzfsd;

    private zzcby(zzdtu<zzbyn> zzdtuVar, zzdtu<zzbyt> zzdtuVar2) {
        this.zzfsd = zzdtuVar;
        this.zzfnh = zzdtuVar2;
    }

    public static zzcby zzk(zzdtu<zzbyn> zzdtuVar, zzdtu<zzbyt> zzdtuVar2) {
        return new zzcby(zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcbw(this.zzfsd.get(), this.zzfnh.get());
    }
}
