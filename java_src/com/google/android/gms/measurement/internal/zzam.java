package com.google.android.gms.measurement.internal;

import android.os.IInterface;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes2.dex */
public interface zzam extends IInterface {
    List<zzga> zza(zzm zzmVar, boolean z) throws RemoteException;

    List<zzr> zza(String str, String str2, zzm zzmVar) throws RemoteException;

    List<zzga> zza(String str, String str2, String str3, boolean z) throws RemoteException;

    List<zzga> zza(String str, String str2, boolean z, zzm zzmVar) throws RemoteException;

    void zza(long j, String str, String str2, String str3) throws RemoteException;

    void zza(zzaj zzajVar, zzm zzmVar) throws RemoteException;

    void zza(zzaj zzajVar, String str, String str2) throws RemoteException;

    void zza(zzga zzgaVar, zzm zzmVar) throws RemoteException;

    void zza(zzm zzmVar) throws RemoteException;

    void zza(zzr zzrVar, zzm zzmVar) throws RemoteException;

    byte[] zza(zzaj zzajVar, String str) throws RemoteException;

    void zzb(zzm zzmVar) throws RemoteException;

    void zzb(zzr zzrVar) throws RemoteException;

    String zzc(zzm zzmVar) throws RemoteException;

    List<zzr> zzd(String str, String str2, String str3) throws RemoteException;

    void zzd(zzm zzmVar) throws RemoteException;
}
