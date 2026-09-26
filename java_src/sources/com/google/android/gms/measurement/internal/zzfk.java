package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public interface zzfk extends IInterface {
    zzam zza(zzo zzoVar) throws RemoteException;

    List<zzmh> zza(zzo zzoVar, Bundle bundle) throws RemoteException;

    @Nullable
    List<zznc> zza(zzo zzoVar, boolean z6) throws RemoteException;

    List<zzad> zza(@Nullable String str, @Nullable String str2, zzo zzoVar) throws RemoteException;

    List<zzad> zza(String str, @Nullable String str2, @Nullable String str3) throws RemoteException;

    List<zznc> zza(String str, @Nullable String str2, @Nullable String str3, boolean z6) throws RemoteException;

    List<zznc> zza(@Nullable String str, @Nullable String str2, boolean z6, zzo zzoVar) throws RemoteException;

    void zza(long j6, @Nullable String str, @Nullable String str2, String str3) throws RemoteException;

    void zza(Bundle bundle, zzo zzoVar) throws RemoteException;

    void zza(zzad zzadVar) throws RemoteException;

    void zza(zzad zzadVar, zzo zzoVar) throws RemoteException;

    void zza(zzbg zzbgVar, zzo zzoVar) throws RemoteException;

    void zza(zzbg zzbgVar, String str, @Nullable String str2) throws RemoteException;

    void zza(zznc zzncVar, zzo zzoVar) throws RemoteException;

    @Nullable
    byte[] zza(zzbg zzbgVar, String str) throws RemoteException;

    @Nullable
    String zzb(zzo zzoVar) throws RemoteException;

    void zzc(zzo zzoVar) throws RemoteException;

    void zzd(zzo zzoVar) throws RemoteException;

    void zze(zzo zzoVar) throws RemoteException;

    void zzf(zzo zzoVar) throws RemoteException;
}
