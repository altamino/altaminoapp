package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;

/* loaded from: classes2.dex */
public final class zzcjp implements zzdti<zzcjm> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzcji> zzeqw;
    private final zzdtu<zzcjc> zzetz;
    private final zzdtu<zzbbh<Bundle>> zzfzg;

    private zzcjp(zzdtu<Context> zzdtuVar, zzdtu<zzbbh<Bundle>> zzdtuVar2, zzdtu<zzcji> zzdtuVar3, zzdtu<zzcjc> zzdtuVar4) {
        this.zzeoj = zzdtuVar;
        this.zzfzg = zzdtuVar2;
        this.zzeqw = zzdtuVar3;
        this.zzetz = zzdtuVar4;
    }

    public static zzcjp zze(zzdtu<Context> zzdtuVar, zzdtu<zzbbh<Bundle>> zzdtuVar2, zzdtu<zzcji> zzdtuVar3, zzdtu<zzcjc> zzdtuVar4) {
        return new zzcjp(zzdtuVar, zzdtuVar2, zzdtuVar3, zzdtuVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcjm(this.zzeoj.get(), this.zzfzg.get(), this.zzeqw.get(), this.zzetz.get());
    }
}
