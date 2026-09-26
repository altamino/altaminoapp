package com.google.android.gms.cloudmessaging;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes10.dex */
public final class zzs {

    @Nullable
    private static zzs zza;
    private final Context zzb;
    private final ScheduledExecutorService zzc;
    private zzm zzd = new zzm(this, null);
    private int zze = 1;

    private final synchronized int zzf() {
        int i10;
        i10 = this.zze;
        this.zze = i10 + 1;
        return i10;
    }

    private final synchronized <T> Task<T> zzg(zzp<T> zzpVar) {
        try {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String strValueOf = String.valueOf(zzpVar);
                StringBuilder sb = new StringBuilder(strValueOf.length() + 9);
                sb.append("Queueing ");
                sb.append(strValueOf);
                Log.d("MessengerIpcClient", sb.toString());
            }
            if (!this.zzd.zzg(zzpVar)) {
                zzm zzmVar = new zzm(this, null);
                this.zzd = zzmVar;
                zzmVar.zzg(zzpVar);
            }
        } catch (Throwable th) {
            throw th;
        }
        return zzpVar.zzb.getTask();
    }

    public static synchronized zzs zzb(Context context) {
        try {
            if (zza == null) {
                com.google.android.gms.internal.cloudmessaging.zze.zza();
                zza = new zzs(context, Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1, new NamedThreadFactory("MessengerIpcClient"))));
            }
        } catch (Throwable th) {
            throw th;
        }
        return zza;
    }

    public final Task<Void> zzc(int i10, Bundle bundle) {
        return zzg(new zzo(zzf(), 2, bundle));
    }

    public final Task<Bundle> zzd(int i10, Bundle bundle) {
        return zzg(new zzr(zzf(), 1, bundle));
    }

    @VisibleForTesting
    zzs(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.zzc = scheduledExecutorService;
        this.zzb = context.getApplicationContext();
    }
}
