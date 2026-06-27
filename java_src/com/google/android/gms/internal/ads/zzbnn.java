package com.google.android.gms.internal.ads;

import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbnn implements zzdti<zzbso> {
    private final zzbnk zzfhp;
    private final zzdtu<Set<zzbuz<zzbsr>>> zzfhq;

    public zzbnn(zzbnk zzbnkVar, zzdtu<Set<zzbuz<zzbsr>>> zzdtuVar) {
        this.zzfhp = zzbnkVar;
        this.zzfhq = zzdtuVar;
    }

    public static zzbso zza(zzbnk zzbnkVar, Set<zzbuz<zzbsr>> set) {
        return (zzbso) zzdto.zza(zzbnkVar.zza(set), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return zza(this.zzfhp, this.zzfhq.get());
    }
}
