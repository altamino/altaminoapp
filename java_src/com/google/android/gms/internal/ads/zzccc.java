package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzccc implements zzdti<zzccb> {
    private final zzdtu<String> zzfhk;
    private final zzdtu<zzbyt> zzfnh;
    private final zzdtu<zzbyn> zzfsd;

    private zzccc(zzdtu<String> zzdtuVar, zzdtu<zzbyn> zzdtuVar2, zzdtu<zzbyt> zzdtuVar3) {
        this.zzfhk = zzdtuVar;
        this.zzfsd = zzdtuVar2;
        this.zzfnh = zzdtuVar3;
    }

    public static zzccc zzj(zzdtu<String> zzdtuVar, zzdtu<zzbyn> zzdtuVar2, zzdtu<zzbyt> zzdtuVar3) {
        return new zzccc(zzdtuVar, zzdtuVar2, zzdtuVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzccb(this.zzfhk.get(), this.zzfsd.get(), this.zzfnh.get());
    }
}
