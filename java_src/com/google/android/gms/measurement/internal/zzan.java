package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class zzan extends com.google.android.gms.internal.measurement.zzb implements zzam {
    public zzan() {
        super("com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.internal.measurement.zzb
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                zza((zzaj) com.google.android.gms.internal.measurement.zzc.zza(parcel, zzaj.CREATOR), (zzm) com.google.android.gms.internal.measurement.zzc.zza(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                zza((zzga) com.google.android.gms.internal.measurement.zzc.zza(parcel, zzga.CREATOR), (zzm) com.google.android.gms.internal.measurement.zzc.zza(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                return true;
            case 3:
            case 8:
            default:
                return false;
            case 4:
                zza((zzm) com.google.android.gms.internal.measurement.zzc.zza(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                return true;
            case 5:
                zza((zzaj) com.google.android.gms.internal.measurement.zzc.zza(parcel, zzaj.CREATOR), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                zzb((zzm) com.google.android.gms.internal.measurement.zzc.zza(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                return true;
            case 7:
                List<zzga> listZza = zza((zzm) com.google.android.gms.internal.measurement.zzc.zza(parcel, zzm.CREATOR), com.google.android.gms.internal.measurement.zzc.zza(parcel));
                parcel2.writeNoException();
                parcel2.writeTypedList(listZza);
                return true;
            case 9:
                byte[] bArrZza = zza((zzaj) com.google.android.gms.internal.measurement.zzc.zza(parcel, zzaj.CREATOR), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeByteArray(bArrZza);
                return true;
            case 10:
                zza(parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                String strZzc = zzc((zzm) com.google.android.gms.internal.measurement.zzc.zza(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                parcel2.writeString(strZzc);
                return true;
            case 12:
                zza((zzr) com.google.android.gms.internal.measurement.zzc.zza(parcel, zzr.CREATOR), (zzm) com.google.android.gms.internal.measurement.zzc.zza(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                return true;
            case 13:
                zzb((zzr) com.google.android.gms.internal.measurement.zzc.zza(parcel, zzr.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                List<zzga> listZza2 = zza(parcel.readString(), parcel.readString(), com.google.android.gms.internal.measurement.zzc.zza(parcel), (zzm) com.google.android.gms.internal.measurement.zzc.zza(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(listZza2);
                return true;
            case 15:
                List<zzga> listZza3 = zza(parcel.readString(), parcel.readString(), parcel.readString(), com.google.android.gms.internal.measurement.zzc.zza(parcel));
                parcel2.writeNoException();
                parcel2.writeTypedList(listZza3);
                return true;
            case 16:
                List<zzr> listZza4 = zza(parcel.readString(), parcel.readString(), (zzm) com.google.android.gms.internal.measurement.zzc.zza(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(listZza4);
                return true;
            case 17:
                List<zzr> listZzd = zzd(parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeTypedList(listZzd);
                return true;
            case 18:
                zzd((zzm) com.google.android.gms.internal.measurement.zzc.zza(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                return true;
        }
    }
}
