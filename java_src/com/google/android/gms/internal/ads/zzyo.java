package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes2.dex */
final class zzyo extends zzys<zzaem> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzyh zzchw;
    private final /* synthetic */ FrameLayout zzchx;
    private final /* synthetic */ FrameLayout zzchy;

    zzyo(zzyh zzyhVar, FrameLayout frameLayout, FrameLayout frameLayout2, Context context) {
        this.zzchw = zzyhVar;
        this.zzchx = frameLayout;
        this.zzchy = frameLayout2;
        this.val$context = context;
    }

    @Override // com.google.android.gms.internal.ads.zzys
    protected final /* synthetic */ zzaem zzov() {
        zzyh.zza(this.val$context, "native_ad_view_delegate");
        return new zzabt();
    }

    @Override // com.google.android.gms.internal.ads.zzys
    public final /* synthetic */ zzaem zzow() throws RemoteException {
        return this.zzchw.zzcho.zzb(this.val$context, this.zzchx, this.zzchy);
    }

    @Override // com.google.android.gms.internal.ads.zzys
    public final /* synthetic */ zzaem zza(zzzv zzzvVar) throws RemoteException {
        return zzzvVar.zzc(ObjectWrapper.wrap(this.zzchx), ObjectWrapper.wrap(this.zzchy));
    }
}
