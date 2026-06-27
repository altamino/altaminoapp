package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbnr implements zzdti<zzbnf> {
    private final zzdtu<zzbnh> zzfbg;
    private final zzbnk zzfhp;

    public zzbnr(zzbnk zzbnkVar, zzdtu<zzbnh> zzdtuVar) {
        this.zzfhp = zzbnkVar;
        this.zzfbg = zzdtuVar;
    }

    public static zzbnf zza(zzbnk zzbnkVar, Object obj) {
        return (zzbnf) zzdto.zza((zzbnh) obj, "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return zza(this.zzfhp, this.zzfbg.get());
    }
}
