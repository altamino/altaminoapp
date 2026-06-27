package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes2.dex */
final class zzyq extends zzys<zzasw> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzamp zzchv;
    private final /* synthetic */ zzyh zzchw;

    zzyq(zzyh zzyhVar, Context context, zzamp zzampVar) {
        this.zzchw = zzyhVar;
        this.val$context = context;
        this.zzchv = zzampVar;
    }

    @Override // com.google.android.gms.internal.ads.zzys
    protected final /* synthetic */ zzasw zzov() {
        zzyh.zza(this.val$context, "rewarded_video");
        return new zzabx();
    }

    @Override // com.google.android.gms.internal.ads.zzys
    public final /* synthetic */ zzasw zzow() throws RemoteException {
        return this.zzchw.zzchp.zza(this.val$context, this.zzchv);
    }

    @Override // com.google.android.gms.internal.ads.zzys
    public final /* synthetic */ zzasw zza(zzzv zzzvVar) throws RemoteException {
        return zzzvVar.zza(ObjectWrapper.wrap(this.val$context), this.zzchv, 15000000);
    }
}
