package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import androidx.annotation.Size;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdf;
import com.google.android.gms.measurement.internal.zzjz;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.installations.g;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes10.dex */
public final class FirebaseAnalytics {
    private static volatile FirebaseAnalytics zza;
    private final zzdf zzb;
    private ExecutorService zzc;

    @Nullable
    @Keep
    public static zzjz getScionFrontendApiImplementation(Context context, @Nullable Bundle bundle) {
        zzdf zzdfVarZza = zzdf.zza(context, (String) null, (String) null, (String) null, bundle);
        if (zzdfVarZza == null) {
            return null;
        }
        return new a(zzdfVarZza);
    }

    @NonNull
    @RequiresPermission
    @Keep
    public static FirebaseAnalytics getInstance(@NonNull Context context) {
        if (zza == null) {
            synchronized (FirebaseAnalytics.class) {
                try {
                    if (zza == null) {
                        zza = new FirebaseAnalytics(zzdf.zza(context));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zza;
    }

    public final void a(@NonNull @Size String str, @Nullable Bundle bundle) {
        this.zzb.zza(str, bundle);
    }

    public final void b(@Nullable Bundle bundle) {
        this.zzb.zzd(bundle);
    }

    public final void c(@NonNull @Size String str, @Nullable @Size String str2) {
        this.zzb.zzb(str, str2);
    }

    @Keep
    @MainThread
    @Deprecated
    public final void setCurrentScreen(@NonNull Activity activity, @Nullable @Size String str, @Nullable @Size String str2) {
        this.zzb.zza(activity, str, str2);
    }

    private FirebaseAnalytics(zzdf zzdfVar) {
        Preconditions.checkNotNull(zzdfVar);
        this.zzb = zzdfVar;
    }

    @NonNull
    @Keep
    public final String getFirebaseInstanceId() {
        try {
            return (String) Tasks.await(g.p().getId(), 30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            throw new IllegalStateException(e);
        } catch (ExecutionException e2) {
            throw new IllegalStateException(e2.getCause());
        } catch (TimeoutException unused) {
            throw new IllegalThreadStateException("Firebase Installations getId Task has timed out.");
        }
    }
}
