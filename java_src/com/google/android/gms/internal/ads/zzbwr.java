package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbwr implements zzdti<zzbwq> {
    private final zzdtu<zzbsv> zzeya;
    private final zzdtu<zzbuv> zzfcy;

    private zzbwr(zzdtu<zzbsv> zzdtuVar, zzdtu<zzbuv> zzdtuVar2) {
        this.zzeya = zzdtuVar;
        this.zzfcy = zzdtuVar2;
    }

    public static zzbwr zzi(zzdtu<zzbsv> zzdtuVar, zzdtu<zzbuv> zzdtuVar2) {
        return new zzbwr(zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzbwq(this.zzeya.get(), this.zzfcy.get());
    }
}
