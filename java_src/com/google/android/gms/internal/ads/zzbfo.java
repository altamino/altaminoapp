package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzard
/* loaded from: classes2.dex */
public final class zzbfo implements zzaho<zzbdf> {
    private boolean zzehp;

    private static int zza(Context context, Map<String, String> map, String str, int i) {
        String str2 = map.get(str);
        if (str2 == null) {
            return i;
        }
        try {
            zzyt.zzpa();
            return zzazt.zza(context, Integer.parseInt(str2));
        } catch (NumberFormatException unused) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(str2).length());
            sb.append("Could not parse ");
            sb.append(str);
            sb.append(" in a video GMSG: ");
            sb.append(str2);
            zzbad.zzep(sb.toString());
            return i;
        }
    }

    private static void zza(zzbcq zzbcqVar, Map<String, String> map) {
        String str = map.get("minBufferMs");
        String str2 = map.get("maxBufferMs");
        String str3 = map.get("bufferForPlaybackMs");
        String str4 = map.get("bufferForPlaybackAfterRebufferMs");
        String str5 = map.get("socketReceiveBufferSize");
        if (str != null) {
            try {
                zzbcqVar.zzcy(Integer.parseInt(str));
            } catch (NumberFormatException unused) {
                zzbad.zzep(String.format("Could not parse buffer parameters in loadControl video GMSG: (%s, %s)", str, str2));
                return;
            }
        }
        if (str2 != null) {
            zzbcqVar.zzcz(Integer.parseInt(str2));
        }
        if (str3 != null) {
            zzbcqVar.zzda(Integer.parseInt(str3));
        }
        if (str4 != null) {
            zzbcqVar.zzdb(Integer.parseInt(str4));
        }
        if (str5 != null) {
            zzbcqVar.zzdc(Integer.parseInt(str5));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaho
    public final /* synthetic */ void zza(zzbdf zzbdfVar, Map map) throws NumberFormatException {
        int i;
        zzbdf zzbdfVar2 = zzbdfVar;
        String str = (String) map.get("action");
        if (str == null) {
            zzbad.zzep("Action missing from video GMSG.");
            return;
        }
        if (zzbad.isLoggable(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            String string = jSONObject.toString();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 13 + String.valueOf(string).length());
            sb.append("Video GMSG: ");
            sb.append(str);
            sb.append(" ");
            sb.append(string);
            zzbad.zzdp(sb.toString());
        }
        if ("background".equals(str)) {
            String str2 = (String) map.get(TtmlNode.ATTR_TTS_COLOR);
            if (TextUtils.isEmpty(str2)) {
                zzbad.zzep("Color parameter missing from color video GMSG.");
                return;
            }
            try {
                zzbdfVar2.setBackgroundColor(Color.parseColor(str2));
                return;
            } catch (IllegalArgumentException unused) {
                zzbad.zzep("Invalid color parameter in video GMSG.");
                return;
            }
        }
        if ("decoderProps".equals(str)) {
            String str3 = (String) map.get("mimeTypes");
            if (str3 == null) {
                zzbad.zzep("No MIME types specified for decoder properties inspection.");
                zzbcq.zza(zzbdfVar2, "missingMimeTypes");
                return;
            }
            if (Build.VERSION.SDK_INT < 16) {
                zzbad.zzep("Video decoder properties available on API versions >= 16.");
                zzbcq.zza(zzbdfVar2, "deficientApiVersion");
                return;
            }
            HashMap map2 = new HashMap();
            for (String str4 : str3.split(",")) {
                map2.put(str4, zzazr.zzeh(str4.trim()));
            }
            zzbcq.zza(zzbdfVar2, map2);
            return;
        }
        zzbcw zzbcwVarZzya = zzbdfVar2.zzya();
        if (zzbcwVarZzya == null) {
            zzbad.zzep("Could not get underlay container for a video GMSG.");
            return;
        }
        boolean zEquals = "new".equals(str);
        boolean zEquals2 = "position".equals(str);
        if (zEquals || zEquals2) {
            Context context = zzbdfVar2.getContext();
            int iZza = zza(context, map, "x", 0);
            int iZza2 = zza(context, map, "y", 0);
            int iZza3 = zza(context, map, "w", -1);
            int iZza4 = zza(context, map, "h", -1);
            int iMin = Math.min(iZza3, zzbdfVar2.zzyj() - iZza);
            int iMin2 = Math.min(iZza4, zzbdfVar2.zzyi() - iZza2);
            try {
                i = Integer.parseInt((String) map.get("player"));
            } catch (NumberFormatException unused2) {
                i = 0;
            }
            boolean z = Boolean.parseBoolean((String) map.get("spherical"));
            if (zEquals && zzbcwVarZzya.zzxw() == null) {
                zzbcwVarZzya.zza(iZza, iZza2, iMin, iMin2, i, z, new zzbde((String) map.get("flags")));
                zzbcq zzbcqVarZzxw = zzbcwVarZzya.zzxw();
                if (zzbcqVarZzxw != null) {
                    zza(zzbcqVarZzxw, (Map<String, String>) map);
                    return;
                }
                return;
            }
            zzbcwVarZzya.zze(iZza, iZza2, iMin, iMin2);
            return;
        }
        zzbhq zzbhqVarZzyb = zzbdfVar2.zzyb();
        if (zzbhqVarZzyb != null) {
            if ("timeupdate".equals(str)) {
                String str5 = (String) map.get("currentTime");
                if (str5 == null) {
                    zzbad.zzep("currentTime parameter missing from timeupdate video GMSG.");
                    return;
                }
                try {
                    zzbhqVarZzyb.zze(Float.parseFloat(str5));
                    return;
                } catch (NumberFormatException unused3) {
                    String strValueOf = String.valueOf(str5);
                    zzbad.zzep(strValueOf.length() != 0 ? "Could not parse currentTime parameter from timeupdate video GMSG: ".concat(strValueOf) : new String("Could not parse currentTime parameter from timeupdate video GMSG: "));
                    return;
                }
            }
            if ("skip".equals(str)) {
                zzbhqVarZzyb.zzabs();
                return;
            }
        }
        zzbcq zzbcqVarZzxw2 = zzbcwVarZzya.zzxw();
        if (zzbcqVarZzxw2 == null) {
            zzbcq.zzb(zzbdfVar2);
            return;
        }
        if ("click".equals(str)) {
            Context context2 = zzbdfVar2.getContext();
            int iZza5 = zza(context2, map, "x", 0);
            int iZza6 = zza(context2, map, "y", 0);
            long jUptimeMillis = SystemClock.uptimeMillis();
            MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, iZza5, iZza6, 0);
            zzbcqVarZzxw2.zze(motionEventObtain);
            motionEventObtain.recycle();
            return;
        }
        if ("currentTime".equals(str)) {
            String str6 = (String) map.get("time");
            if (str6 == null) {
                zzbad.zzep("Time parameter missing from currentTime video GMSG.");
                return;
            }
            try {
                zzbcqVarZzxw2.seekTo((int) (Float.parseFloat(str6) * 1000.0f));
                return;
            } catch (NumberFormatException unused4) {
                String strValueOf2 = String.valueOf(str6);
                zzbad.zzep(strValueOf2.length() != 0 ? "Could not parse time parameter from currentTime video GMSG: ".concat(strValueOf2) : new String("Could not parse time parameter from currentTime video GMSG: "));
                return;
            }
        }
        if ("hide".equals(str)) {
            zzbcqVarZzxw2.setVisibility(4);
            return;
        }
        if ("load".equals(str)) {
            zzbcqVarZzxw2.zzfr();
            return;
        }
        if ("loadControl".equals(str)) {
            zza(zzbcqVarZzxw2, (Map<String, String>) map);
            return;
        }
        if ("muted".equals(str)) {
            if (Boolean.parseBoolean((String) map.get("muted"))) {
                zzbcqVarZzxw2.zzxq();
                return;
            } else {
                zzbcqVarZzxw2.zzxr();
                return;
            }
        }
        if ("pause".equals(str)) {
            zzbcqVarZzxw2.pause();
            return;
        }
        if ("play".equals(str)) {
            zzbcqVarZzxw2.play();
            return;
        }
        if ("show".equals(str)) {
            zzbcqVarZzxw2.setVisibility(0);
            return;
        }
        if ("src".equals(str)) {
            String str7 = (String) map.get("src");
            String[] strArr = {str7};
            String str8 = (String) map.get("demuxed");
            if (str8 != null) {
                try {
                    JSONArray jSONArray = new JSONArray(str8);
                    String[] strArr2 = new String[jSONArray.length()];
                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                        strArr2[i2] = jSONArray.getString(i2);
                    }
                    strArr = strArr2;
                } catch (JSONException unused5) {
                    String strValueOf3 = String.valueOf(str8);
                    zzbad.zzep(strValueOf3.length() != 0 ? "Malformed demuxed URL list for playback: ".concat(strValueOf3) : new String("Malformed demuxed URL list for playback: "));
                    strArr = new String[]{str7};
                }
            }
            zzbcqVarZzxw2.zzc(str7, strArr);
            return;
        }
        if ("touchMove".equals(str)) {
            Context context3 = zzbdfVar2.getContext();
            zzbcqVarZzxw2.zza(zza(context3, map, "dx", 0), zza(context3, map, "dy", 0));
            if (this.zzehp) {
                return;
            }
            zzbdfVar2.zztm();
            this.zzehp = true;
            return;
        }
        if ("volume".equals(str)) {
            String str9 = (String) map.get("volume");
            if (str9 == null) {
                zzbad.zzep("Level parameter missing from volume video GMSG.");
                return;
            }
            try {
                zzbcqVarZzxw2.setVolume(Float.parseFloat(str9));
                return;
            } catch (NumberFormatException unused6) {
                String strValueOf4 = String.valueOf(str9);
                zzbad.zzep(strValueOf4.length() != 0 ? "Could not parse volume parameter from volume video GMSG: ".concat(strValueOf4) : new String("Could not parse volume parameter from volume video GMSG: "));
                return;
            }
        }
        if ("watermark".equals(str)) {
            zzbcqVarZzxw2.zzxs();
        } else {
            String strValueOf5 = String.valueOf(str);
            zzbad.zzep(strValueOf5.length() != 0 ? "Unknown video action: ".concat(strValueOf5) : new String("Unknown video action: "));
        }
    }
}
