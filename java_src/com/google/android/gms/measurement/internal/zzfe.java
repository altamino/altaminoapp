package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzfi;

/* loaded from: classes2.dex */
public final class zzfe<T extends Context & zzfi> {
    private final T zzrb;

    public zzfe(T t) {
        Preconditions.checkNotNull(t);
        this.zzrb = t;
    }

    public final void onCreate() throws IllegalStateException {
        zzby zzbyVarZza = zzby.zza(this.zzrb, (com.google.android.gms.internal.measurement.zzy) null);
        zzau zzauVarZzad = zzbyVarZza.zzad();
        zzbyVarZza.zzag();
        zzauVarZzad.zzdi().zzaq("Local AppMeasurementService is starting up");
    }

    public final void onDestroy() throws IllegalStateException {
        zzby zzbyVarZza = zzby.zza(this.zzrb, (com.google.android.gms.internal.measurement.zzy) null);
        zzau zzauVarZzad = zzbyVarZza.zzad();
        zzbyVarZza.zzag();
        zzauVarZzad.zzdi().zzaq("Local AppMeasurementService is shutting down");
    }

    public final int onStartCommand(final Intent intent, int i, final int i2) throws IllegalStateException {
        zzby zzbyVarZza = zzby.zza(this.zzrb, (com.google.android.gms.internal.measurement.zzy) null);
        final zzau zzauVarZzad = zzbyVarZza.zzad();
        if (intent == null) {
            zzauVarZzad.zzdd().zzaq("AppMeasurementService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        zzbyVarZza.zzag();
        zzauVarZzad.zzdi().zza("Local AppMeasurementService called. startId, action", Integer.valueOf(i2), action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            zze(new Runnable(this, i2, zzauVarZzad, intent) { // from class: com.google.android.gms.measurement.internal.zzff
                private final zzfe zzrc;
                private final int zzrd;
                private final zzau zzre;
                private final Intent zzrf;

                {
                    this.zzrc = this;
                    this.zzrd = i2;
                    this.zzre = zzauVarZzad;
                    this.zzrf = intent;
                }

                @Override // java.lang.Runnable
                public final void run() throws IllegalStateException {
                    this.zzrc.zza(this.zzrd, this.zzre, this.zzrf);
                }
            });
        }
        return 2;
    }

    private final void zze(Runnable runnable) throws IllegalStateException {
        zzft zzftVarZzm = zzft.zzm(this.zzrb);
        zzftVarZzm.zzac().zza(new zzfh(this, zzftVarZzm, runnable));
    }

    public final IBinder onBind(Intent intent) throws IllegalStateException {
        if (intent == null) {
            zzad().zzda().zzaq("onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new zzca(zzft.zzm(this.zzrb));
        }
        zzad().zzdd().zza("onBind received unknown action", action);
        return null;
    }

    public final boolean onUnbind(Intent intent) throws IllegalStateException {
        if (intent == null) {
            zzad().zzda().zzaq("onUnbind called with null intent");
            return true;
        }
        zzad().zzdi().zza("onUnbind called for intent. action", intent.getAction());
        return true;
    }

    @TargetApi(24)
    public final boolean onStartJob(final JobParameters jobParameters) throws IllegalStateException {
        zzby zzbyVarZza = zzby.zza(this.zzrb, (com.google.android.gms.internal.measurement.zzy) null);
        final zzau zzauVarZzad = zzbyVarZza.zzad();
        String string = jobParameters.getExtras().getString("action");
        zzbyVarZza.zzag();
        zzauVarZzad.zzdi().zza("Local AppMeasurementJobService called. action", string);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(string)) {
            return true;
        }
        zze(new Runnable(this, zzauVarZzad, jobParameters) { // from class: com.google.android.gms.measurement.internal.zzfg
            private final zzfe zzrc;
            private final zzau zzrg;
            private final JobParameters zzrh;

            {
                this.zzrc = this;
                this.zzrg = zzauVarZzad;
                this.zzrh = jobParameters;
            }

            @Override // java.lang.Runnable
            public final void run() throws IllegalStateException {
                this.zzrc.zza(this.zzrg, this.zzrh);
            }
        });
        return true;
    }

    public final void onRebind(Intent intent) throws IllegalStateException {
        if (intent == null) {
            zzad().zzda().zzaq("onRebind called with null intent");
        } else {
            zzad().zzdi().zza("onRebind called. action", intent.getAction());
        }
    }

    private final zzau zzad() {
        return zzby.zza(this.zzrb, (com.google.android.gms.internal.measurement.zzy) null).zzad();
    }

    final /* synthetic */ void zza(zzau zzauVar, JobParameters jobParameters) throws IllegalStateException {
        zzauVar.zzdi().zzaq("AppMeasurementJobService processed last upload request.");
        this.zzrb.zza(jobParameters, false);
    }

    final /* synthetic */ void zza(int i, zzau zzauVar, Intent intent) throws IllegalStateException {
        if (this.zzrb.zza(i)) {
            zzauVar.zzdi().zza("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i));
            zzad().zzdi().zzaq("Completed wakeful intent.");
            this.zzrb.zza(intent);
        }
    }
}
