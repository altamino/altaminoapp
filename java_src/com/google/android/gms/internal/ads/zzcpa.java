package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;

/* loaded from: classes2.dex */
public final class zzcpa implements zzcou<zzbvx> {
    private final zzbws zzfzy;
    private final Context zzlj;

    public zzcpa(Context context, zzbws zzbwsVar) {
        this.zzlj = context;
        this.zzfzy = zzbwsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcou
    public final /* synthetic */ zzbvx zza(zzcxu zzcxuVar, zzcxm zzcxmVar, View view, zzcoz zzcozVar) {
        zzbvy zzbvyVarZza = this.zzfzy.zza(new zzbpr(zzcxuVar, zzcxmVar, null), new zzcpc(this, zzcpb.zzgde));
        zzcozVar.zza(new zzcpd(this, zzbvyVarZza));
        return zzbvyVarZza.zzaee();
    }
}
