package com.google.android.gms.ads.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzacu;
import com.google.android.gms.internal.ads.zzalj;
import com.google.android.gms.internal.ads.zzaln;
import com.google.android.gms.internal.ads.zzalo;
import com.google.android.gms.internal.ads.zzalr;
import com.google.android.gms.internal.ads.zzard;
import com.google.android.gms.internal.ads.zzawl;
import com.google.android.gms.internal.ads.zzbad;
import com.google.android.gms.internal.ads.zzbai;
import com.google.android.gms.internal.ads.zzbao;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbbh;
import com.google.android.gms.internal.ads.zzbbm;
import com.google.android.gms.internal.ads.zzyt;
import org.json.JSONException;
import org.json.JSONObject;

@zzard
/* loaded from: classes.dex */
public final class zzd {
    private long zzbqy = 0;
    private Context zzlj;

    public final void zza(Context context, zzbai zzbaiVar, String str, Runnable runnable) throws JSONException {
        zza(context, zzbaiVar, true, null, str, null, runnable);
    }

    public final void zza(Context context, zzbai zzbaiVar, String str, zzawl zzawlVar) throws JSONException {
        zza(context, zzbaiVar, false, zzawlVar, zzawlVar != null ? zzawlVar.zzut() : null, str, null);
    }

    @VisibleForTesting
    private final void zza(Context context, zzbai zzbaiVar, boolean z, zzawl zzawlVar, String str, String str2, Runnable runnable) throws JSONException {
        if (zzk.zzln().elapsedRealtime() - this.zzbqy < DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS) {
            zzbad.zzep("Not retrying to fetch app settings");
            return;
        }
        this.zzbqy = zzk.zzln().elapsedRealtime();
        boolean z2 = true;
        if (zzawlVar != null) {
            if (!(zzk.zzln().currentTimeMillis() - zzawlVar.zzuq() > ((Long) zzyt.zzpe().zzd(zzacu.zzcsy)).longValue()) && zzawlVar.zzur()) {
                z2 = false;
            }
        }
        if (z2) {
            if (context == null) {
                zzbad.zzep("Context not provided to fetch application settings");
                return;
            }
            if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
                zzbad.zzep("App settings could not be fetched. Required parameters missing");
                return;
            }
            Context applicationContext = context.getApplicationContext();
            if (applicationContext == null) {
                applicationContext = context;
            }
            this.zzlj = applicationContext;
            zzalr zzalrVarZzb = zzk.zzlt().zzb(this.zzlj, zzbaiVar);
            zzaln<JSONObject> zzalnVar = zzalo.zzddi;
            zzalj zzaljVarZza = zzalrVarZzb.zza("google.afma.config.fetchAppSettings", zzalnVar, zzalnVar);
            try {
                JSONObject jSONObject = new JSONObject();
                if (!TextUtils.isEmpty(str)) {
                    jSONObject.put("app_id", str);
                } else if (!TextUtils.isEmpty(str2)) {
                    jSONObject.put("ad_unit_id", str2);
                }
                jSONObject.put("is_init", z);
                jSONObject.put("pn", context.getPackageName());
                zzbbh zzbbhVarZzi = zzaljVarZza.zzi(jSONObject);
                zzbbh zzbbhVarZza = zzbar.zza(zzbbhVarZzi, zze.zzbqz, zzbbm.zzeaf);
                if (runnable != null) {
                    zzbbhVarZzi.zza(runnable, zzbbm.zzeaf);
                }
                zzbao.zza(zzbbhVarZza, "ConfigLoader.maybeFetchNewAppSettings");
            } catch (Exception e) {
                zzbad.zzc("Error requesting application settings", e);
            }
        }
    }
}
