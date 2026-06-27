package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes2.dex */
public abstract class zzaas extends zzfn implements zzaar {
    public zzaas() {
        super("com.google.android.gms.ads.internal.client.IVideoController");
    }

    public static zzaar zzh(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
        if (iInterfaceQueryLocalInterface instanceof zzaar) {
            return (zzaar) iInterfaceQueryLocalInterface;
        }
        return new zzaat(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzfn
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzaau zzaawVar;
        switch (i) {
            case 1:
                play();
                parcel2.writeNoException();
                return true;
            case 2:
                pause();
                parcel2.writeNoException();
                return true;
            case 3:
                mute(zzfo.zza(parcel));
                parcel2.writeNoException();
                return true;
            case 4:
                boolean zIsMuted = isMuted();
                parcel2.writeNoException();
                zzfo.writeBoolean(parcel2, zIsMuted);
                return true;
            case 5:
                int playbackState = getPlaybackState();
                parcel2.writeNoException();
                parcel2.writeInt(playbackState);
                return true;
            case 6:
                float fZzpv = zzpv();
                parcel2.writeNoException();
                parcel2.writeFloat(fZzpv);
                return true;
            case 7:
                float fZzpw = zzpw();
                parcel2.writeNoException();
                parcel2.writeFloat(fZzpw);
                return true;
            case 8:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    zzaawVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
                    if (iInterfaceQueryLocalInterface instanceof zzaau) {
                        zzaawVar = (zzaau) iInterfaceQueryLocalInterface;
                    } else {
                        zzaawVar = new zzaaw(strongBinder);
                    }
                }
                zza(zzaawVar);
                parcel2.writeNoException();
                return true;
            case 9:
                float aspectRatio = getAspectRatio();
                parcel2.writeNoException();
                parcel2.writeFloat(aspectRatio);
                return true;
            case 10:
                boolean zIsCustomControlsEnabled = isCustomControlsEnabled();
                parcel2.writeNoException();
                zzfo.writeBoolean(parcel2, zIsCustomControlsEnabled);
                return true;
            case 11:
                zzaau zzaauVarZzpx = zzpx();
                parcel2.writeNoException();
                zzfo.zza(parcel2, zzaauVarZzpx);
                return true;
            case 12:
                boolean zIsClickToExpandEnabled = isClickToExpandEnabled();
                parcel2.writeNoException();
                zzfo.writeBoolean(parcel2, zIsClickToExpandEnabled);
                return true;
            default:
                return false;
        }
    }
}
