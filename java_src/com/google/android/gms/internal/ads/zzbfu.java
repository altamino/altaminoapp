package com.google.android.gms.internal.ads;

import android.support.v4.app.NotificationCompat;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzbfu implements Runnable {
    private final /* synthetic */ String zzdli;
    private final /* synthetic */ String zzehu;
    private final /* synthetic */ int zzehv;
    private final /* synthetic */ int zzehw;
    private final /* synthetic */ boolean zzehx = false;
    private final /* synthetic */ zzbft zzehy;

    zzbfu(zzbft zzbftVar, String str, String str2, int i, int i2, boolean z) {
        this.zzehy = zzbftVar;
        this.zzdli = str;
        this.zzehu = str2;
        this.zzehv = i;
        this.zzehw = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap map = new HashMap();
        map.put(NotificationCompat.CATEGORY_EVENT, "precacheProgress");
        map.put("src", this.zzdli);
        map.put("cachedSrc", this.zzehu);
        map.put("bytesLoaded", Integer.toString(this.zzehv));
        map.put("totalBytes", Integer.toString(this.zzehw));
        map.put("cacheReady", this.zzehx ? IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE : "0");
        this.zzehy.zza("onPrecacheEvent", (Map<String, String>) map);
    }
}
