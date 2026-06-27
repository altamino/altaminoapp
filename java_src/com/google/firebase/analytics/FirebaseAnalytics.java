package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Keep;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzaa;
import com.google.android.gms.internal.measurement.zzy;
import com.google.android.gms.measurement.internal.zzby;
import com.google.android.gms.measurement.internal.zzdy;
import com.google.android.gms.measurement.internal.zzq;
import com.google.firebase.iid.FirebaseInstanceId;
import java.util.concurrent.ExecutorService;

/* loaded from: classes2.dex */
public final class FirebaseAnalytics {
    private static volatile FirebaseAnalytics zzaam;
    private final zzaa zzaan;
    private String zzaao;
    private long zzaap;
    private final Object zzaaq;
    private ExecutorService zzab;
    private final zzby zzl;
    private final boolean zzn;

    @Keep
    public static FirebaseAnalytics getInstance(Context context) {
        if (zzaam == null) {
            synchronized (FirebaseAnalytics.class) {
                if (zzaam == null) {
                    if (zzaa.zzf(context)) {
                        zzaam = new FirebaseAnalytics(zzaa.zza(context));
                    } else {
                        zzaam = new FirebaseAnalytics(zzby.zza(context, (zzy) null));
                    }
                }
            }
        }
        return zzaam;
    }

    public final void logEvent(String str, Bundle bundle) {
        if (this.zzn) {
            this.zzaan.logEvent(str, bundle);
        } else {
            this.zzl.zzs().zza("app", str, bundle, true);
        }
    }

    @Keep
    public final void setCurrentScreen(Activity activity, String str, String str2) throws IllegalStateException {
        if (this.zzn) {
            this.zzaan.setCurrentScreen(activity, str, str2);
        } else if (!zzq.isMainThread()) {
            this.zzl.zzad().zzdd().zzaq("setCurrentScreen must be called from the main thread");
        } else {
            this.zzl.zzv().setCurrentScreen(activity, str, str2);
        }
    }

    private FirebaseAnalytics(zzby zzbyVar) {
        Preconditions.checkNotNull(zzbyVar);
        this.zzl = zzbyVar;
        this.zzaan = null;
        this.zzn = false;
        this.zzaaq = new Object();
    }

    private FirebaseAnalytics(zzaa zzaaVar) {
        Preconditions.checkNotNull(zzaaVar);
        this.zzl = null;
        this.zzaan = zzaaVar;
        this.zzn = true;
        this.zzaaq = new Object();
    }

    @Keep
    public final String getFirebaseInstanceId() {
        return FirebaseInstanceId.getInstance().getId();
    }

    @Keep
    public static zzdy getScionFrontendApiImplementation(Context context, Bundle bundle) {
        zzaa zzaaVarZza;
        if (zzaa.zzf(context) && (zzaaVarZza = zzaa.zza(context, (String) null, (String) null, (String) null, bundle)) != null) {
            return new zzb(zzaaVarZza);
        }
        return null;
    }
}
