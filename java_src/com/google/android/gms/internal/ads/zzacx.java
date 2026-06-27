package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Future;

@zzard
/* loaded from: classes2.dex */
public final class zzacx {
    private String zzbsx;
    private String zzcwz = (String) zzyt.zzpe().zzd(zzacu.zzcmy);
    private Map<String, String> zzcxa = new LinkedHashMap();
    private Context zzlj;

    public zzacx(Context context, String str) {
        this.zzlj = null;
        this.zzbsx = null;
        this.zzlj = context;
        this.zzbsx = str;
        this.zzcxa.put("s", "gmob_sdk");
        this.zzcxa.put("v", "3");
        this.zzcxa.put("os", Build.VERSION.RELEASE);
        this.zzcxa.put("sdk", Build.VERSION.SDK);
        Map<String, String> map = this.zzcxa;
        com.google.android.gms.ads.internal.zzk.zzlg();
        map.put("device", zzaxi.zzwc());
        this.zzcxa.put("app", context.getApplicationContext() != null ? context.getApplicationContext().getPackageName() : context.getPackageName());
        Map<String, String> map2 = this.zzcxa;
        com.google.android.gms.ads.internal.zzk.zzlg();
        map2.put("is_lite_sdk", zzaxi.zzau(context) ? IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE : "0");
        Future<zzase> futureZzt = com.google.android.gms.ads.internal.zzk.zzlr().zzt(this.zzlj);
        try {
            this.zzcxa.put("network_coarse", Integer.toString(futureZzt.get().zzdps));
            this.zzcxa.put("network_fine", Integer.toString(futureZzt.get().zzdpt));
        } catch (Exception e) {
            com.google.android.gms.ads.internal.zzk.zzlk().zza(e, "CsiConfiguration.CsiConfiguration");
        }
    }

    final String zzqr() {
        return this.zzcwz;
    }

    final Context getContext() {
        return this.zzlj;
    }

    final String zzmg() {
        return this.zzbsx;
    }

    final Map<String, String> zzqs() {
        return this.zzcxa;
    }
}
