package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbjs implements zzdti<zzcjz<zzams, zzcla>> {
    private final zzbjn zzeof;
    private final zzdtu<zzclc> zzeog;

    public zzbjs(zzbjn zzbjnVar, zzdtu<zzclc> zzdtuVar) {
        this.zzeof = zzbjnVar;
        this.zzeog = zzdtuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzcjz) zzdto.zza(new zzclv(this.zzeog.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
