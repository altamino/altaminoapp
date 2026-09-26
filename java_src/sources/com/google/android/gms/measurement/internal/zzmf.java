package com.google.android.gms.measurement.internal;

import android.app.ActivityManager;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.android.gms.internal.measurement.zznv;
import com.google.android.gms.internal.measurement.zzps;

/* JADX INFO: loaded from: classes11.dex */
final class zzmf {
    final /* synthetic */ zzlx zza;

    @WorkerThread
    final void zza() {
        this.zza.zzt();
        if (this.zza.zzk().zza(this.zza.zzb().currentTimeMillis())) {
            this.zza.zzk().zzg.zza(true);
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance == 100) {
                this.zza.zzj().zzp().zza("Detected application was in foreground");
                zzb(this.zza.zzb().currentTimeMillis(), false);
            }
        }
    }

    zzmf(zzlx zzlxVar) {
        this.zza = zzlxVar;
    }

    @VisibleForTesting
    @WorkerThread
    private final void zzb(long j6, boolean z6) {
        this.zza.zzt();
        if (this.zza.zzu.zzac()) {
            this.zza.zzk().zzk.zza(j6);
            this.zza.zzj().zzp().zza("Session started, time", Long.valueOf(this.zza.zzb().elapsedRealtime()));
            Long lValueOf = Long.valueOf(j6 / 1000);
            this.zza.zzm().zza("auto", "_sid", lValueOf, j6);
            this.zza.zzk().zzl.zza(lValueOf.longValue());
            this.zza.zzk().zzg.zza(false);
            Bundle bundle = new Bundle();
            bundle.putLong("_sid", lValueOf.longValue());
            if (this.zza.zze().zza(zzbi.zzbj) && z6) {
                bundle.putLong("_aib", 1L);
            }
            this.zza.zzm().zza("auto", "_s", j6, bundle);
            if (zznv.zza() && this.zza.zze().zza(zzbi.zzbm)) {
                String strZza = this.zza.zzk().zzq.zza();
                if (TextUtils.isEmpty(strZza)) {
                    return;
                }
                Bundle bundle2 = new Bundle();
                bundle2.putString("_ffr", strZza);
                this.zza.zzm().zza("auto", "_ssr", j6, bundle2);
            }
        }
    }

    @WorkerThread
    final void zza(long j6, boolean z6) {
        this.zza.zzt();
        this.zza.zzab();
        if (this.zza.zzk().zza(j6)) {
            this.zza.zzk().zzg.zza(true);
            if (zzps.zza() && this.zza.zze().zza(zzbi.zzbs)) {
                this.zza.zzg().zzag();
            }
        }
        this.zza.zzk().zzk.zza(j6);
        if (this.zza.zzk().zzg.zza()) {
            zzb(j6, z6);
        }
    }
}
