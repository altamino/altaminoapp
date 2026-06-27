package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbof implements zzdti<zzcjv<zzbnf>> {
    private final zzdtu<zzcoe<zzbnf, zzams, zzcla>> zzeum;
    private final zzdtu<Boolean> zzfae;
    private final zzdtu<zzcmo> zzfag;

    public zzbof(zzdtu<Boolean> zzdtuVar, zzdtu<zzcmo> zzdtuVar2, zzdtu<zzcoe<zzbnf, zzams, zzcla>> zzdtuVar3) {
        this.zzfae = zzdtuVar;
        this.zzfag = zzdtuVar2;
        this.zzeum = zzdtuVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        boolean zBooleanValue = this.zzfae.get().booleanValue();
        zzcjv zzcjvVar = (zzcmo) this.zzfag.get();
        zzcjv zzcjvVar2 = (zzcoe) this.zzeum.get();
        if (!zBooleanValue) {
            zzcjvVar = zzcjvVar2;
        }
        return (zzcjv) zzdto.zza(zzcjvVar, "Cannot return null from a non-@Nullable @Provides method");
    }
}
