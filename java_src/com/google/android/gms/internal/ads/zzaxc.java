package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Looper;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzard
/* loaded from: classes2.dex */
public final class zzaxc implements zzaxb {
    private SharedPreferences zzckn;
    private boolean zzduw;
    private zzbbh<?> zzduy;
    private SharedPreferences.Editor zzdva;
    private String zzdvc;
    private String zzdvd;
    private final Object lock = new Object();
    private final List<Runnable> zzdux = new ArrayList();
    private zzuu zzduz = null;
    private boolean zzdvb = false;
    private boolean zzdls = true;
    private boolean zzdmh = false;
    private String zzdmk = "";
    private long zzdve = 0;
    private long zzdvf = 0;
    private long zzdvg = 0;
    private int zzdvh = -1;
    private int zzdvi = 0;
    private Set<String> zzdvj = Collections.emptySet();
    private JSONObject zzdvk = new JSONObject();
    private boolean zzdnt = true;
    private boolean zzdoe = true;
    private String zzdvl = null;

    public final void zza(final Context context, String str, boolean z) {
        final String strConcat;
        if (str == null) {
            strConcat = "admob";
        } else {
            String strValueOf = String.valueOf(str);
            strConcat = strValueOf.length() != 0 ? "admob__".concat(strValueOf) : new String("admob__");
        }
        this.zzduy = zzaxg.zzc(new Runnable(this, context, strConcat) { // from class: com.google.android.gms.internal.ads.zzaxd
            private final Context zzcjt;
            private final String zzdsr;
            private final zzaxc zzdvm;

            {
                this.zzdvm = this;
                this.zzcjt = context;
                this.zzdsr = strConcat;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzdvm.zzo(this.zzcjt, this.zzdsr);
            }
        });
        this.zzduw = z;
    }

    private final void zzvy() throws ExecutionException, InterruptedException, TimeoutException {
        zzbbh<?> zzbbhVar = this.zzduy;
        if (zzbbhVar == null || zzbbhVar.isDone()) {
            return;
        }
        try {
            this.zzduy.get(1L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            zzbad.zzd("Interrupted while waiting for preferences loaded.", e);
        } catch (CancellationException e2) {
            e = e2;
            zzbad.zzc("Fail to initialize AdSharedPreferenceManager.", e);
        } catch (ExecutionException e3) {
            e = e3;
            zzbad.zzc("Fail to initialize AdSharedPreferenceManager.", e);
        } catch (TimeoutException e4) {
            e = e4;
            zzbad.zzc("Fail to initialize AdSharedPreferenceManager.", e);
        }
    }

    private final Bundle zzvz() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("listener_registration_bundle", true);
        synchronized (this.lock) {
            bundle.putBoolean("use_https", this.zzdls);
            bundle.putBoolean("content_url_opted_out", this.zzdnt);
            bundle.putBoolean("content_vertical_opted_out", this.zzdoe);
            bundle.putBoolean("auto_collect_location", this.zzdmh);
            bundle.putInt("version_code", this.zzdvi);
            bundle.putStringArray("never_pool_slots", (String[]) this.zzdvj.toArray(new String[0]));
            bundle.putString("app_settings_json", this.zzdmk);
            bundle.putLong("app_settings_last_update_ms", this.zzdve);
            bundle.putLong("app_last_background_time_ms", this.zzdvf);
            bundle.putInt("request_in_session_count", this.zzdvh);
            bundle.putLong("first_ad_req_time_ms", this.zzdvg);
            bundle.putString("native_advanced_settings", this.zzdvk.toString());
            bundle.putString("display_cutout", this.zzdvl);
            if (this.zzdvc != null) {
                bundle.putString("content_url_hashes", this.zzdvc);
            }
            if (this.zzdvd != null) {
                bundle.putString("content_vertical_hashes", this.zzdvd);
            }
        }
        return bundle;
    }

    private final void zzc(Bundle bundle) {
        zzaxg.zzdvp.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzaxe
            private final zzaxc zzdvm;

            {
                this.zzdvm = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzdvm.zzvk();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    public final zzuu zzvk() {
        if (!this.zzduw || !PlatformVersion.isAtLeastIceCreamSandwich()) {
            return null;
        }
        if (zzvl() && zzvn()) {
            return null;
        }
        if (!((Boolean) zzyt.zzpe().zzd(zzacu.zzcna)).booleanValue()) {
            return null;
        }
        synchronized (this.lock) {
            if (Looper.getMainLooper() == null) {
                return null;
            }
            if (this.zzduz == null) {
                this.zzduz = new zzuu();
            }
            this.zzduz.zzmv();
            zzbad.zzeo("start fetching content...");
            return this.zzduz;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    public final void zzai(boolean z) throws ExecutionException, InterruptedException, TimeoutException {
        zzvy();
        synchronized (this.lock) {
            if (this.zzdnt == z) {
                return;
            }
            this.zzdnt = z;
            if (this.zzdva != null) {
                this.zzdva.putBoolean("content_url_opted_out", z);
                this.zzdva.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putBoolean("content_url_opted_out", this.zzdnt);
            bundle.putBoolean("content_vertical_opted_out", this.zzdoe);
            zzc(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    public final boolean zzvl() throws ExecutionException, InterruptedException, TimeoutException {
        boolean z;
        zzvy();
        synchronized (this.lock) {
            z = this.zzdnt;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    public final void zzdt(String str) throws ExecutionException, InterruptedException, TimeoutException {
        zzvy();
        synchronized (this.lock) {
            if (str != null) {
                if (!str.equals(this.zzdvc)) {
                    this.zzdvc = str;
                    if (this.zzdva != null) {
                        this.zzdva.putString("content_url_hashes", str);
                        this.zzdva.apply();
                    }
                    Bundle bundle = new Bundle();
                    bundle.putString("content_url_hashes", str);
                    zzc(bundle);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    public final String zzvm() throws ExecutionException, InterruptedException, TimeoutException {
        String str;
        zzvy();
        synchronized (this.lock) {
            str = this.zzdvc;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    public final void zzaj(boolean z) throws ExecutionException, InterruptedException, TimeoutException {
        zzvy();
        synchronized (this.lock) {
            if (this.zzdoe == z) {
                return;
            }
            this.zzdoe = z;
            if (this.zzdva != null) {
                this.zzdva.putBoolean("content_vertical_opted_out", z);
                this.zzdva.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putBoolean("content_url_opted_out", this.zzdnt);
            bundle.putBoolean("content_vertical_opted_out", this.zzdoe);
            zzc(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    public final boolean zzvn() throws ExecutionException, InterruptedException, TimeoutException {
        boolean z;
        zzvy();
        synchronized (this.lock) {
            z = this.zzdoe;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    public final void zzdu(String str) throws ExecutionException, InterruptedException, TimeoutException {
        zzvy();
        synchronized (this.lock) {
            if (str != null) {
                if (!str.equals(this.zzdvd)) {
                    this.zzdvd = str;
                    if (this.zzdva != null) {
                        this.zzdva.putString("content_vertical_hashes", str);
                        this.zzdva.apply();
                    }
                    Bundle bundle = new Bundle();
                    bundle.putString("content_vertical_hashes", str);
                    zzc(bundle);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    public final String zzvo() throws ExecutionException, InterruptedException, TimeoutException {
        String str;
        zzvy();
        synchronized (this.lock) {
            str = this.zzdvd;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    public final void zzak(boolean z) throws ExecutionException, InterruptedException, TimeoutException {
        zzvy();
        synchronized (this.lock) {
            if (this.zzdmh == z) {
                return;
            }
            this.zzdmh = z;
            if (this.zzdva != null) {
                this.zzdva.putBoolean("auto_collect_location", z);
                this.zzdva.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putBoolean("auto_collect_location", z);
            zzc(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    public final boolean zzvp() throws ExecutionException, InterruptedException, TimeoutException {
        boolean z;
        zzvy();
        synchronized (this.lock) {
            z = this.zzdmh;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    public final void zzct(int i) throws ExecutionException, InterruptedException, TimeoutException {
        zzvy();
        synchronized (this.lock) {
            if (this.zzdvi == i) {
                return;
            }
            this.zzdvi = i;
            if (this.zzdva != null) {
                this.zzdva.putInt("version_code", i);
                this.zzdva.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putInt("version_code", i);
            zzc(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    public final int zzvq() throws ExecutionException, InterruptedException, TimeoutException {
        int i;
        zzvy();
        synchronized (this.lock) {
            i = this.zzdvi;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    public final void zzdv(String str) throws ExecutionException, InterruptedException, TimeoutException {
        zzvy();
        synchronized (this.lock) {
            long jCurrentTimeMillis = com.google.android.gms.ads.internal.zzk.zzln().currentTimeMillis();
            this.zzdve = jCurrentTimeMillis;
            if (str != null && !str.equals(this.zzdmk)) {
                this.zzdmk = str;
                if (this.zzdva != null) {
                    this.zzdva.putString("app_settings_json", str);
                    this.zzdva.putLong("app_settings_last_update_ms", jCurrentTimeMillis);
                    this.zzdva.apply();
                }
                Bundle bundle = new Bundle();
                bundle.putString("app_settings_json", str);
                bundle.putLong("app_settings_last_update_ms", jCurrentTimeMillis);
                zzc(bundle);
                Iterator<Runnable> it = this.zzdux.iterator();
                while (it.hasNext()) {
                    it.next().run();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    public final zzawl zzvr() throws ExecutionException, InterruptedException, TimeoutException {
        zzawl zzawlVar;
        zzvy();
        synchronized (this.lock) {
            zzawlVar = new zzawl(this.zzdmk, this.zzdve);
        }
        return zzawlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    public final void zzb(Runnable runnable) {
        this.zzdux.add(runnable);
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    public final void zzfc(long j) throws ExecutionException, InterruptedException, TimeoutException {
        zzvy();
        synchronized (this.lock) {
            if (this.zzdvf == j) {
                return;
            }
            this.zzdvf = j;
            if (this.zzdva != null) {
                this.zzdva.putLong("app_last_background_time_ms", j);
                this.zzdva.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putLong("app_last_background_time_ms", j);
            zzc(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    public final long zzvs() throws ExecutionException, InterruptedException, TimeoutException {
        long j;
        zzvy();
        synchronized (this.lock) {
            j = this.zzdvf;
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    public final void zzcu(int i) throws ExecutionException, InterruptedException, TimeoutException {
        zzvy();
        synchronized (this.lock) {
            if (this.zzdvh == i) {
                return;
            }
            this.zzdvh = i;
            if (this.zzdva != null) {
                this.zzdva.putInt("request_in_session_count", i);
                this.zzdva.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putInt("request_in_session_count", i);
            zzc(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    public final int zzvt() throws ExecutionException, InterruptedException, TimeoutException {
        int i;
        zzvy();
        synchronized (this.lock) {
            i = this.zzdvh;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    public final void zzfd(long j) throws ExecutionException, InterruptedException, TimeoutException {
        zzvy();
        synchronized (this.lock) {
            if (this.zzdvg == j) {
                return;
            }
            this.zzdvg = j;
            if (this.zzdva != null) {
                this.zzdva.putLong("first_ad_req_time_ms", j);
                this.zzdva.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putLong("first_ad_req_time_ms", j);
            zzc(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    public final long zzvu() throws ExecutionException, InterruptedException, TimeoutException {
        long j;
        zzvy();
        synchronized (this.lock) {
            j = this.zzdvg;
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    public final void zzc(String str, String str2, boolean z) throws ExecutionException, InterruptedException, TimeoutException {
        zzvy();
        synchronized (this.lock) {
            JSONArray jSONArrayOptJSONArray = this.zzdvk.optJSONArray(str);
            if (jSONArrayOptJSONArray == null) {
                jSONArrayOptJSONArray = new JSONArray();
            }
            int length = jSONArrayOptJSONArray.length();
            int i = 0;
            while (true) {
                if (i < jSONArrayOptJSONArray.length()) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                    if (jSONObjectOptJSONObject == null) {
                        return;
                    }
                    if (!str2.equals(jSONObjectOptJSONObject.optString("template_id"))) {
                        i++;
                    } else if (z && jSONObjectOptJSONObject.optBoolean("uses_media_view", false)) {
                        return;
                    } else {
                        length = i;
                    }
                }
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("template_id", str2);
                jSONObject.put("uses_media_view", z);
                jSONObject.put("timestamp_ms", com.google.android.gms.ads.internal.zzk.zzln().currentTimeMillis());
                jSONArrayOptJSONArray.put(length, jSONObject);
                this.zzdvk.put(str, jSONArrayOptJSONArray);
            } catch (JSONException e) {
                zzbad.zzd("Could not update native advanced settings", e);
            }
            if (this.zzdva != null) {
                this.zzdva.putString("native_advanced_settings", this.zzdvk.toString());
                this.zzdva.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putString("native_advanced_settings", this.zzdvk.toString());
            zzc(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    public final JSONObject zzvv() throws ExecutionException, InterruptedException, TimeoutException {
        JSONObject jSONObject;
        zzvy();
        synchronized (this.lock) {
            jSONObject = this.zzdvk;
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    public final void zzvw() throws ExecutionException, InterruptedException, TimeoutException {
        zzvy();
        synchronized (this.lock) {
            this.zzdvk = new JSONObject();
            if (this.zzdva != null) {
                this.zzdva.remove("native_advanced_settings");
                this.zzdva.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putString("native_advanced_settings", "{}");
            zzc(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    public final String zzvx() throws ExecutionException, InterruptedException, TimeoutException {
        String str;
        zzvy();
        synchronized (this.lock) {
            str = this.zzdvl;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    public final void zzdw(String str) throws ExecutionException, InterruptedException, TimeoutException {
        zzvy();
        synchronized (this.lock) {
            if (TextUtils.equals(this.zzdvl, str)) {
                return;
            }
            this.zzdvl = str;
            if (this.zzdva != null) {
                this.zzdva.putString("display_cutout", str);
                this.zzdva.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putString("display_cutout", str);
            zzc(bundle);
        }
    }

    final /* synthetic */ void zzo(Context context, String str) {
        boolean z = false;
        SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        synchronized (this.lock) {
            this.zzckn = sharedPreferences;
            this.zzdva = editorEdit;
            if (PlatformVersion.isAtLeastM() && !NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted()) {
                z = true;
            }
            this.zzdvb = z;
            this.zzdls = this.zzckn.getBoolean("use_https", this.zzdls);
            this.zzdnt = this.zzckn.getBoolean("content_url_opted_out", this.zzdnt);
            this.zzdvc = this.zzckn.getString("content_url_hashes", this.zzdvc);
            this.zzdmh = this.zzckn.getBoolean("auto_collect_location", this.zzdmh);
            this.zzdoe = this.zzckn.getBoolean("content_vertical_opted_out", this.zzdoe);
            this.zzdvd = this.zzckn.getString("content_vertical_hashes", this.zzdvd);
            this.zzdvi = this.zzckn.getInt("version_code", this.zzdvi);
            this.zzdmk = this.zzckn.getString("app_settings_json", this.zzdmk);
            this.zzdve = this.zzckn.getLong("app_settings_last_update_ms", this.zzdve);
            this.zzdvf = this.zzckn.getLong("app_last_background_time_ms", this.zzdvf);
            this.zzdvh = this.zzckn.getInt("request_in_session_count", this.zzdvh);
            this.zzdvg = this.zzckn.getLong("first_ad_req_time_ms", this.zzdvg);
            this.zzdvj = this.zzckn.getStringSet("never_pool_slots", this.zzdvj);
            this.zzdvl = this.zzckn.getString("display_cutout", this.zzdvl);
            try {
                this.zzdvk = new JSONObject(this.zzckn.getString("native_advanced_settings", "{}"));
            } catch (JSONException e) {
                zzbad.zzd("Could not convert native advanced settings to json object", e);
            }
            zzc(zzvz());
        }
    }
}
