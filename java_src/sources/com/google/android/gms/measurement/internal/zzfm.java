package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public final class zzfm extends com.google.android.gms.internal.measurement.zzbu implements zzfk {
    @Override // com.google.android.gms.measurement.internal.zzfk
    public final zzam zza(zzo zzoVar) throws RemoteException {
        Parcel parcelA_ = a_();
        com.google.android.gms.internal.measurement.zzbw.zza(parcelA_, zzoVar);
        Parcel parcelZza = zza(21, parcelA_);
        zzam zzamVar = (zzam) com.google.android.gms.internal.measurement.zzbw.zza(parcelZza, zzam.CREATOR);
        parcelZza.recycle();
        return zzamVar;
    }

    zzfm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    public final String zzb(zzo zzoVar) throws RemoteException {
        Parcel parcelA_ = a_();
        com.google.android.gms.internal.measurement.zzbw.zza(parcelA_, zzoVar);
        Parcel parcelZza = zza(11, parcelA_);
        String string = parcelZza.readString();
        parcelZza.recycle();
        return string;
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    public final void zzc(zzo zzoVar) throws RemoteException {
        Parcel parcelA_ = a_();
        com.google.android.gms.internal.measurement.zzbw.zza(parcelA_, zzoVar);
        zzb(4, parcelA_);
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    public final void zzd(zzo zzoVar) throws RemoteException {
        Parcel parcelA_ = a_();
        com.google.android.gms.internal.measurement.zzbw.zza(parcelA_, zzoVar);
        zzb(18, parcelA_);
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    public final void zze(zzo zzoVar) throws RemoteException {
        Parcel parcelA_ = a_();
        com.google.android.gms.internal.measurement.zzbw.zza(parcelA_, zzoVar);
        zzb(20, parcelA_);
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    public final void zzf(zzo zzoVar) throws RemoteException {
        Parcel parcelA_ = a_();
        com.google.android.gms.internal.measurement.zzbw.zza(parcelA_, zzoVar);
        zzb(6, parcelA_);
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    public final List<zzmh> zza(zzo zzoVar, Bundle bundle) throws RemoteException {
        Parcel parcelA_ = a_();
        com.google.android.gms.internal.measurement.zzbw.zza(parcelA_, zzoVar);
        com.google.android.gms.internal.measurement.zzbw.zza(parcelA_, bundle);
        Parcel parcelZza = zza(24, parcelA_);
        ArrayList arrayListCreateTypedArrayList = parcelZza.createTypedArrayList(zzmh.CREATOR);
        parcelZza.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    public final List<zznc> zza(zzo zzoVar, boolean z6) throws RemoteException {
        Parcel parcelA_ = a_();
        com.google.android.gms.internal.measurement.zzbw.zza(parcelA_, zzoVar);
        com.google.android.gms.internal.measurement.zzbw.zza(parcelA_, z6);
        Parcel parcelZza = zza(7, parcelA_);
        ArrayList arrayListCreateTypedArrayList = parcelZza.createTypedArrayList(zznc.CREATOR);
        parcelZza.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    public final List<zzad> zza(String str, String str2, zzo zzoVar) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        com.google.android.gms.internal.measurement.zzbw.zza(parcelA_, zzoVar);
        Parcel parcelZza = zza(16, parcelA_);
        ArrayList arrayListCreateTypedArrayList = parcelZza.createTypedArrayList(zzad.CREATOR);
        parcelZza.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    public final List<zzad> zza(String str, String str2, String str3) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        parcelA_.writeString(str3);
        Parcel parcelZza = zza(17, parcelA_);
        ArrayList arrayListCreateTypedArrayList = parcelZza.createTypedArrayList(zzad.CREATOR);
        parcelZza.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    public final List<zznc> zza(String str, String str2, boolean z6, zzo zzoVar) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        com.google.android.gms.internal.measurement.zzbw.zza(parcelA_, z6);
        com.google.android.gms.internal.measurement.zzbw.zza(parcelA_, zzoVar);
        Parcel parcelZza = zza(14, parcelA_);
        ArrayList arrayListCreateTypedArrayList = parcelZza.createTypedArrayList(zznc.CREATOR);
        parcelZza.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    public final List<zznc> zza(String str, String str2, String str3, boolean z6) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        parcelA_.writeString(str3);
        com.google.android.gms.internal.measurement.zzbw.zza(parcelA_, z6);
        Parcel parcelZza = zza(15, parcelA_);
        ArrayList arrayListCreateTypedArrayList = parcelZza.createTypedArrayList(zznc.CREATOR);
        parcelZza.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    public final void zza(zzbg zzbgVar, zzo zzoVar) throws RemoteException {
        Parcel parcelA_ = a_();
        com.google.android.gms.internal.measurement.zzbw.zza(parcelA_, zzbgVar);
        com.google.android.gms.internal.measurement.zzbw.zza(parcelA_, zzoVar);
        zzb(1, parcelA_);
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    public final void zza(zzbg zzbgVar, String str, String str2) throws RemoteException {
        Parcel parcelA_ = a_();
        com.google.android.gms.internal.measurement.zzbw.zza(parcelA_, zzbgVar);
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        zzb(5, parcelA_);
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    public final void zza(zzad zzadVar, zzo zzoVar) throws RemoteException {
        Parcel parcelA_ = a_();
        com.google.android.gms.internal.measurement.zzbw.zza(parcelA_, zzadVar);
        com.google.android.gms.internal.measurement.zzbw.zza(parcelA_, zzoVar);
        zzb(12, parcelA_);
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    public final void zza(zzad zzadVar) throws RemoteException {
        Parcel parcelA_ = a_();
        com.google.android.gms.internal.measurement.zzbw.zza(parcelA_, zzadVar);
        zzb(13, parcelA_);
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    public final void zza(long j6, String str, String str2, String str3) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeLong(j6);
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        parcelA_.writeString(str3);
        zzb(10, parcelA_);
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    public final void zza(Bundle bundle, zzo zzoVar) throws RemoteException {
        Parcel parcelA_ = a_();
        com.google.android.gms.internal.measurement.zzbw.zza(parcelA_, bundle);
        com.google.android.gms.internal.measurement.zzbw.zza(parcelA_, zzoVar);
        zzb(19, parcelA_);
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    public final void zza(zznc zzncVar, zzo zzoVar) throws RemoteException {
        Parcel parcelA_ = a_();
        com.google.android.gms.internal.measurement.zzbw.zza(parcelA_, zzncVar);
        com.google.android.gms.internal.measurement.zzbw.zza(parcelA_, zzoVar);
        zzb(2, parcelA_);
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    public final byte[] zza(zzbg zzbgVar, String str) throws RemoteException {
        Parcel parcelA_ = a_();
        com.google.android.gms.internal.measurement.zzbw.zza(parcelA_, zzbgVar);
        parcelA_.writeString(str);
        Parcel parcelZza = zza(9, parcelA_);
        byte[] bArrCreateByteArray = parcelZza.createByteArray();
        parcelZza.recycle();
        return bArrCreateByteArray;
    }
}
