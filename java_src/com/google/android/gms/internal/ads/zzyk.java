package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes2.dex */
final class zzyk extends zzys<zzzk> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzyd zzcht;
    private final /* synthetic */ String zzchu;
    private final /* synthetic */ zzyh zzchw;

    zzyk(zzyh zzyhVar, Context context, zzyd zzydVar, String str) {
        this.zzchw = zzyhVar;
        this.val$context = context;
        this.zzcht = zzydVar;
        this.zzchu = str;
    }

    @Override // com.google.android.gms.internal.ads.zzys
    public final /* synthetic */ zzzk zzov() {
        zzyh.zza(this.val$context, "search");
        return new zzabp();
    }

    @Override // com.google.android.gms.internal.ads.zzys
    public final /* synthetic */ zzzk zzow() throws RemoteException {
        return this.zzchw.zzchl.zza(this.val$context, this.zzcht, this.zzchu, null, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzys
    public final /* synthetic */ zzzk zza(zzzv zzzvVar) throws RemoteException {
        return zzzvVar.zza(ObjectWrapper.wrap(this.val$context), this.zzcht, this.zzchu, 15000000);
    }
}
