package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbnp implements zzdti<zzcxn> {
    private final zzbnk zzfhp;

    public zzbnp(zzbnk zzbnkVar) {
        this.zzfhp = zzbnkVar;
    }

    public static zzcxn zzb(zzbnk zzbnkVar) {
        return (zzcxn) zzdto.zza(zzbnkVar.zzafp(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return zzb(this.zzfhp);
    }
}
