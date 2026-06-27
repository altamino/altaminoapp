package com.google.android.gms.internal.ads;

import android.support.v4.app.NotificationCompat;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzbfw implements Runnable {
    private final /* synthetic */ String zzdli;
    private final /* synthetic */ String zzehu;
    private final /* synthetic */ boolean zzehx;
    private final /* synthetic */ zzbft zzehy;
    private final /* synthetic */ long zzeib;
    private final /* synthetic */ long zzeic;

    zzbfw(zzbft zzbftVar, String str, String str2, long j, long j2, boolean z) {
        this.zzehy = zzbftVar;
        this.zzdli = str;
        this.zzehu = str2;
        this.zzeib = j;
        this.zzeic = j2;
        this.zzehx = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap map = new HashMap();
        map.put(NotificationCompat.CATEGORY_EVENT, "precacheProgress");
        map.put("src", this.zzdli);
        map.put("cachedSrc", this.zzehu);
        map.put("bufferedDuration", Long.toString(this.zzeib));
        map.put("totalDuration", Long.toString(this.zzeic));
        map.put("cacheReady", this.zzehx ? IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE : "0");
        this.zzehy.zza("onPrecacheEvent", (Map<String, String>) map);
    }
}
