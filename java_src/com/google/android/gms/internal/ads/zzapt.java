package com.google.android.gms.internal.ads;

import java.util.Map;

@zzard
/* loaded from: classes2.dex */
public final class zzapt {
    private final zzbgz zzdbs;
    private final boolean zzdil;
    private final String zzdim;

    public zzapt(zzbgz zzbgzVar, Map<String, String> map) {
        this.zzdbs = zzbgzVar;
        this.zzdim = map.get("forceOrientation");
        if (map.containsKey("allowOrientationChange")) {
            this.zzdil = Boolean.parseBoolean(map.get("allowOrientationChange"));
        } else {
            this.zzdil = true;
        }
    }

    public final void execute() {
        int iZzwf;
        if (this.zzdbs == null) {
            zzbad.zzep("AdWebView is null");
            return;
        }
        if ("portrait".equalsIgnoreCase(this.zzdim)) {
            com.google.android.gms.ads.internal.zzk.zzli();
            iZzwf = 7;
        } else if ("landscape".equalsIgnoreCase(this.zzdim)) {
            com.google.android.gms.ads.internal.zzk.zzli();
            iZzwf = 6;
        } else {
            iZzwf = this.zzdil ? -1 : com.google.android.gms.ads.internal.zzk.zzli().zzwf();
        }
        this.zzdbs.setRequestedOrientation(iZzwf);
    }
}
