package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;

@zzard
/* loaded from: classes2.dex */
public final class zzaqf extends RemoteCreator<zzaqj> {
    public zzaqf() {
        super("com.google.android.gms.ads.AdOverlayCreatorImpl");
    }

    public final zzaqg zzc(Activity activity) {
        try {
            IBinder iBinderZzad = getRemoteCreatorInstance(activity).zzad(ObjectWrapper.wrap(activity));
            if (iBinderZzad == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinderZzad.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
            if (iInterfaceQueryLocalInterface instanceof zzaqg) {
                return (zzaqg) iInterfaceQueryLocalInterface;
            }
            return new zzaqi(iBinderZzad);
        } catch (RemoteException e) {
            zzbad.zzd("Could not create remote AdOverlay.", e);
            return null;
        } catch (RemoteCreator.RemoteCreatorException e2) {
            zzbad.zzd("Could not create remote AdOverlay.", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    protected final /* synthetic */ zzaqj getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
        if (iInterfaceQueryLocalInterface instanceof zzaqj) {
            return (zzaqj) iInterfaceQueryLocalInterface;
        }
        return new zzaqk(iBinder);
    }
}
