package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
final class zzdm implements Application.ActivityLifecycleCallbacks {
    private final Application zzww;
    private final WeakReference<Application.ActivityLifecycleCallbacks> zzwx;
    private boolean zzwy = false;

    public zzdm(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.zzwx = new WeakReference<>(activityLifecycleCallbacks);
        this.zzww = application;
    }

    private final void zza(zzdu zzduVar) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.zzwx.get();
            if (activityLifecycleCallbacks != null) {
                zzduVar.zza(activityLifecycleCallbacks);
            } else {
                if (this.zzwy) {
                    return;
                }
                this.zzww.unregisterActivityLifecycleCallbacks(this);
                this.zzwy = true;
            }
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        zza(new zzdn(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        zza(new zzdo(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        zza(new zzdp(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        zza(new zzdq(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        zza(new zzdr(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        zza(new zzds(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        zza(new zzdt(this, activity));
    }
}
