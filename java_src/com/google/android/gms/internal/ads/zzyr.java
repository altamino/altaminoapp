package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes2.dex */
final class zzyr extends zzys<zzatt> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ String zzchu;
    private final /* synthetic */ zzamp zzchv;
    private final /* synthetic */ zzyh zzchw;

    zzyr(zzyh zzyhVar, Context context, String str, zzamp zzampVar) {
        this.zzchw = zzyhVar;
        this.val$context = context;
        this.zzchu = str;
        this.zzchv = zzampVar;
    }

    @Override // com.google.android.gms.internal.ads.zzys
    protected final /* synthetic */ zzatt zzov() {
        zzyh.zza(this.val$context, "rewarded");
        return new zzabv();
    }

    @Override // com.google.android.gms.internal.ads.zzys
    public final /* synthetic */ zzatt zzow() throws RemoteException {
        return zzauj.zzd(this.val$context, this.zzchu, this.zzchv);
    }

    @Override // com.google.android.gms.internal.ads.zzys
    public final /* synthetic */ zzatt zza(zzzv zzzvVar) throws RemoteException {
        return zzzvVar.zzb(ObjectWrapper.wrap(this.val$context), this.zzchu, this.zzchv, 15000000);
    }
}
