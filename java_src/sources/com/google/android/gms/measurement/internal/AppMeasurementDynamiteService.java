package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
@DynamiteApi
public class AppMeasurementDynamiteService extends com.google.android.gms.internal.measurement.zzct {

    @VisibleForTesting
    zzhf zza = null;

    @GuardedBy
    private final Map<Integer, zzil> zzb = new ArrayMap();

    class zza implements zzim {
        private com.google.android.gms.internal.measurement.zzda zza;

        zza(com.google.android.gms.internal.measurement.zzda zzdaVar) {
            this.zza = zzdaVar;
        }

        @Override // com.google.android.gms.measurement.internal.zzim
        public final void interceptEvent(String str, String str2, Bundle bundle, long j6) {
            try {
                this.zza.zza(str, str2, bundle, j6);
            } catch (RemoteException e) {
                zzhf zzhfVar = AppMeasurementDynamiteService.this.zza;
                if (zzhfVar != null) {
                    zzhfVar.zzj().zzu().zza("Event interceptor threw exception", e);
                }
            }
        }
    }

    class zzb implements zzil {
        private com.google.android.gms.internal.measurement.zzda zza;

        zzb(com.google.android.gms.internal.measurement.zzda zzdaVar) {
            this.zza = zzdaVar;
        }

        @Override // com.google.android.gms.measurement.internal.zzil
        public final void onEvent(String str, String str2, Bundle bundle, long j6) {
            try {
                this.zza.zza(str, str2, bundle, j6);
            } catch (RemoteException e) {
                zzhf zzhfVar = AppMeasurementDynamiteService.this.zza;
                if (zzhfVar != null) {
                    zzhfVar.zzj().zzu().zza("Event listener threw exception", e);
                }
            }
        }
    }

    private final void zza() {
        if (this.zza == null) {
            throw new IllegalStateException("Attempting to perform action before initialize.");
        }
    }

    private final void zza(com.google.android.gms.internal.measurement.zzcv zzcvVar, String str) {
        zza();
        this.zza.zzt().zza(zzcvVar, str);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void initialize(IObjectWrapper iObjectWrapper, com.google.android.gms.internal.measurement.zzdd zzddVar, long j6) throws RemoteException {
        zzhf zzhfVar = this.zza;
        if (zzhfVar == null) {
            this.zza = zzhf.zza((Context) Preconditions.checkNotNull((Context) ObjectWrapper.unwrap(iObjectWrapper)), zzddVar, Long.valueOf(j6));
        } else {
            zzhfVar.zzj().zzu().zza("Attempting to initialize multiple times");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void beginAdUnitExposure(@NonNull String str, long j6) throws RemoteException {
        zza();
        this.zza.zze().zza(str, j6);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void clearConditionalUserProperty(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle) throws RemoteException {
        zza();
        this.zza.zzp().zza(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void clearMeasurementEnabled(long j6) throws RemoteException {
        zza();
        this.zza.zzp().zza((Boolean) null);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void endAdUnitExposure(@NonNull String str, long j6) throws RemoteException {
        zza();
        this.zza.zze().zzb(str, j6);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void generateEventId(com.google.android.gms.internal.measurement.zzcv zzcvVar) throws RemoteException {
        zza();
        long jZzm = this.zza.zzt().zzm();
        zza();
        this.zza.zzt().zza(zzcvVar, jZzm);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void getAppInstanceId(com.google.android.gms.internal.measurement.zzcv zzcvVar) throws RemoteException {
        zza();
        this.zza.zzl().zzb(new zzi(this, zzcvVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void getCachedAppInstanceId(com.google.android.gms.internal.measurement.zzcv zzcvVar) throws RemoteException {
        zza();
        zza(zzcvVar, this.zza.zzp().zzae());
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void getConditionalUserProperties(String str, String str2, com.google.android.gms.internal.measurement.zzcv zzcvVar) throws RemoteException {
        zza();
        this.zza.zzl().zzb(new zzl(this, zzcvVar, str, str2));
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void getCurrentScreenClass(com.google.android.gms.internal.measurement.zzcv zzcvVar) throws RemoteException {
        zza();
        zza(zzcvVar, this.zza.zzp().zzaf());
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void getCurrentScreenName(com.google.android.gms.internal.measurement.zzcv zzcvVar) throws RemoteException {
        zza();
        zza(zzcvVar, this.zza.zzp().zzag());
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void getGmpAppId(com.google.android.gms.internal.measurement.zzcv zzcvVar) throws RemoteException {
        zza();
        zza(zzcvVar, this.zza.zzp().zzah());
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void getMaxUserProperties(String str, com.google.android.gms.internal.measurement.zzcv zzcvVar) throws RemoteException {
        zza();
        this.zza.zzp();
        Preconditions.checkNotEmpty(str);
        zza();
        this.zza.zzt().zza(zzcvVar, 25);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void getSessionId(com.google.android.gms.internal.measurement.zzcv zzcvVar) throws RemoteException {
        zza();
        zziq zziqVarZzp = this.zza.zzp();
        zziqVarZzp.zzl().zzb(new zzjq(zziqVarZzp, zzcvVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void getTestFlag(com.google.android.gms.internal.measurement.zzcv zzcvVar, int i10) throws RemoteException {
        zza();
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 4) {
                            this.zza.zzt().zza(zzcvVar, this.zza.zzp().zzaa().booleanValue());
                            return;
                        }
                        return;
                    }
                    this.zza.zzt().zza(zzcvVar, this.zza.zzp().zzac().intValue());
                    return;
                }
                zznd zzndVarZzt = this.zza.zzt();
                double dDoubleValue = this.zza.zzp().zzab().doubleValue();
                Bundle bundle = new Bundle();
                bundle.putDouble("r", dDoubleValue);
                try {
                    zzcvVar.zza(bundle);
                    return;
                } catch (RemoteException e) {
                    zzndVarZzt.zzu.zzj().zzu().zza("Error returning double value to wrapper", e);
                    return;
                }
            }
            this.zza.zzt().zza(zzcvVar, this.zza.zzp().zzad().longValue());
            return;
        }
        this.zza.zzt().zza(zzcvVar, this.zza.zzp().zzai());
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void getUserProperties(String str, String str2, boolean z6, com.google.android.gms.internal.measurement.zzcv zzcvVar) throws RemoteException {
        zza();
        this.zza.zzl().zzb(new zzj(this, zzcvVar, str, str2, z6));
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void initForTests(@NonNull Map map) throws RemoteException {
        zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void isDataCollectionEnabled(com.google.android.gms.internal.measurement.zzcv zzcvVar) throws RemoteException {
        zza();
        this.zza.zzl().zzb(new zzn(this, zzcvVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void logEvent(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle, boolean z6, boolean z10, long j6) throws RemoteException {
        zza();
        this.zza.zzp().zza(str, str2, bundle, z6, z10, j6);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void logEventAndBundle(String str, String str2, Bundle bundle, com.google.android.gms.internal.measurement.zzcv zzcvVar, long j6) throws RemoteException {
        Bundle bundle2;
        zza();
        Preconditions.checkNotEmpty(str2);
        if (bundle != null) {
            bundle2 = new Bundle(bundle);
        } else {
            bundle2 = new Bundle();
        }
        bundle2.putString("_o", "app");
        this.zza.zzl().zzb(new zzk(this, zzcvVar, new zzbg(str2, new zzbb(bundle), "app", j6), str));
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void logHealthData(int i10, @NonNull String str, @NonNull IObjectWrapper iObjectWrapper, @NonNull IObjectWrapper iObjectWrapper2, @NonNull IObjectWrapper iObjectWrapper3) throws RemoteException {
        Object objUnwrap;
        Object objUnwrap2;
        zza();
        Object objUnwrap3 = null;
        if (iObjectWrapper == null) {
            objUnwrap = null;
        } else {
            objUnwrap = ObjectWrapper.unwrap(iObjectWrapper);
        }
        if (iObjectWrapper2 == null) {
            objUnwrap2 = null;
        } else {
            objUnwrap2 = ObjectWrapper.unwrap(iObjectWrapper2);
        }
        if (iObjectWrapper3 != null) {
            objUnwrap3 = ObjectWrapper.unwrap(iObjectWrapper3);
        }
        this.zza.zzj().zza(i10, true, false, str, objUnwrap, objUnwrap2, objUnwrap3);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void onActivityCreated(@NonNull IObjectWrapper iObjectWrapper, @NonNull Bundle bundle, long j6) throws RemoteException {
        zza();
        zzjx zzjxVar = this.zza.zzp().zza;
        if (zzjxVar != null) {
            this.zza.zzp().zzak();
            zzjxVar.onActivityCreated((Activity) ObjectWrapper.unwrap(iObjectWrapper), bundle);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void onActivityDestroyed(@NonNull IObjectWrapper iObjectWrapper, long j6) throws RemoteException {
        zza();
        zzjx zzjxVar = this.zza.zzp().zza;
        if (zzjxVar != null) {
            this.zza.zzp().zzak();
            zzjxVar.onActivityDestroyed((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void onActivityPaused(@NonNull IObjectWrapper iObjectWrapper, long j6) throws RemoteException {
        zza();
        zzjx zzjxVar = this.zza.zzp().zza;
        if (zzjxVar != null) {
            this.zza.zzp().zzak();
            zzjxVar.onActivityPaused((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void onActivityResumed(@NonNull IObjectWrapper iObjectWrapper, long j6) throws RemoteException {
        zza();
        zzjx zzjxVar = this.zza.zzp().zza;
        if (zzjxVar != null) {
            this.zza.zzp().zzak();
            zzjxVar.onActivityResumed((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, com.google.android.gms.internal.measurement.zzcv zzcvVar, long j6) throws RemoteException {
        zza();
        zzjx zzjxVar = this.zza.zzp().zza;
        Bundle bundle = new Bundle();
        if (zzjxVar != null) {
            this.zza.zzp().zzak();
            zzjxVar.onActivitySaveInstanceState((Activity) ObjectWrapper.unwrap(iObjectWrapper), bundle);
        }
        try {
            zzcvVar.zza(bundle);
        } catch (RemoteException e) {
            this.zza.zzj().zzu().zza("Error returning bundle value to wrapper", e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void onActivityStarted(@NonNull IObjectWrapper iObjectWrapper, long j6) throws RemoteException {
        zza();
        zzjx zzjxVar = this.zza.zzp().zza;
        if (zzjxVar != null) {
            this.zza.zzp().zzak();
            zzjxVar.onActivityStarted((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void onActivityStopped(@NonNull IObjectWrapper iObjectWrapper, long j6) throws RemoteException {
        zza();
        zzjx zzjxVar = this.zza.zzp().zza;
        if (zzjxVar != null) {
            this.zza.zzp().zzak();
            zzjxVar.onActivityStopped((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void performAction(Bundle bundle, com.google.android.gms.internal.measurement.zzcv zzcvVar, long j6) throws RemoteException {
        zza();
        zzcvVar.zza(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void registerOnMeasurementEventListener(com.google.android.gms.internal.measurement.zzda zzdaVar) throws RemoteException {
        zzil zzbVar;
        zza();
        synchronized (this.zzb) {
            try {
                zzbVar = this.zzb.get(Integer.valueOf(zzdaVar.zza()));
                if (zzbVar == null) {
                    zzbVar = new zzb(zzdaVar);
                    this.zzb.put(Integer.valueOf(zzdaVar.zza()), zzbVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.zza.zzp().zza(zzbVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void resetAnalyticsData(long j6) throws RemoteException {
        zza();
        zziq zziqVarZzp = this.zza.zzp();
        zziqVarZzp.zza((String) null);
        zziqVarZzp.zzl().zzb(new zzjk(zziqVarZzp, j6));
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void setConditionalUserProperty(@NonNull Bundle bundle, long j6) throws RemoteException {
        zza();
        if (bundle == null) {
            this.zza.zzj().zzg().zza("Conditional user property must not be null");
        } else {
            this.zza.zzp().zza(bundle, j6);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void setConsent(@NonNull final Bundle bundle, final long j6) throws RemoteException {
        zza();
        final zziq zziqVarZzp = this.zza.zzp();
        zziqVarZzp.zzl().zzc(new Runnable() { // from class: com.google.android.gms.measurement.internal.zziw
            @Override // java.lang.Runnable
            public final void run() {
                zziq zziqVar = zziqVarZzp;
                Bundle bundle2 = bundle;
                long j10 = j6;
                if (TextUtils.isEmpty(zziqVar.zzg().zzae())) {
                    zziqVar.zza(bundle2, 0, j10);
                } else {
                    zziqVar.zzj().zzv().zza("Using developer consent only; google app id found");
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void setConsentThirdParty(@NonNull Bundle bundle, long j6) throws RemoteException {
        zza();
        this.zza.zzp().zza(bundle, -20, j6);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void setCurrentScreen(@NonNull IObjectWrapper iObjectWrapper, @NonNull String str, @NonNull String str2, long j6) throws RemoteException {
        zza();
        this.zza.zzq().zza((Activity) ObjectWrapper.unwrap(iObjectWrapper), str, str2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void setDataCollectionEnabled(boolean z6) throws RemoteException {
        zza();
        zziq zziqVarZzp = this.zza.zzp();
        zziqVarZzp.zzu();
        zziqVarZzp.zzl().zzb(new zzjb(zziqVarZzp, z6));
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void setDefaultEventParameters(@NonNull Bundle bundle) {
        final Bundle bundle2;
        zza();
        final zziq zziqVarZzp = this.zza.zzp();
        if (bundle == null) {
            bundle2 = null;
        } else {
            bundle2 = new Bundle(bundle);
        }
        zziqVarZzp.zzl().zzb(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzit
            @Override // java.lang.Runnable
            public final void run() {
                zziqVarZzp.zza(bundle2);
            }
        });
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void setEventInterceptor(com.google.android.gms.internal.measurement.zzda zzdaVar) throws RemoteException {
        zza();
        zza zzaVar = new zza(zzdaVar);
        if (this.zza.zzl().zzg()) {
            this.zza.zzp().zza(zzaVar);
        } else {
            this.zza.zzl().zzb(new zzm(this, zzaVar));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void setInstanceIdProvider(com.google.android.gms.internal.measurement.zzdb zzdbVar) throws RemoteException {
        zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void setMeasurementEnabled(boolean z6, long j6) throws RemoteException {
        zza();
        this.zza.zzp().zza(Boolean.valueOf(z6));
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void setMinimumSessionDuration(long j6) throws RemoteException {
        zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void setSessionTimeoutDuration(long j6) throws RemoteException {
        zza();
        zziq zziqVarZzp = this.zza.zzp();
        zziqVarZzp.zzl().zzb(new zzjd(zziqVarZzp, j6));
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void setUserId(@NonNull final String str, long j6) throws RemoteException {
        zza();
        final zziq zziqVarZzp = this.zza.zzp();
        if (str != null && TextUtils.isEmpty(str)) {
            zziqVarZzp.zzu.zzj().zzu().zza("User ID must be non-empty or null");
        } else {
            zziqVarZzp.zzl().zzb(new Runnable() { // from class: com.google.android.gms.measurement.internal.zziy
                @Override // java.lang.Runnable
                public final void run() {
                    zziq zziqVar = zziqVarZzp;
                    if (zziqVar.zzg().zzb(str)) {
                        zziqVar.zzg().zzag();
                    }
                }
            });
            zziqVarZzp.zza((String) null, "_id", (Object) str, true, j6);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void setUserProperty(@NonNull String str, @NonNull String str2, @NonNull IObjectWrapper iObjectWrapper, boolean z6, long j6) throws RemoteException {
        zza();
        this.zza.zzp().zza(str, str2, ObjectWrapper.unwrap(iObjectWrapper), z6, j6);
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public void unregisterOnMeasurementEventListener(com.google.android.gms.internal.measurement.zzda zzdaVar) throws RemoteException {
        zzil zzilVarRemove;
        zza();
        synchronized (this.zzb) {
            zzilVarRemove = this.zzb.remove(Integer.valueOf(zzdaVar.zza()));
        }
        if (zzilVarRemove == null) {
            zzilVarRemove = new zzb(zzdaVar);
        }
        this.zza.zzp().zzb(zzilVarRemove);
    }
}
