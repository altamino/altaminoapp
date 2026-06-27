package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.ConditionVariable;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.concurrent.Callable;
import org.json.JSONException;
import org.json.JSONObject;

@zzard
/* loaded from: classes2.dex */
public final class zzacr implements SharedPreferences.OnSharedPreferenceChangeListener {
    private Context zzcko;
    private final Object lock = new Object();
    private final ConditionVariable zzckl = new ConditionVariable();
    private volatile boolean zzxs = false;

    @VisibleForTesting
    private volatile boolean zzckm = false;
    private SharedPreferences zzckn = null;
    private Bundle metaData = new Bundle();
    private JSONObject zzckp = new JSONObject();

    public final void initialize(Context context) {
        if (this.zzxs) {
            return;
        }
        synchronized (this.lock) {
            if (this.zzxs) {
                return;
            }
            if (!this.zzckm) {
                this.zzckm = true;
            }
            this.zzcko = context.getApplicationContext() == null ? context : context.getApplicationContext();
            try {
                this.metaData = Wrappers.packageManager(this.zzcko).getApplicationInfo(this.zzcko.getPackageName(), 128).metaData;
            } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
            }
            try {
                Context remoteContext = GooglePlayServicesUtilLight.getRemoteContext(context);
                if (remoteContext == null && context != null && (remoteContext = context.getApplicationContext()) == null) {
                    remoteContext = context;
                }
                if (remoteContext == null) {
                    return;
                }
                zzyt.zzpc();
                this.zzckn = remoteContext.getSharedPreferences("google_ads_flags", 0);
                if (this.zzckn != null) {
                    this.zzckn.registerOnSharedPreferenceChangeListener(this);
                }
                zzqp();
                this.zzxs = true;
            } finally {
                this.zzckm = false;
                this.zzckl.open();
            }
        }
    }

    public final <T> T zzd(zzacj<T> zzacjVar) {
        if (!this.zzckl.block(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS)) {
            synchronized (this.lock) {
                if (!this.zzckm) {
                    throw new IllegalStateException("Flags.initialize() was not called!");
                }
            }
        }
        if (!this.zzxs || this.zzckn == null) {
            synchronized (this.lock) {
                if (this.zzxs && this.zzckn != null) {
                }
                return zzacjVar.zzqm();
            }
        }
        if (zzacjVar.getSource() == 2) {
            Bundle bundle = this.metaData;
            if (bundle == null) {
                return zzacjVar.zzqm();
            }
            return zzacjVar.zza(bundle);
        }
        if (zzacjVar.getSource() == 1 && this.zzckp.has(zzacjVar.getKey())) {
            return zzacjVar.zza(this.zzckp);
        }
        return (T) zzazl.zza(this.zzcko, new zzact(this, zzacjVar));
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("flag_configuration".equals(str)) {
            zzqp();
        }
    }

    private final void zzqp() {
        if (this.zzckn == null) {
            return;
        }
        try {
            this.zzckp = new JSONObject((String) zzazl.zza(this.zzcko, new Callable(this) { // from class: com.google.android.gms.internal.ads.zzacs
                private final zzacr zzckq;

                {
                    this.zzckq = this;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.zzckq.zzqq();
                }
            }));
        } catch (JSONException unused) {
        }
    }

    final /* synthetic */ String zzqq() throws Exception {
        return this.zzckn.getString("flag_configuration", "{}");
    }
}
