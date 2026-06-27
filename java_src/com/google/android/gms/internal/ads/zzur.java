package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@TargetApi(14)
/* loaded from: classes2.dex */
final class zzur implements Application.ActivityLifecycleCallbacks {
    private Runnable zzbuw;
    private long zzbux;
    private Context zzlj;
    private Activity zzzd;
    private final Object lock = new Object();
    private boolean foreground = true;
    private boolean zzbut = false;
    private final List<zzut> zzbuu = new ArrayList();
    private final List<zzvg> zzbuv = new ArrayList();
    private boolean zzxs = false;

    zzur() {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    public final void zza(Application application, Context context) {
        if (this.zzxs) {
            return;
        }
        application.registerActivityLifecycleCallbacks(this);
        if (context instanceof Activity) {
            setActivity((Activity) context);
        }
        this.zzlj = application;
        this.zzbux = ((Long) zzyt.zzpe().zzd(zzacu.zzcox)).longValue();
        this.zzxs = true;
    }

    public final void zza(zzut zzutVar) {
        synchronized (this.lock) {
            this.zzbuu.add(zzutVar);
        }
    }

    public final Activity getActivity() {
        return this.zzzd;
    }

    public final Context getContext() {
        return this.zzlj;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        setActivity(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        setActivity(activity);
        this.zzbut = false;
        boolean z = !this.foreground;
        this.foreground = true;
        Runnable runnable = this.zzbuw;
        if (runnable != null) {
            zzaxi.zzdvv.removeCallbacks(runnable);
        }
        synchronized (this.lock) {
            Iterator<zzvg> it = this.zzbuv.iterator();
            while (it.hasNext()) {
                try {
                    it.next().onActivityResumed(activity);
                } catch (Exception e) {
                    com.google.android.gms.ads.internal.zzk.zzlk().zza(e, "AppActivityTracker.ActivityListener.onActivityResumed");
                    zzbad.zzc("", e);
                }
            }
            if (z) {
                Iterator<zzut> it2 = this.zzbuu.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().zzp(true);
                    } catch (Exception e2) {
                        zzbad.zzc("", e2);
                    }
                }
            } else {
                zzbad.zzdp("App is still foreground.");
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        setActivity(activity);
        synchronized (this.lock) {
            Iterator<zzvg> it = this.zzbuv.iterator();
            while (it.hasNext()) {
                try {
                    it.next().onActivityPaused(activity);
                } catch (Exception e) {
                    com.google.android.gms.ads.internal.zzk.zzlk().zza(e, "AppActivityTracker.ActivityListener.onActivityPaused");
                    zzbad.zzc("", e);
                }
            }
        }
        this.zzbut = true;
        Runnable runnable = this.zzbuw;
        if (runnable != null) {
            zzaxi.zzdvv.removeCallbacks(runnable);
        }
        Handler handler = zzaxi.zzdvv;
        zzus zzusVar = new zzus(this);
        this.zzbuw = zzusVar;
        handler.postDelayed(zzusVar, this.zzbux);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        synchronized (this.lock) {
            if (this.zzzd == null) {
                return;
            }
            if (this.zzzd.equals(activity)) {
                this.zzzd = null;
            }
            Iterator<zzvg> it = this.zzbuv.iterator();
            while (it.hasNext()) {
                try {
                    if (it.next().zza(activity)) {
                        it.remove();
                    }
                } catch (Exception e) {
                    com.google.android.gms.ads.internal.zzk.zzlk().zza(e, "AppActivityTracker.ActivityListener.onActivityDestroyed");
                    zzbad.zzc("", e);
                }
            }
        }
    }

    private final void setActivity(Activity activity) {
        synchronized (this.lock) {
            if (!activity.getClass().getName().startsWith("com.google.android.gms.ads")) {
                this.zzzd = activity;
            }
        }
    }

    static /* synthetic */ boolean zza(zzur zzurVar, boolean z) {
        zzurVar.foreground = false;
        return false;
    }
}
