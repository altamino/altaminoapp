package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import org.json.JSONException;
import org.json.JSONObject;

@zzard
/* loaded from: classes2.dex */
public final class zzasj extends zzasl {
    private final Object lock = new Object();
    private SharedPreferences zzdqi;
    private final zzalj<JSONObject, JSONObject> zzdqj;
    private final Context zzys;

    public zzasj(Context context, zzalj<JSONObject, JSONObject> zzaljVar) {
        this.zzys = context.getApplicationContext();
        this.zzdqj = zzaljVar;
    }

    @Override // com.google.android.gms.internal.ads.zzasl
    public final zzbbh<Void> zztz() throws JSONException {
        synchronized (this.lock) {
            if (this.zzdqi == null) {
                this.zzdqi = this.zzys.getSharedPreferences("google_ads_flags_meta", 0);
            }
        }
        if (com.google.android.gms.ads.internal.zzk.zzln().currentTimeMillis() - this.zzdqi.getLong("js_last_update", 0L) < ((Long) zzyt.zzpe().zzd(zzacu.zzcrw)).longValue()) {
            return zzbar.zzm(null);
        }
        return zzbar.zza(this.zzdqj.zzi(zzu(this.zzys)), new zzbam(this) { // from class: com.google.android.gms.internal.ads.zzask
            private final zzasj zzdqk;

            {
                this.zzdqk = this;
            }

            @Override // com.google.android.gms.internal.ads.zzbam
            public final Object apply(Object obj) {
                return this.zzdqk.zzf((JSONObject) obj);
            }
        }, zzbbm.zzeaf);
    }

    public static JSONObject zzu(Context context) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("js", zzbai.zzxc().zzbsx);
            jSONObject.put("mf", zzyt.zzpe().zzd(zzacu.zzcrx));
            jSONObject.put("cl", "248613007");
            jSONObject.put("rapid_rc", "dev");
            jSONObject.put("rapid_rollup", "HEAD");
            jSONObject.put("admob_module_version", 11140);
            jSONObject.put("dynamite_local_version", ModuleDescriptor.MODULE_VERSION);
            jSONObject.put("dynamite_version", DynamiteModule.getRemoteVersion(context, ModuleDescriptor.MODULE_ID));
            jSONObject.put("container_version", 12451009);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    final /* synthetic */ Void zzf(JSONObject jSONObject) {
        zzacu.zza(this.zzys, 1, jSONObject);
        this.zzdqi.edit().putLong("js_last_update", com.google.android.gms.ads.internal.zzk.zzln().currentTimeMillis()).apply();
        return null;
    }
}
