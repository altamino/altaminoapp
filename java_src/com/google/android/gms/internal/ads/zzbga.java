package com.google.android.gms.internal.ads;

import android.support.v4.app.NotificationCompat;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzbga implements Runnable {
    private final /* synthetic */ String zzdli;
    private final /* synthetic */ String zzehu;
    private final /* synthetic */ zzbft zzehy;
    private final /* synthetic */ long zzeic;

    zzbga(zzbft zzbftVar, String str, String str2, long j) {
        this.zzehy = zzbftVar;
        this.zzdli = str;
        this.zzehu = str2;
        this.zzeic = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap map = new HashMap();
        map.put(NotificationCompat.CATEGORY_EVENT, "precacheComplete");
        map.put("src", this.zzdli);
        map.put("cachedSrc", this.zzehu);
        map.put("totalDuration", Long.toString(this.zzeic));
        this.zzehy.zza("onPrecacheEvent", (Map<String, String>) map);
    }
}
