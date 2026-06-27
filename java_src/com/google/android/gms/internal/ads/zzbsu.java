package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.AdMetadataListener;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbsu implements zzdti<zzbss> {
    private final zzdtu<Set<zzbuz<AdMetadataListener>>> zzfhq;

    private zzbsu(zzdtu<Set<zzbuz<AdMetadataListener>>> zzdtuVar) {
        this.zzfhq = zzdtuVar;
    }

    public static zzbsu zzr(zzdtu<Set<zzbuz<AdMetadataListener>>> zzdtuVar) {
        return new zzbsu(zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzbss(this.zzfhq.get());
    }
}
