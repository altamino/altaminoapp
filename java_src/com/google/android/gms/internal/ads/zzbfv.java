package com.google.android.gms.internal.ads;

import android.support.v4.app.NotificationCompat;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzbfv implements Runnable {
    private final /* synthetic */ String zzdli;
    private final /* synthetic */ String zzehu;
    private final /* synthetic */ int zzehv;
    private final /* synthetic */ int zzehw = 0;
    private final /* synthetic */ boolean zzehx;
    private final /* synthetic */ zzbft zzehy;
    private final /* synthetic */ int zzehz;
    private final /* synthetic */ int zzeia;

    zzbfv(zzbft zzbftVar, String str, String str2, int i, int i2, boolean z, int i3, int i4) {
        this.zzehy = zzbftVar;
        this.zzdli = str;
        this.zzehu = str2;
        this.zzehv = i;
        this.zzehx = z;
        this.zzehz = i3;
        this.zzeia = i4;
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
        map.put("playerCount", Integer.toString(this.zzehz));
        map.put("playerPreparedCount", Integer.toString(this.zzeia));
        this.zzehy.zza("onPrecacheEvent", (Map<String, String>) map);
    }
}
