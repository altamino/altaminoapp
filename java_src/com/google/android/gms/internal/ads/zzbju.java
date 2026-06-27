package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbju implements zzdti<zzblp> {
    private final zzbjn zzeof;
    private final zzdtu<zzbjm> zzeoh;

    public zzbju(zzbjn zzbjnVar, zzdtu<zzbjm> zzdtuVar) {
        this.zzeof = zzbjnVar;
        this.zzeoh = zzdtuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzblp) zzdto.zza(this.zzeoh.get(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
