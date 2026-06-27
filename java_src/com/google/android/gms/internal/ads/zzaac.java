package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class zzaac extends zzfn implements zzaab {
    public zzaac() {
        super("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // com.google.android.gms.internal.ads.zzfn
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                zza();
                parcel2.writeNoException();
                return true;
            case 2:
                setAppVolume(parcel.readFloat());
                parcel2.writeNoException();
                return true;
            case 3:
                zzbu(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 4:
                setAppMuted(zzfo.zza(parcel));
                parcel2.writeNoException();
                return true;
            case 5:
                zzc(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                zzb(parcel.readString(), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 7:
                float fZzpq = zzpq();
                parcel2.writeNoException();
                parcel2.writeFloat(fZzpq);
                return true;
            case 8:
                boolean zZzpr = zzpr();
                parcel2.writeNoException();
                zzfo.writeBoolean(parcel2, zZzpr);
                return true;
            case 9:
                String versionString = getVersionString();
                parcel2.writeNoException();
                parcel2.writeString(versionString);
                return true;
            case 10:
                zzbv(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                zza(zzamq.zzy(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 12:
                zza(zzaiu.zzw(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 13:
                List<zzaio> listZzps = zzps();
                parcel2.writeNoException();
                parcel2.writeTypedList(listZzps);
                return true;
            default:
                return false;
        }
    }
}
