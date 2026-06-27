package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbjx implements zzdti<zzbai> {
    private final zzbjn zzeof;

    public zzbjx(zzbjn zzbjnVar) {
        this.zzeof = zzbjnVar;
    }

    public static zzbai zzb(zzbjn zzbjnVar) {
        return (zzbai) zzdto.zza(zzbjnVar.zzacq(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return zzb(this.zzeof);
    }
}
