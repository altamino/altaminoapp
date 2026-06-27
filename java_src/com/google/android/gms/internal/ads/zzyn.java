package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes2.dex */
final class zzyn extends zzys<zzaab> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzyh zzchw;

    zzyn(zzyh zzyhVar, Context context) {
        this.zzchw = zzyhVar;
        this.val$context = context;
    }

    @Override // com.google.android.gms.internal.ads.zzys
    protected final /* synthetic */ zzaab zzov() {
        zzyh.zza(this.val$context, "mobile_ads_settings");
        return new zzabr();
    }

    @Override // com.google.android.gms.internal.ads.zzys
    public final /* synthetic */ zzaab zzow() throws RemoteException {
        return this.zzchw.zzchn.zzi(this.val$context);
    }

    @Override // com.google.android.gms.internal.ads.zzys
    public final /* synthetic */ zzaab zza(zzzv zzzvVar) throws RemoteException {
        return zzzvVar.zza(ObjectWrapper.wrap(this.val$context), 15000000);
    }
}
