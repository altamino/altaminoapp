package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcch implements zzdti<zzccg> {
    private final zzdtu<String> zzfhk;
    private final zzdtu<zzbyt> zzfnh;
    private final zzdtu<zzbyn> zzfsd;

    private zzcch(zzdtu<String> zzdtuVar, zzdtu<zzbyn> zzdtuVar2, zzdtu<zzbyt> zzdtuVar3) {
        this.zzfhk = zzdtuVar;
        this.zzfsd = zzdtuVar2;
        this.zzfnh = zzdtuVar3;
    }

    public static zzcch zzk(zzdtu<String> zzdtuVar, zzdtu<zzbyn> zzdtuVar2, zzdtu<zzbyt> zzdtuVar3) {
        return new zzcch(zzdtuVar, zzdtuVar2, zzdtuVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzccg(this.zzfhk.get(), this.zzfsd.get(), this.zzfnh.get());
    }
}
