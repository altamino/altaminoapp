package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes2.dex */
final class zzym extends zzys<zzzf> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ String zzchu;
    private final /* synthetic */ zzamp zzchv;
    private final /* synthetic */ zzyh zzchw;

    zzym(zzyh zzyhVar, Context context, String str, zzamp zzampVar) {
        this.zzchw = zzyhVar;
        this.val$context = context;
        this.zzchu = str;
        this.zzchv = zzampVar;
    }

    @Override // com.google.android.gms.internal.ads.zzys
    protected final /* synthetic */ zzzf zzov() {
        zzyh.zza(this.val$context, "native_ad");
        return new zzabl();
    }

    @Override // com.google.android.gms.internal.ads.zzys
    public final /* synthetic */ zzzf zzow() throws RemoteException {
        return this.zzchw.zzchm.zza(this.val$context, this.zzchu, this.zzchv);
    }

    @Override // com.google.android.gms.internal.ads.zzys
    public final /* synthetic */ zzzf zza(zzzv zzzvVar) throws RemoteException {
        return zzzvVar.zza(ObjectWrapper.wrap(this.val$context), this.zzchu, this.zzchv, 15000000);
    }
}
