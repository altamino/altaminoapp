package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;

@zzard
/* loaded from: classes2.dex */
public final class zzxw extends RemoteCreator<zzzi> {
    public zzxw() {
        super("com.google.android.gms.ads.AdLoaderBuilderCreatorImpl");
    }

    public final zzzf zza(Context context, String str, zzamp zzampVar) {
        try {
            IBinder iBinderZzc = getRemoteCreatorInstance(context).zzc(ObjectWrapper.wrap(context), str, zzampVar, 15000000);
            if (iBinderZzc == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinderZzc.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            if (iInterfaceQueryLocalInterface instanceof zzzf) {
                return (zzzf) iInterfaceQueryLocalInterface;
            }
            return new zzzh(iBinderZzc);
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            zzbad.zzd("Could not create remote builder for AdLoader.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    protected final /* synthetic */ zzzi getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
        if (iInterfaceQueryLocalInterface instanceof zzzi) {
            return (zzzi) iInterfaceQueryLocalInterface;
        }
        return new zzzj(iBinder);
    }
}
