package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzbmw implements zzdti<Set<zzbuz<zzue>>> {
    private final zzdtu<Executor> zzfgh;
    private final zzdtu<zzbmn> zzfgm;
    private final zzdtu<JSONObject> zzfgn;

    private zzbmw(zzdtu<zzbmn> zzdtuVar, zzdtu<Executor> zzdtuVar2, zzdtu<JSONObject> zzdtuVar3) {
        this.zzfgm = zzdtuVar;
        this.zzfgh = zzdtuVar2;
        this.zzfgn = zzdtuVar3;
    }

    public static zzbmw zze(zzdtu<zzbmn> zzdtuVar, zzdtu<Executor> zzdtuVar2, zzdtu<JSONObject> zzdtuVar3) {
        return new zzbmw(zzdtuVar, zzdtuVar2, zzdtuVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        Set setSingleton;
        zzbmn zzbmnVar = this.zzfgm.get();
        Executor executor = this.zzfgh.get();
        if (this.zzfgn.get() == null) {
            setSingleton = Collections.emptySet();
        } else {
            setSingleton = Collections.singleton(new zzbuz(zzbmnVar, executor));
        }
        return (Set) zzdto.zza(setSingleton, "Cannot return null from a non-@Nullable @Provides method");
    }
}
