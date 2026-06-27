package com.google.android.gms.internal.ads;

import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzard
/* loaded from: classes2.dex */
public final class zzbgc implements zzaho<zzbdf> {
    private static Integer zza(Map<String, String> map, String str) {
        if (!map.containsKey(str)) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt(map.get(str)));
        } catch (NumberFormatException unused) {
            String str2 = map.get(str);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 39 + String.valueOf(str2).length());
            sb.append("Precache invalid numeric parameter '");
            sb.append(str);
            sb.append("': ");
            sb.append(str2);
            zzbad.zzep(sb.toString());
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaho
    public final /* synthetic */ void zza(zzbdf zzbdfVar, Map map) {
        zzbft zzbftVarZza;
        zzbdf zzbdfVar2 = zzbdfVar;
        if (zzbad.isLoggable(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            String strValueOf = String.valueOf(jSONObject);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 15);
            sb.append("Precache GMSG: ");
            sb.append(strValueOf);
            zzbad.zzdp(sb.toString());
        }
        com.google.android.gms.ads.internal.zzk.zzmc();
        if (map.containsKey("abort")) {
            if (zzbfs.zzc(zzbdfVar2)) {
                return;
            }
            zzbad.zzep("Precache abort but no precache task running.");
            return;
        }
        String str = (String) map.get("src");
        if (str != null) {
            String[] strArr = {str};
            String str2 = (String) map.get("demuxed");
            if (str2 != null) {
                try {
                    JSONArray jSONArray = new JSONArray(str2);
                    String[] strArr2 = new String[jSONArray.length()];
                    for (int i = 0; i < jSONArray.length(); i++) {
                        strArr2[i] = jSONArray.getString(i);
                    }
                    strArr = strArr2;
                } catch (JSONException unused) {
                    String strValueOf2 = String.valueOf(str2);
                    zzbad.zzep(strValueOf2.length() != 0 ? "Malformed demuxed URL list for precache: ".concat(strValueOf2) : new String("Malformed demuxed URL list for precache: "));
                    strArr = null;
                }
            }
            if (strArr == null) {
                strArr = new String[]{str};
            }
            if (zzbfs.zzd(zzbdfVar2) != null) {
                zzbad.zzep("Precache task is already running.");
                return;
            }
            if (zzbdfVar2.zzye() == null) {
                zzbad.zzep("Precache requires a dependency provider.");
                return;
            }
            zzbde zzbdeVar = new zzbde((String) map.get("flags"));
            Integer numZza = zza((Map<String, String>) map, "player");
            if (numZza == null) {
                numZza = 0;
            }
            zzbftVarZza = zzbdfVar2.zzye().zzbqr.zza(zzbdfVar2, numZza.intValue(), null, zzbdeVar);
            new zzbfq(zzbdfVar2, zzbftVarZza, str, strArr).zzvi();
        } else {
            zzbfq zzbfqVarZzd = zzbfs.zzd(zzbdfVar2);
            if (zzbfqVarZzd != null) {
                zzbftVarZza = zzbfqVarZzd.zzehq;
            } else {
                zzbad.zzep("Precache must specify a source.");
                return;
            }
        }
        Integer numZza2 = zza((Map<String, String>) map, "minBufferMs");
        if (numZza2 != null) {
            zzbftVarZza.zzcy(numZza2.intValue());
        }
        Integer numZza3 = zza((Map<String, String>) map, "maxBufferMs");
        if (numZza3 != null) {
            zzbftVarZza.zzcz(numZza3.intValue());
        }
        Integer numZza4 = zza((Map<String, String>) map, "bufferForPlaybackMs");
        if (numZza4 != null) {
            zzbftVarZza.zzda(numZza4.intValue());
        }
        Integer numZza5 = zza((Map<String, String>) map, "bufferForPlaybackAfterRebufferMs");
        if (numZza5 != null) {
            zzbftVarZza.zzdb(numZza5.intValue());
        }
    }
}
