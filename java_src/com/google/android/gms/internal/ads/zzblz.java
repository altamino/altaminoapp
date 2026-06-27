package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.CookieManager;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzblz implements zzbls {
    private final Context zzlj;

    public zzblz(Context context) {
        this.zzlj = context;
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final void zzk(Map<String, String> map) {
        CookieManager cookieManagerZzaz;
        String str = map.get("cookie");
        if (TextUtils.isEmpty(str) || (cookieManagerZzaz = com.google.android.gms.ads.internal.zzk.zzli().zzaz(this.zzlj)) == null) {
            return;
        }
        cookieManagerZzaz.setCookie("googleads.g.doubleclick.net", str);
    }
}
