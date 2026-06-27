package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.HashMap;

/* loaded from: classes2.dex */
final class zzyp extends zzys<zzaer> {
    private final /* synthetic */ zzyh zzchw;
    private final /* synthetic */ View zzchz;
    private final /* synthetic */ HashMap zzcia;
    private final /* synthetic */ HashMap zzcib;

    zzyp(zzyh zzyhVar, View view, HashMap map, HashMap map2) {
        this.zzchw = zzyhVar;
        this.zzchz = view;
        this.zzcia = map;
        this.zzcib = map2;
    }

    @Override // com.google.android.gms.internal.ads.zzys
    protected final /* synthetic */ zzaer zzov() {
        zzyh.zza(this.zzchz.getContext(), "native_ad_view_holder_delegate");
        return new zzabu();
    }

    @Override // com.google.android.gms.internal.ads.zzys
    public final /* synthetic */ zzaer zzow() throws RemoteException {
        return this.zzchw.zzchs.zzb(this.zzchz, this.zzcia, this.zzcib);
    }

    @Override // com.google.android.gms.internal.ads.zzys
    public final /* synthetic */ zzaer zza(zzzv zzzvVar) throws RemoteException {
        return zzzvVar.zza(ObjectWrapper.wrap(this.zzchz), ObjectWrapper.wrap(this.zzcia), ObjectWrapper.wrap(this.zzcib));
    }
}
