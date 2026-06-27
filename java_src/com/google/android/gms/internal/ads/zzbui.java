package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.AdMetadataListener;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbui implements zzdti<Set<zzbuz<AdMetadataListener>>> {
    private final zzbtv zzfky;

    private zzbui(zzbtv zzbtvVar) {
        this.zzfky = zzbtvVar;
    }

    public static zzbui zzp(zzbtv zzbtvVar) {
        return new zzbui(zzbtvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (Set) zzdto.zza(this.zzfky.zzagp(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
