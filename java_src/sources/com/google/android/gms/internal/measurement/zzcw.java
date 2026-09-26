package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public final class zzcw extends zzbu implements zzcu {
    zzcw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void beginAdUnitExposure(String str, long j6) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeLong(j6);
        zzb(23, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        zzbw.zza(parcelA_, bundle);
        zzb(9, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void clearMeasurementEnabled(long j6) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeLong(j6);
        zzb(43, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void endAdUnitExposure(String str, long j6) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeLong(j6);
        zzb(24, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void generateEventId(zzcv zzcvVar) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, zzcvVar);
        zzb(22, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void getAppInstanceId(zzcv zzcvVar) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, zzcvVar);
        zzb(20, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void getCachedAppInstanceId(zzcv zzcvVar) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, zzcvVar);
        zzb(19, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void getConditionalUserProperties(String str, String str2, zzcv zzcvVar) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        zzbw.zza(parcelA_, zzcvVar);
        zzb(10, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void getCurrentScreenClass(zzcv zzcvVar) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, zzcvVar);
        zzb(17, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void getCurrentScreenName(zzcv zzcvVar) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, zzcvVar);
        zzb(16, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void getGmpAppId(zzcv zzcvVar) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, zzcvVar);
        zzb(21, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void getMaxUserProperties(String str, zzcv zzcvVar) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        zzbw.zza(parcelA_, zzcvVar);
        zzb(6, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void getSessionId(zzcv zzcvVar) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, zzcvVar);
        zzb(46, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void getTestFlag(zzcv zzcvVar, int i10) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, zzcvVar);
        parcelA_.writeInt(i10);
        zzb(38, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void getUserProperties(String str, String str2, boolean z6, zzcv zzcvVar) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        zzbw.zza(parcelA_, z6);
        zzbw.zza(parcelA_, zzcvVar);
        zzb(5, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void initForTests(Map map) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeMap(map);
        zzb(37, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void initialize(IObjectWrapper iObjectWrapper, zzdd zzddVar, long j6) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, iObjectWrapper);
        zzbw.zza(parcelA_, zzddVar);
        parcelA_.writeLong(j6);
        zzb(1, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void isDataCollectionEnabled(zzcv zzcvVar) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, zzcvVar);
        zzb(40, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void logEvent(String str, String str2, Bundle bundle, boolean z6, boolean z10, long j6) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        zzbw.zza(parcelA_, bundle);
        zzbw.zza(parcelA_, z6);
        zzbw.zza(parcelA_, z10);
        parcelA_.writeLong(j6);
        zzb(2, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void logEventAndBundle(String str, String str2, Bundle bundle, zzcv zzcvVar, long j6) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        zzbw.zza(parcelA_, bundle);
        zzbw.zza(parcelA_, zzcvVar);
        parcelA_.writeLong(j6);
        zzb(3, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void logHealthData(int i10, String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeInt(i10);
        parcelA_.writeString(str);
        zzbw.zza(parcelA_, iObjectWrapper);
        zzbw.zza(parcelA_, iObjectWrapper2);
        zzbw.zza(parcelA_, iObjectWrapper3);
        zzb(33, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void onActivityCreated(IObjectWrapper iObjectWrapper, Bundle bundle, long j6) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, iObjectWrapper);
        zzbw.zza(parcelA_, bundle);
        parcelA_.writeLong(j6);
        zzb(27, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void onActivityDestroyed(IObjectWrapper iObjectWrapper, long j6) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, iObjectWrapper);
        parcelA_.writeLong(j6);
        zzb(28, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void onActivityPaused(IObjectWrapper iObjectWrapper, long j6) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, iObjectWrapper);
        parcelA_.writeLong(j6);
        zzb(29, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void onActivityResumed(IObjectWrapper iObjectWrapper, long j6) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, iObjectWrapper);
        parcelA_.writeLong(j6);
        zzb(30, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, zzcv zzcvVar, long j6) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, iObjectWrapper);
        zzbw.zza(parcelA_, zzcvVar);
        parcelA_.writeLong(j6);
        zzb(31, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void onActivityStarted(IObjectWrapper iObjectWrapper, long j6) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, iObjectWrapper);
        parcelA_.writeLong(j6);
        zzb(25, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void onActivityStopped(IObjectWrapper iObjectWrapper, long j6) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, iObjectWrapper);
        parcelA_.writeLong(j6);
        zzb(26, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void performAction(Bundle bundle, zzcv zzcvVar, long j6) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, bundle);
        zzbw.zza(parcelA_, zzcvVar);
        parcelA_.writeLong(j6);
        zzb(32, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void registerOnMeasurementEventListener(zzda zzdaVar) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, zzdaVar);
        zzb(35, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void resetAnalyticsData(long j6) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeLong(j6);
        zzb(12, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void setConditionalUserProperty(Bundle bundle, long j6) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, bundle);
        parcelA_.writeLong(j6);
        zzb(8, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void setConsent(Bundle bundle, long j6) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, bundle);
        parcelA_.writeLong(j6);
        zzb(44, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void setConsentThirdParty(Bundle bundle, long j6) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, bundle);
        parcelA_.writeLong(j6);
        zzb(45, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void setCurrentScreen(IObjectWrapper iObjectWrapper, String str, String str2, long j6) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, iObjectWrapper);
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        parcelA_.writeLong(j6);
        zzb(15, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void setDataCollectionEnabled(boolean z6) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, z6);
        zzb(39, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void setDefaultEventParameters(Bundle bundle) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, bundle);
        zzb(42, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void setEventInterceptor(zzda zzdaVar) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, zzdaVar);
        zzb(34, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void setInstanceIdProvider(zzdb zzdbVar) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, zzdbVar);
        zzb(18, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void setMeasurementEnabled(boolean z6, long j6) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, z6);
        parcelA_.writeLong(j6);
        zzb(11, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void setMinimumSessionDuration(long j6) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeLong(j6);
        zzb(13, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void setSessionTimeoutDuration(long j6) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeLong(j6);
        zzb(14, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void setUserId(String str, long j6) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeLong(j6);
        zzb(7, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void setUserProperty(String str, String str2, IObjectWrapper iObjectWrapper, boolean z6, long j6) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        zzbw.zza(parcelA_, iObjectWrapper);
        zzbw.zza(parcelA_, z6);
        parcelA_.writeLong(j6);
        zzb(4, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void unregisterOnMeasurementEventListener(zzda zzdaVar) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, zzdaVar);
        zzb(36, parcelA_);
    }
}
