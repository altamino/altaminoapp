package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;

/* loaded from: classes2.dex */
public final class zzbxh implements zzdti<zzbxg> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<Integer> zzfgq;
    private final zzdtu<View> zzfhe;
    private final zzdtu<zzavf> zzfip;
    private final zzdtu<zzavg> zzfly;

    private zzbxh(zzdtu<zzavf> zzdtuVar, zzdtu<Context> zzdtuVar2, zzdtu<zzavg> zzdtuVar3, zzdtu<View> zzdtuVar4, zzdtu<Integer> zzdtuVar5) {
        this.zzfip = zzdtuVar;
        this.zzeoj = zzdtuVar2;
        this.zzfly = zzdtuVar3;
        this.zzfhe = zzdtuVar4;
        this.zzfgq = zzdtuVar5;
    }

    public static zzbxh zzd(zzdtu<zzavf> zzdtuVar, zzdtu<Context> zzdtuVar2, zzdtu<zzavg> zzdtuVar3, zzdtu<View> zzdtuVar4, zzdtu<Integer> zzdtuVar5) {
        return new zzbxh(zzdtuVar, zzdtuVar2, zzdtuVar3, zzdtuVar4, zzdtuVar5);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzbxg(this.zzfip.get(), this.zzeoj.get(), this.zzfly.get(), this.zzfhe.get(), this.zzfgq.get().intValue());
    }
}
