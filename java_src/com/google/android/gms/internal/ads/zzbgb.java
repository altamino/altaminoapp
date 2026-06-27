package com.google.android.gms.internal.ads;

import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import com.narvii.account.notice.AccountNotice;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzbgb implements Runnable {
    private final /* synthetic */ String val$message;
    private final /* synthetic */ String zzdli;
    private final /* synthetic */ String zzehu;
    private final /* synthetic */ zzbft zzehy;
    private final /* synthetic */ String zzeid;

    zzbgb(zzbft zzbftVar, String str, String str2, String str3, String str4) {
        this.zzehy = zzbftVar;
        this.zzdli = str;
        this.zzehu = str2;
        this.zzeid = str3;
        this.val$message = str4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap map = new HashMap();
        map.put(NotificationCompat.CATEGORY_EVENT, "precacheCanceled");
        map.put("src", this.zzdli);
        if (!TextUtils.isEmpty(this.zzehu)) {
            map.put("cachedSrc", this.zzehu);
        }
        zzbft zzbftVar = this.zzehy;
        map.put("type", zzbft.zzez(this.zzeid));
        map.put("reason", this.zzeid);
        if (!TextUtils.isEmpty(this.val$message)) {
            map.put(AccountNotice.LEVEL_MESSAGE, this.val$message);
        }
        this.zzehy.zza("onPrecacheEvent", (Map<String, String>) map);
    }
}
