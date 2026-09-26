package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.google.android.gms.measurement.internal.zzlu;
import com.google.android.gms.measurement.internal.zzly;

/* JADX INFO: loaded from: classes10.dex */
public final class AppMeasurementService extends Service implements zzly {
    private zzlu<AppMeasurementService> zza;

    private final zzlu<AppMeasurementService> zza() {
        if (this.zza == null) {
            this.zza = new zzlu<>(this);
        }
        return this.zza;
    }

    @Override // com.google.android.gms.measurement.internal.zzly
    public final void zza(@NonNull Intent intent) {
        WakefulBroadcastReceiver.completeWakefulIntent(intent);
    }

    @Override // android.app.Service
    @Nullable
    @MainThread
    public final IBinder onBind(@NonNull Intent intent) {
        return zza().zza(intent);
    }

    @Override // android.app.Service
    @MainThread
    public final void onCreate() {
        super.onCreate();
        zza().zza();
    }

    @Override // android.app.Service
    @MainThread
    public final void onDestroy() {
        zza().zzb();
        super.onDestroy();
    }

    @Override // android.app.Service
    @MainThread
    public final void onRebind(@NonNull Intent intent) {
        zza().zzb(intent);
    }

    @Override // android.app.Service
    @MainThread
    public final int onStartCommand(@NonNull Intent intent, int i10, int i11) {
        return zza().zza(intent, i10, i11);
    }

    @Override // android.app.Service
    @MainThread
    public final boolean onUnbind(@NonNull Intent intent) {
        return zza().zzc(intent);
    }

    @Override // com.google.android.gms.measurement.internal.zzly
    public final void zza(@NonNull JobParameters jobParameters, boolean z6) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.measurement.internal.zzly
    public final boolean zza(int i10) {
        return stopSelfResult(i10);
    }
}
