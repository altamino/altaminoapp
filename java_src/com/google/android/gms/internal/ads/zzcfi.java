package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import java.util.LinkedHashMap;
import java.util.Map;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes2.dex */
public final class zzcfi {
    private Map<String, String> zzcxs = new LinkedHashMap();

    public zzcfi(Context context, String str) {
        Map<String, String> map = this.zzcxs;
        map.put("s", "gmob_sdk");
        map.put("v", "3");
        map.put("os", Build.VERSION.RELEASE);
        map.put("sdk", Build.VERSION.SDK);
        com.google.android.gms.ads.internal.zzk.zzlg();
        map.put("device", zzaxi.zzwc());
        map.put("app", str);
        com.google.android.gms.ads.internal.zzk.zzlg();
        map.put("is_lite_sdk", zzaxi.zzau(context) ? IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE : "0");
        map.put("e", TextUtils.join(",", zzacu.zzqo()));
    }

    public final void zzb(zzcxu zzcxuVar) {
        if (zzcxuVar.zzgky.zzgkt.size() > 0) {
            int i = zzcxuVar.zzgky.zzgkt.get(0).zzflt;
            if (i == 1) {
                this.zzcxs.put("ad_format", "banner");
            } else if (i == 2) {
                this.zzcxs.put("ad_format", "interstitial");
            } else if (i == 3) {
                this.zzcxs.put("ad_format", "native_express");
            } else if (i == 4) {
                this.zzcxs.put("ad_format", "native_advanced");
            } else if (i == 5) {
                this.zzcxs.put("ad_format", "rewarded");
            } else {
                this.zzcxs.put("ad_format", IjkMediaMeta.IJKM_VAL_TYPE__UNKNOWN);
            }
            if (TextUtils.isEmpty(zzcxuVar.zzgky.zzgku.zzcep)) {
                return;
            }
            this.zzcxs.put("gqi", zzcxuVar.zzgky.zzgku.zzcep);
        }
    }

    public final void zzi(Bundle bundle) {
        if (bundle.containsKey("cnt")) {
            this.zzcxs.put("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            this.zzcxs.put("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
    }

    public final Map<String, String> zzqy() {
        return this.zzcxs;
    }
}
