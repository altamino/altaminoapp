package com.google.android.gms.internal.ads;

import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbsd implements zzdti<zzbry> {
    private final zzdtu<Set<zzbuz<zzbrx>>> zzfhq;

    private zzbsd(zzdtu<Set<zzbuz<zzbrx>>> zzdtuVar) {
        this.zzfhq = zzdtuVar;
    }

    public static zzbsd zzo(zzdtu<Set<zzbuz<zzbrx>>> zzdtuVar) {
        return new zzbsd(zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzbry(this.zzfhq.get());
    }
}
