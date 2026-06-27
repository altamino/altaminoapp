package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

@zzard
/* loaded from: classes2.dex */
public final class zzbde {
    public final boolean zzeec;
    public final int zzeed;
    public final int zzeee;
    public final int zzeef;
    public final String zzeeg;
    public final int zzeeh;
    public final int zzeei;
    public final int zzeej;
    public final int zzeek;
    public final boolean zzeel;

    public zzbde(String str) {
        JSONObject jSONObject = null;
        if (str != null) {
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException unused) {
            }
        }
        this.zzeec = zza(jSONObject, "aggressive_media_codec_release", zzacu.zzcmi);
        this.zzeed = zzb(jSONObject, "byte_buffer_precache_limit", zzacu.zzclr);
        this.zzeee = zzb(jSONObject, "exo_cache_buffer_size", zzacu.zzclw);
        this.zzeef = zzb(jSONObject, "exo_connect_timeout_millis", zzacu.zzcln);
        this.zzeeg = zzc(jSONObject, "exo_player_version", zzacu.zzclm);
        this.zzeeh = zzb(jSONObject, "exo_read_timeout_millis", zzacu.zzclo);
        this.zzeei = zzb(jSONObject, "load_check_interval_bytes", zzacu.zzclp);
        this.zzeej = zzb(jSONObject, "player_precache_limit", zzacu.zzclq);
        this.zzeek = zzb(jSONObject, "socket_receive_buffer_size", zzacu.zzcls);
        this.zzeel = zza(jSONObject, "use_cache_data_source", zzacu.zzctr);
    }

    private static boolean zza(JSONObject jSONObject, String str, zzacj<Boolean> zzacjVar) {
        return zza(jSONObject, str, ((Boolean) zzyt.zzpe().zzd(zzacjVar)).booleanValue());
    }

    private static boolean zza(JSONObject jSONObject, String str, boolean z) {
        if (jSONObject != null) {
            try {
                return jSONObject.getBoolean(str);
            } catch (JSONException unused) {
            }
        }
        return z;
    }

    private static int zzb(JSONObject jSONObject, String str, zzacj<Integer> zzacjVar) {
        if (jSONObject != null) {
            try {
                return jSONObject.getInt(str);
            } catch (JSONException unused) {
            }
        }
        return ((Integer) zzyt.zzpe().zzd(zzacjVar)).intValue();
    }

    private static String zzc(JSONObject jSONObject, String str, zzacj<String> zzacjVar) {
        if (jSONObject != null) {
            try {
                return jSONObject.getString(str);
            } catch (JSONException unused) {
            }
        }
        return (String) zzyt.zzpe().zzd(zzacjVar);
    }
}
