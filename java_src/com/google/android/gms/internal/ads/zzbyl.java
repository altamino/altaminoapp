package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzbyl implements zzdti<zzbmy> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<Executor> zzfgh;
    private final zzdtu<Clock> zzfgj;
    private final zzdtu<zzty> zzfnn;

    public zzbyl(zzdtu<zzty> zzdtuVar, zzdtu<Executor> zzdtuVar2, zzdtu<Context> zzdtuVar3, zzdtu<Clock> zzdtuVar4) {
        this.zzfnn = zzdtuVar;
        this.zzfgh = zzdtuVar2;
        this.zzeoj = zzdtuVar3;
        this.zzfgj = zzdtuVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        zzty zztyVar = this.zzfnn.get();
        Executor executor = this.zzfgh.get();
        Context context = this.zzeoj.get();
        return (zzbmy) zzdto.zza(new zzbmy(executor, new zzbml(context, zztyVar), this.zzfgj.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
