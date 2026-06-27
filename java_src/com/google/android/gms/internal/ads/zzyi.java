package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes2.dex */
final class zzyi extends zzys<zzzk> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzyd zzcht;
    private final /* synthetic */ String zzchu;
    private final /* synthetic */ zzamp zzchv;
    private final /* synthetic */ zzyh zzchw;

    zzyi(zzyh zzyhVar, Context context, zzyd zzydVar, String str, zzamp zzampVar) {
        this.zzchw = zzyhVar;
        this.val$context = context;
        this.zzcht = zzydVar;
        this.zzchu = str;
        this.zzchv = zzampVar;
    }

    @Override // com.google.android.gms.internal.ads.zzys
    public final /* synthetic */ zzzk zzov() {
        zzyh.zza(this.val$context, "banner");
        return new zzabp();
    }

    @Override // com.google.android.gms.internal.ads.zzys
    public final /* synthetic */ zzzk zzow() throws RemoteException {
        return this.zzchw.zzchl.zza(this.val$context, this.zzcht, this.zzchu, this.zzchv, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzys
    public final /* synthetic */ zzzk zza(zzzv zzzvVar) throws RemoteException {
        return zzzvVar.zza(ObjectWrapper.wrap(this.val$context), this.zzcht, this.zzchu, this.zzchv, 15000000);
    }
}
