package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzcit implements zzdti<zzcig> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<Executor> zzfhi;
    private final zzdtu<zzasm> zzfxw;
    private final zzdtu<zzblp> zzfxx;
    private final zzdtu<zzasl> zzfxy;

    private zzcit(zzdtu<Context> zzdtuVar, zzdtu<Executor> zzdtuVar2, zzdtu<zzasm> zzdtuVar3, zzdtu<zzblp> zzdtuVar4, zzdtu<zzasl> zzdtuVar5) {
        this.zzeoj = zzdtuVar;
        this.zzfhi = zzdtuVar2;
        this.zzfxw = zzdtuVar3;
        this.zzfxx = zzdtuVar4;
        this.zzfxy = zzdtuVar5;
    }

    public static zzcit zzg(zzdtu<Context> zzdtuVar, zzdtu<Executor> zzdtuVar2, zzdtu<zzasm> zzdtuVar3, zzdtu<zzblp> zzdtuVar4, zzdtu<zzasl> zzdtuVar5) {
        return new zzcit(zzdtuVar, zzdtuVar2, zzdtuVar3, zzdtuVar4, zzdtuVar5);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcig(this.zzeoj.get(), this.zzfhi.get(), this.zzfxw.get(), this.zzfxx.get(), this.zzfxy.get());
    }
}
