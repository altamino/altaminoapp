package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.util.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Map;

@DynamiteApi
/* loaded from: classes2.dex */
public class AppMeasurementDynamiteService extends com.google.android.gms.internal.measurement.zzo {

    @VisibleForTesting
    zzby zzl = null;
    private Map<Integer, zzdb> zzad = new ArrayMap();

    class zza implements zzda {
        private com.google.android.gms.internal.measurement.zzt zzdm;

        zza(com.google.android.gms.internal.measurement.zzt zztVar) {
            this.zzdm = zztVar;
        }

        @Override // com.google.android.gms.measurement.internal.zzda
        public final void interceptEvent(String str, String str2, Bundle bundle, long j) throws IllegalStateException {
            try {
                this.zzdm.onEvent(str, str2, bundle, j);
            } catch (RemoteException e) {
                AppMeasurementDynamiteService.this.zzl.zzad().zzdd().zza("Event interceptor threw exception", e);
            }
        }
    }

    class zzb implements zzdb {
        private com.google.android.gms.internal.measurement.zzt zzdm;

        zzb(com.google.android.gms.internal.measurement.zzt zztVar) {
            this.zzdm = zztVar;
        }

        @Override // com.google.android.gms.measurement.internal.zzdb
        public final void onEvent(String str, String str2, Bundle bundle, long j) throws IllegalStateException {
            try {
                this.zzdm.onEvent(str, str2, bundle, j);
            } catch (RemoteException e) {
                AppMeasurementDynamiteService.this.zzl.zzad().zzdd().zza("Event listener threw exception", e);
            }
        }
    }

    private final void zzah() {
        if (this.zzl == null) {
            throw new IllegalStateException("Attempting to perform action before initialize.");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void initialize(IObjectWrapper iObjectWrapper, com.google.android.gms.internal.measurement.zzy zzyVar, long j) throws IllegalStateException, RemoteException {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzby zzbyVar = this.zzl;
        if (zzbyVar == null) {
            this.zzl = zzby.zza(context, zzyVar);
        } else {
            zzbyVar.zzad().zzdd().zzaq("Attempting to initialize multiple times");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) throws RemoteException {
        zzah();
        this.zzl.zzs().logEvent(str, str2, bundle, z, z2, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void setUserProperty(String str, String str2, IObjectWrapper iObjectWrapper, boolean z, long j) throws IllegalStateException, RemoteException {
        zzah();
        this.zzl.zzs().zza(str, str2, ObjectWrapper.unwrap(iObjectWrapper), z, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void setUserId(String str, long j) throws IllegalStateException, RemoteException {
        zzah();
        this.zzl.zzs().zza(null, "_id", str, true, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void setCurrentScreen(IObjectWrapper iObjectWrapper, String str, String str2, long j) throws IllegalStateException, RemoteException {
        zzah();
        this.zzl.zzv().setCurrentScreen((Activity) ObjectWrapper.unwrap(iObjectWrapper), str, str2);
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void setMeasurementEnabled(boolean z, long j) throws RemoteException {
        zzah();
        this.zzl.zzs().setMeasurementEnabled(z);
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void resetAnalyticsData(long j) throws IllegalStateException, RemoteException {
        zzah();
        this.zzl.zzs().resetAnalyticsData(j);
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void setMinimumSessionDuration(long j) throws IllegalStateException, RemoteException {
        zzah();
        this.zzl.zzs().setMinimumSessionDuration(j);
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void setSessionTimeoutDuration(long j) throws IllegalStateException, RemoteException {
        zzah();
        this.zzl.zzs().setSessionTimeoutDuration(j);
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void getMaxUserProperties(String str, com.google.android.gms.internal.measurement.zzq zzqVar) throws IllegalStateException, RemoteException {
        zzah();
        this.zzl.zzs();
        Preconditions.checkNotEmpty(str);
        this.zzl.zzab().zza(zzqVar, 25);
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void getCurrentScreenName(com.google.android.gms.internal.measurement.zzq zzqVar) throws IllegalStateException, RemoteException {
        zzah();
        zza(zzqVar, this.zzl.zzs().getCurrentScreenName());
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void getCurrentScreenClass(com.google.android.gms.internal.measurement.zzq zzqVar) throws IllegalStateException, RemoteException {
        zzah();
        zza(zzqVar, this.zzl.zzs().getCurrentScreenClass());
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void getCachedAppInstanceId(com.google.android.gms.internal.measurement.zzq zzqVar) throws IllegalStateException, RemoteException {
        zzah();
        zza(zzqVar, this.zzl.zzs().zzj());
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void getAppInstanceId(com.google.android.gms.internal.measurement.zzq zzqVar) throws IllegalStateException, RemoteException {
        zzah();
        this.zzl.zzac().zza(new zzh(this, zzqVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void getGmpAppId(com.google.android.gms.internal.measurement.zzq zzqVar) throws IllegalStateException, RemoteException {
        zzah();
        zza(zzqVar, this.zzl.zzs().getGmpAppId());
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void generateEventId(com.google.android.gms.internal.measurement.zzq zzqVar) throws IllegalStateException, RemoteException {
        zzah();
        this.zzl.zzab().zza(zzqVar, this.zzl.zzab().zzgk());
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void beginAdUnitExposure(String str, long j) throws RemoteException {
        zzah();
        this.zzl.zzr().beginAdUnitExposure(str, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void endAdUnitExposure(String str, long j) throws RemoteException {
        zzah();
        this.zzl.zzr().endAdUnitExposure(str, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void initForTests(Map map) throws RemoteException {
        zzah();
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void logEventAndBundle(String str, String str2, Bundle bundle, com.google.android.gms.internal.measurement.zzq zzqVar, long j) throws IllegalStateException, RemoteException {
        zzah();
        Preconditions.checkNotEmpty(str2);
        (bundle != null ? new Bundle(bundle) : new Bundle()).putString("_o", "app");
        this.zzl.zzac().zza(new zzi(this, zzqVar, new zzaj(str2, new zzag(bundle), "app", j), str));
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void onActivityStarted(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zzah();
        zzdx zzdxVar = this.zzl.zzs().zzpf;
        if (zzdxVar != null) {
            this.zzl.zzs().zzeu();
            zzdxVar.onActivityStarted((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void onActivityStopped(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zzah();
        zzdx zzdxVar = this.zzl.zzs().zzpf;
        if (zzdxVar != null) {
            this.zzl.zzs().zzeu();
            zzdxVar.onActivityStopped((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void onActivityCreated(IObjectWrapper iObjectWrapper, Bundle bundle, long j) throws IllegalStateException, RemoteException {
        zzah();
        zzdx zzdxVar = this.zzl.zzs().zzpf;
        this.zzl.zzad().zzdd().zzaq("Got on activity created");
        if (zzdxVar != null) {
            this.zzl.zzs().zzeu();
            zzdxVar.onActivityCreated((Activity) ObjectWrapper.unwrap(iObjectWrapper), bundle);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void onActivityDestroyed(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zzah();
        zzdx zzdxVar = this.zzl.zzs().zzpf;
        if (zzdxVar != null) {
            this.zzl.zzs().zzeu();
            zzdxVar.onActivityDestroyed((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void onActivityPaused(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zzah();
        zzdx zzdxVar = this.zzl.zzs().zzpf;
        if (zzdxVar != null) {
            this.zzl.zzs().zzeu();
            zzdxVar.onActivityPaused((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void onActivityResumed(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zzah();
        zzdx zzdxVar = this.zzl.zzs().zzpf;
        if (zzdxVar != null) {
            this.zzl.zzs().zzeu();
            zzdxVar.onActivityResumed((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, com.google.android.gms.internal.measurement.zzq zzqVar, long j) throws IllegalStateException, RemoteException {
        zzah();
        zzdx zzdxVar = this.zzl.zzs().zzpf;
        Bundle bundle = new Bundle();
        if (zzdxVar != null) {
            this.zzl.zzs().zzeu();
            zzdxVar.onActivitySaveInstanceState((Activity) ObjectWrapper.unwrap(iObjectWrapper), bundle);
        }
        try {
            zzqVar.zzb(bundle);
        } catch (RemoteException e) {
            this.zzl.zzad().zzdd().zza("Error returning bundle value to wrapper", e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void performAction(Bundle bundle, com.google.android.gms.internal.measurement.zzq zzqVar, long j) throws RemoteException {
        zzah();
        zzqVar.zzb(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void getUserProperties(String str, String str2, boolean z, com.google.android.gms.internal.measurement.zzq zzqVar) throws IllegalStateException, RemoteException {
        zzah();
        this.zzl.zzac().zza(new zzj(this, zzqVar, str, str2, z));
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void logHealthData(int i, String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws IllegalStateException, RemoteException {
        zzah();
        this.zzl.zzad().zza(i, true, false, str, iObjectWrapper == null ? null : ObjectWrapper.unwrap(iObjectWrapper), iObjectWrapper2 == null ? null : ObjectWrapper.unwrap(iObjectWrapper2), iObjectWrapper3 != null ? ObjectWrapper.unwrap(iObjectWrapper3) : null);
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void setEventInterceptor(com.google.android.gms.internal.measurement.zzt zztVar) throws IllegalStateException, RemoteException {
        zzah();
        zzdd zzddVarZzs = this.zzl.zzs();
        zza zzaVar = new zza(zztVar);
        zzddVarZzs.zzo();
        zzddVarZzs.zzah();
        zzddVarZzs.zzac().zza(new zzdk(zzddVarZzs, zzaVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void registerOnMeasurementEventListener(com.google.android.gms.internal.measurement.zzt zztVar) throws RemoteException {
        zzah();
        zzdb zzbVar = this.zzad.get(Integer.valueOf(zztVar.id()));
        if (zzbVar == null) {
            zzbVar = new zzb(zztVar);
            this.zzad.put(Integer.valueOf(zztVar.id()), zzbVar);
        }
        this.zzl.zzs().zza(zzbVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void unregisterOnMeasurementEventListener(com.google.android.gms.internal.measurement.zzt zztVar) throws RemoteException {
        zzah();
        zzdb zzdbVarRemove = this.zzad.remove(Integer.valueOf(zztVar.id()));
        if (zzdbVarRemove == null) {
            zzdbVarRemove = new zzb(zztVar);
        }
        this.zzl.zzs().zzb(zzdbVarRemove);
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void setInstanceIdProvider(com.google.android.gms.internal.measurement.zzw zzwVar) throws RemoteException {
        zzah();
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void setConditionalUserProperty(Bundle bundle, long j) throws IllegalStateException, RemoteException {
        zzah();
        if (bundle == null) {
            this.zzl.zzad().zzda().zzaq("Conditional user property must not be null");
        } else {
            this.zzl.zzs().setConditionalUserProperty(bundle, j);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException {
        zzah();
        this.zzl.zzs().clearConditionalUserProperty(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void getConditionalUserProperties(String str, String str2, com.google.android.gms.internal.measurement.zzq zzqVar) throws IllegalStateException, RemoteException {
        zzah();
        this.zzl.zzac().zza(new zzk(this, zzqVar, str, str2));
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void getTestFlag(com.google.android.gms.internal.measurement.zzq zzqVar, int i) throws IllegalStateException, RemoteException {
        zzah();
        if (i == 0) {
            this.zzl.zzab().zzb(zzqVar, this.zzl.zzs().zzew());
            return;
        }
        if (i == 1) {
            this.zzl.zzab().zza(zzqVar, this.zzl.zzs().zzex().longValue());
            return;
        }
        if (i != 2) {
            if (i == 3) {
                this.zzl.zzab().zza(zzqVar, this.zzl.zzs().zzey().intValue());
                return;
            } else {
                if (i != 4) {
                    return;
                }
                this.zzl.zzab().zza(zzqVar, this.zzl.zzs().zzev().booleanValue());
                return;
            }
        }
        zzgd zzgdVarZzab = this.zzl.zzab();
        double dDoubleValue = this.zzl.zzs().zzez().doubleValue();
        Bundle bundle = new Bundle();
        bundle.putDouble("r", dDoubleValue);
        try {
            zzqVar.zzb(bundle);
        } catch (RemoteException e) {
            zzgdVarZzab.zzl.zzad().zzdd().zza("Error returning double value to wrapper", e);
        }
    }

    private final void zza(com.google.android.gms.internal.measurement.zzq zzqVar, String str) throws IllegalStateException {
        this.zzl.zzab().zzb(zzqVar, str);
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void setDataCollectionEnabled(boolean z) throws RemoteException {
        zzah();
        this.zzl.zzs().zza(z);
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public void isDataCollectionEnabled(com.google.android.gms.internal.measurement.zzq zzqVar) throws IllegalStateException, RemoteException {
        zzah();
        this.zzl.zzac().zza(new zzl(this, zzqVar));
    }
}
