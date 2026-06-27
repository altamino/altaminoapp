package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
import java.util.Collections;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbuo implements zzdti<Set<zzbuz<VideoController.VideoLifecycleCallbacks>>> {
    private final zzbtv zzfky;

    private zzbuo(zzbtv zzbtvVar) {
        this.zzfky = zzbtvVar;
    }

    public static zzbuo zzu(zzbtv zzbtvVar) {
        return new zzbuo(zzbtvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (Set) zzdto.zza(Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
