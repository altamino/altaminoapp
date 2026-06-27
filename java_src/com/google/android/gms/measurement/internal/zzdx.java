package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;

@TargetApi(14)
/* loaded from: classes2.dex */
final class zzdx implements Application.ActivityLifecycleCallbacks {
    private final /* synthetic */ zzdd zzpm;

    private zzdx(zzdd zzddVar) {
        this.zzpm = zzddVar;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) throws IllegalStateException {
        Uri data;
        try {
            this.zzpm.zzad().zzdi().zzaq("onActivityCreated");
            Intent intent = activity.getIntent();
            if (intent != null && (data = intent.getData()) != null && data.isHierarchical()) {
                if (bundle == null) {
                    Bundle bundleZza = this.zzpm.zzab().zza(data);
                    this.zzpm.zzab();
                    String str = zzgd.zzc(intent) ? "gs" : "auto";
                    if (bundleZza != null) {
                        this.zzpm.logEvent(str, "_cmp", bundleZza);
                    }
                }
                String queryParameter = data.getQueryParameter("referrer");
                if (TextUtils.isEmpty(queryParameter)) {
                    return;
                }
                if (!(queryParameter.contains("gclid") && (queryParameter.contains("utm_campaign") || queryParameter.contains("utm_source") || queryParameter.contains("utm_medium") || queryParameter.contains("utm_term") || queryParameter.contains("utm_content")))) {
                    this.zzpm.zzad().zzdh().zzaq("Activity created with data 'referrer' param without gclid and at least one utm field");
                    return;
                } else {
                    this.zzpm.zzad().zzdh().zza("Activity created with referrer", queryParameter);
                    if (!TextUtils.isEmpty(queryParameter)) {
                        this.zzpm.zzb("auto", "_ldl", (Object) queryParameter, true);
                    }
                }
            }
        } catch (Exception e) {
            this.zzpm.zzad().zzda().zza("Throwable caught in onActivityCreated", e);
        }
        this.zzpm.zzv().onActivityCreated(activity, bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.zzpm.zzv().onActivityDestroyed(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) throws IllegalStateException {
        this.zzpm.zzv().onActivityPaused(activity);
        zzfj zzfjVarZzx = this.zzpm.zzx();
        zzfjVarZzx.zzac().zza(new zzfn(zzfjVarZzx, zzfjVarZzx.zzz().elapsedRealtime()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) throws IllegalStateException {
        this.zzpm.zzv().onActivityResumed(activity);
        zzfj zzfjVarZzx = this.zzpm.zzx();
        zzfjVarZzx.zzac().zza(new zzfm(zzfjVarZzx, zzfjVarZzx.zzz().elapsedRealtime()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.zzpm.zzv().onActivitySaveInstanceState(activity, bundle);
    }

    /* synthetic */ zzdx(zzdd zzddVar, zzde zzdeVar) {
        this(zzddVar);
    }
}
