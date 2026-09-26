package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.MainThread;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzly;

/* JADX INFO: loaded from: classes11.dex */
public final class zzlu<T extends Context & zzly> {
    private final T zza;

    private final zzfr zzc() {
        return zzhf.zza(this.zza, null, null).zzj();
    }

    @MainThread
    public final int zza(final Intent intent, int i10, final int i11) {
        final zzfr zzfrVarZzj = zzhf.zza(this.zza, null, null).zzj();
        if (intent == null) {
            zzfrVarZzj.zzu().zza("AppMeasurementService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        zzfrVarZzj.zzp().zza("Local AppMeasurementService called. startId, action", Integer.valueOf(i11), action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            zza(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzlw
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zza(i11, zzfrVarZzj, intent);
                }
            });
        }
        return 2;
    }

    @MainThread
    public final void zzb() {
        zzhf.zza(this.zza, null, null).zzj().zzp().zza("Local AppMeasurementService is shutting down");
    }

    public zzlu(T t5) {
        Preconditions.checkNotNull(t5);
        this.zza = t5;
    }

    @MainThread
    public final boolean zzc(Intent intent) {
        if (intent == null) {
            zzc().zzg().zza("onUnbind called with null intent");
            return true;
        }
        zzc().zzp().zza("onUnbind called for intent. action", intent.getAction());
        return true;
    }

    @MainThread
    public final void zzb(Intent intent) {
        if (intent == null) {
            zzc().zzg().zza("onRebind called with null intent");
        } else {
            zzc().zzp().zza("onRebind called. action", intent.getAction());
        }
    }

    @MainThread
    public final IBinder zza(Intent intent) {
        if (intent == null) {
            zzc().zzg().zza("onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new zzhj(zzmp.zza(this.zza));
        }
        zzc().zzu().zza("onBind received unknown action", action);
        return null;
    }

    final /* synthetic */ void zza(int i10, zzfr zzfrVar, Intent intent) {
        if (this.zza.zza(i10)) {
            zzfrVar.zzp().zza("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i10));
            zzc().zzp().zza("Completed wakeful intent.");
            this.zza.zza(intent);
        }
    }

    final /* synthetic */ void zza(zzfr zzfrVar, JobParameters jobParameters) {
        zzfrVar.zzp().zza("AppMeasurementJobService processed last upload request.");
        this.zza.zza(jobParameters, false);
    }

    @MainThread
    public final void zza() {
        zzhf.zza(this.zza, null, null).zzj().zzp().zza("Local AppMeasurementService is starting up");
    }

    private final void zza(Runnable runnable) {
        zzmp zzmpVarZza = zzmp.zza(this.zza);
        zzmpVarZza.zzl().zzb(new zzlv(this, zzmpVarZza, runnable));
    }

    @TargetApi(24)
    @MainThread
    public final boolean zza(final JobParameters jobParameters) {
        final zzfr zzfrVarZzj = zzhf.zza(this.zza, null, null).zzj();
        String string = jobParameters.getExtras().getString("action");
        zzfrVarZzj.zzp().zza("Local AppMeasurementJobService called. action", string);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(string)) {
            return true;
        }
        zza(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzlt
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zza(zzfrVarZzj, jobParameters);
            }
        });
        return true;
    }
}
