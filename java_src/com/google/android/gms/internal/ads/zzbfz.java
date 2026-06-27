package com.google.android.gms.internal.ads;

import android.support.v4.app.NotificationCompat;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzbfz implements Runnable {
    private final /* synthetic */ String zzdli;
    private final /* synthetic */ String zzehu;
    private final /* synthetic */ int zzehw;
    private final /* synthetic */ zzbft zzehy;

    zzbfz(zzbft zzbftVar, String str, String str2, int i) {
        this.zzehy = zzbftVar;
        this.zzdli = str;
        this.zzehu = str2;
        this.zzehw = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap map = new HashMap();
        map.put(NotificationCompat.CATEGORY_EVENT, "precacheComplete");
        map.put("src", this.zzdli);
        map.put("cachedSrc", this.zzehu);
        map.put("totalBytes", Integer.toString(this.zzehw));
        this.zzehy.zza("onPrecacheEvent", (Map<String, String>) map);
    }
}
