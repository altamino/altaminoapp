package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import android.support.v4.content.WakefulBroadcastReceiver;
import com.google.android.gms.measurement.internal.zzfe;
import com.google.android.gms.measurement.internal.zzfi;

/* loaded from: classes2.dex */
public final class AppMeasurementService extends Service implements zzfi {
    private zzfe<AppMeasurementService> zzp;

    private final zzfe<AppMeasurementService> zzg() {
        if (this.zzp == null) {
            this.zzp = new zzfe<>(this);
        }
        return this.zzp;
    }

    @Override // android.app.Service
    public final void onCreate() throws IllegalStateException {
        super.onCreate();
        zzg().onCreate();
    }

    @Override // android.app.Service
    public final void onDestroy() throws IllegalStateException {
        zzg().onDestroy();
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        return zzg().onStartCommand(intent, i, i2);
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return zzg().onBind(intent);
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        return zzg().onUnbind(intent);
    }

    @Override // android.app.Service
    public final void onRebind(Intent intent) throws IllegalStateException {
        zzg().onRebind(intent);
    }

    @Override // com.google.android.gms.measurement.internal.zzfi
    public final boolean zza(int i) {
        return stopSelfResult(i);
    }

    @Override // com.google.android.gms.measurement.internal.zzfi
    public final void zza(JobParameters jobParameters, boolean z) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.measurement.internal.zzfi
    public final void zza(Intent intent) {
        WakefulBroadcastReceiver.completeWakefulIntent(intent);
    }
}
