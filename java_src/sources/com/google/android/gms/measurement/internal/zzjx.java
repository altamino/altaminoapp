package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.MainThread;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzoi;
import com.google.android.gms.internal.measurement.zzpy;

/* JADX INFO: loaded from: classes11.dex */
@MainThread
@VisibleForTesting
final class zzjx implements Application.ActivityLifecycleCallbacks {
    private final /* synthetic */ zziq zza;

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    zzjx(zziq zziqVar) {
        this.zza = zziqVar;
    }

    static /* synthetic */ void zza(zzjx zzjxVar, boolean z6, Uri uri, String str, String str2) {
        Bundle bundleZza;
        zzjxVar.zza.zzt();
        try {
            zznd zzndVarZzq = zzjxVar.zza.zzq();
            boolean z10 = zzpy.zza() && zzjxVar.zza.zze().zza(zzbi.zzby);
            boolean z11 = zzoi.zza() && zzjxVar.zza.zze().zza(zzbi.zzcs);
            if (TextUtils.isEmpty(str2)) {
                bundleZza = null;
            } else if (str2.contains("gclid") || ((z11 && str2.contains("gbraid")) || str2.contains(com.google.firebase.dynamiclinks.internal.b.KEY_UTM_CAMPAIGN) || str2.contains(com.google.firebase.dynamiclinks.internal.b.KEY_UTM_SOURCE) || str2.contains(com.google.firebase.dynamiclinks.internal.b.KEY_UTM_MEDIUM) || str2.contains("utm_id") || str2.contains("dclid") || str2.contains("srsltid") || (z10 && str2.contains("sfmc_id")))) {
                bundleZza = zzndVarZzq.zza(Uri.parse("https://google.com/search?" + str2), z10, z11);
                if (bundleZza != null) {
                    bundleZza.putString("_cis", "referrer");
                }
            } else {
                zzndVarZzq.zzj().zzc().zza("Activity created with data 'referrer' without required params");
                bundleZza = null;
            }
            if (z6) {
                Bundle bundleZza2 = zzjxVar.zza.zzq().zza(uri, zzpy.zza() && zzjxVar.zza.zze().zza(zzbi.zzby), zzoi.zza() && zzjxVar.zza.zze().zza(zzbi.zzcs));
                if (bundleZza2 != null) {
                    bundleZza2.putString("_cis", "intent");
                    if (!bundleZza2.containsKey("gclid") && bundleZza != null && bundleZza.containsKey("gclid")) {
                        bundleZza2.putString("_cer", String.format("gclid=%s", bundleZza.getString("gclid")));
                    }
                    zzjxVar.zza.zzc(str, com.google.firebase.dynamiclinks.internal.b.KEY_CAMPAIGN_BUNDLE, bundleZza2);
                    zzjxVar.zza.zzb.zza(str, bundleZza2);
                }
            }
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            zzjxVar.zza.zzj().zzc().zza("Activity created with referrer", str2);
            if (zzjxVar.zza.zze().zza(zzbi.zzbi)) {
                if (bundleZza != null) {
                    zzjxVar.zza.zzc(str, com.google.firebase.dynamiclinks.internal.b.KEY_CAMPAIGN_BUNDLE, bundleZza);
                    zzjxVar.zza.zzb.zza(str, bundleZza);
                } else {
                    zzjxVar.zza.zzj().zzc().zza("Referrer does not contain valid parameters", str2);
                }
                zzjxVar.zza.zza("auto", "_ldl", (Object) null, true);
                return;
            }
            if (!str2.contains("gclid") || (!str2.contains(com.google.firebase.dynamiclinks.internal.b.KEY_UTM_CAMPAIGN) && !str2.contains(com.google.firebase.dynamiclinks.internal.b.KEY_UTM_SOURCE) && !str2.contains(com.google.firebase.dynamiclinks.internal.b.KEY_UTM_MEDIUM) && !str2.contains("utm_term") && !str2.contains("utm_content"))) {
                zzjxVar.zza.zzj().zzc().zza("Activity created with data 'referrer' without required params");
            } else {
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                zzjxVar.zza.zza("auto", "_ldl", (Object) str2, true);
            }
        } catch (RuntimeException e) {
            zzjxVar.zza.zzj().zzg().zza("Throwable caught in handleReferrerForOnActivityCreated", e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x004a  */
    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        try {
            try {
                this.zza.zzj().zzp().zza("onActivityCreated");
                Intent intent = activity.getIntent();
                if (intent == null) {
                    return;
                }
                Uri data = intent.getData();
                if (data == null || !data.isHierarchical()) {
                    Bundle extras = intent.getExtras();
                    if (extras != null) {
                        String string = extras.getString("com.android.vending.referral_url");
                        if (TextUtils.isEmpty(string)) {
                            data = null;
                        } else {
                            data = Uri.parse(string);
                        }
                    } else {
                        data = null;
                    }
                }
                Uri uri = data;
                if (uri != null && uri.isHierarchical()) {
                    this.zza.zzq();
                    this.zza.zzl().zzb(new zzka(this, bundle == null, uri, zznd.zza(intent) ? "gs" : "auto", uri.getQueryParameter("referrer")));
                    return;
                }
                return;
            } catch (RuntimeException e) {
                this.zza.zzj().zzg().zza("Throwable caught in onActivityCreated", e);
                return;
            }
        } finally {
            this.zza.zzn().zza(activity, bundle);
        }
        this.zza.zzn().zza(activity, bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.zza.zzn().zza(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    @MainThread
    public final void onActivityPaused(Activity activity) {
        this.zza.zzn().zzb(activity);
        zzlx zzlxVarZzp = this.zza.zzp();
        zzlxVarZzp.zzl().zzb(new zzlz(zzlxVarZzp, zzlxVarZzp.zzb().elapsedRealtime()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    @MainThread
    public final void onActivityResumed(Activity activity) {
        zzlx zzlxVarZzp = this.zza.zzp();
        zzlxVarZzp.zzl().zzb(new zzma(zzlxVarZzp, zzlxVarZzp.zzb().elapsedRealtime()));
        this.zza.zzn().zzc(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.zza.zzn().zzb(activity, bundle);
    }
}
