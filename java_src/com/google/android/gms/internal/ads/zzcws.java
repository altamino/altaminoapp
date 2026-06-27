package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes2.dex */
public final class zzcws implements zzdti<zzcwq> {
    private final zzdtu<ScheduledExecutorService> zzfjc;
    private final zzdtu<ApplicationInfo> zzfws;
    private final zzdtu<zzamg> zzgit;
    private final zzdtu<Boolean> zzgjl;

    public zzcws(zzdtu<zzamg> zzdtuVar, zzdtu<ScheduledExecutorService> zzdtuVar2, zzdtu<Boolean> zzdtuVar3, zzdtu<ApplicationInfo> zzdtuVar4) {
        this.zzgit = zzdtuVar;
        this.zzfjc = zzdtuVar2;
        this.zzgjl = zzdtuVar3;
        this.zzfws = zzdtuVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcwq(this.zzgit.get(), this.zzfjc.get(), this.zzgjl.get().booleanValue(), this.zzfws.get());
    }
}
