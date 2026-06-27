package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes2.dex */
final class zzyj extends zzys<zzaqg> {
    private final /* synthetic */ Activity val$activity;
    private final /* synthetic */ zzyh zzchw;

    zzyj(zzyh zzyhVar, Activity activity) {
        this.zzchw = zzyhVar;
        this.val$activity = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzys
    protected final /* synthetic */ zzaqg zzov() {
        zzyh.zza(this.val$activity, "ad_overlay");
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzys
    public final /* synthetic */ zzaqg zzow() throws RemoteException {
        return this.zzchw.zzchr.zzc(this.val$activity);
    }

    @Override // com.google.android.gms.internal.ads.zzys
    public final /* synthetic */ zzaqg zza(zzzv zzzvVar) throws RemoteException {
        return zzzvVar.zzf(ObjectWrapper.wrap(this.val$activity));
    }
}
