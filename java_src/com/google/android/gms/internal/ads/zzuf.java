package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
final class zzuf implements Application.ActivityLifecycleCallbacks {
    private final Application zzww;
    private final WeakReference<Application.ActivityLifecycleCallbacks> zzwx;
    private boolean zzwy = false;

    public zzuf(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.zzwx = new WeakReference<>(activityLifecycleCallbacks);
        this.zzww = application;
    }

    private final void zza(zzun zzunVar) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.zzwx.get();
            if (activityLifecycleCallbacks != null) {
                zzunVar.zza(activityLifecycleCallbacks);
            } else {
                if (this.zzwy) {
                    return;
                }
                this.zzww.unregisterActivityLifecycleCallbacks(this);
                this.zzwy = true;
            }
        } catch (Exception e) {
            zzbad.zzc("Error while dispatching lifecycle callback.", e);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        zza(new zzug(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        zza(new zzuh(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        zza(new zzui(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        zza(new zzuj(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        zza(new zzuk(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        zza(new zzul(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        zza(new zzum(this, activity));
    }
}
