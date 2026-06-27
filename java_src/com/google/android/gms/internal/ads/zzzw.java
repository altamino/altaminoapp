package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes2.dex */
public abstract class zzzw extends zzfn implements zzzv {
    public zzzw() {
        super("com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.internal.ads.zzfn
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                zzzk zzzkVarZza = zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zzyd) zzfo.zza(parcel, zzyd.CREATOR), parcel.readString(), zzamq.zzy(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzfo.zza(parcel2, zzzkVarZza);
                return true;
            case 2:
                zzzk zzzkVarZzb = zzb(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zzyd) zzfo.zza(parcel, zzyd.CREATOR), parcel.readString(), zzamq.zzy(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzfo.zza(parcel2, zzzkVarZzb);
                return true;
            case 3:
                zzzf zzzfVarZza = zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), zzamq.zzy(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzfo.zza(parcel2, zzzfVarZza);
                return true;
            case 4:
                zzaab zzaabVarZzg = zzg(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzfo.zza(parcel2, zzaabVarZzg);
                return true;
            case 5:
                zzaem zzaemVarZzc = zzc(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzfo.zza(parcel2, zzaemVarZzc);
                return true;
            case 6:
                zzasw zzaswVarZza = zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), zzamq.zzy(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzfo.zza(parcel2, zzaswVarZza);
                return true;
            case 7:
                zzaqq zzaqqVarZzh = zzh(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzfo.zza(parcel2, zzaqqVarZzh);
                return true;
            case 8:
                zzaqg zzaqgVarZzf = zzf(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzfo.zza(parcel2, zzaqgVarZzf);
                return true;
            case 9:
                zzaab zzaabVarZza = zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzfo.zza(parcel2, zzaabVarZza);
                return true;
            case 10:
                zzzk zzzkVarZza2 = zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zzyd) zzfo.zza(parcel, zzyd.CREATOR), parcel.readString(), parcel.readInt());
                parcel2.writeNoException();
                zzfo.zza(parcel2, zzzkVarZza2);
                return true;
            case 11:
                zzaer zzaerVarZza = zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzfo.zza(parcel2, zzaerVarZza);
                return true;
            case 12:
                zzatt zzattVarZzb = zzb(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), zzamq.zzy(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzfo.zza(parcel2, zzattVarZzb);
                return true;
            default:
                return false;
        }
    }
}
