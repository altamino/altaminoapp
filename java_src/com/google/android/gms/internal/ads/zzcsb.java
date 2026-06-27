package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcsb implements zzdti<zzcrz> {
    private final zzdtu<zzbqe> zzerf;
    private final zzdtu<zzcyi> zzese;
    private final zzdtu<zzcxv> zzfhr;
    private final zzdtu<String> zzggq;
    private final zzdtu<String> zzggr;

    private zzcsb(zzdtu<String> zzdtuVar, zzdtu<String> zzdtuVar2, zzdtu<zzbqe> zzdtuVar3, zzdtu<zzcyi> zzdtuVar4, zzdtu<zzcxv> zzdtuVar5) {
        this.zzggq = zzdtuVar;
        this.zzggr = zzdtuVar2;
        this.zzerf = zzdtuVar3;
        this.zzese = zzdtuVar4;
        this.zzfhr = zzdtuVar5;
    }

    public static zzcsb zzh(zzdtu<String> zzdtuVar, zzdtu<String> zzdtuVar2, zzdtu<zzbqe> zzdtuVar3, zzdtu<zzcyi> zzdtuVar4, zzdtu<zzcxv> zzdtuVar5) {
        return new zzcsb(zzdtuVar, zzdtuVar2, zzdtuVar3, zzdtuVar4, zzdtuVar5);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcrz(this.zzggq.get(), this.zzggr.get(), this.zzerf.get(), this.zzese.get(), this.zzfhr.get());
    }
}
