package com.google.android.gms.internal.ads;

import android.content.Context;
import android.webkit.CookieManager;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzchc implements zzdti<zzbbh<String>> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzczt> zzfhv;

    private zzchc(zzdtu<zzczt> zzdtuVar, zzdtu<Context> zzdtuVar2) {
        this.zzfhv = zzdtuVar;
        this.zzeoj = zzdtuVar2;
    }

    public static zzchc zzaa(zzdtu<zzczt> zzdtuVar, zzdtu<Context> zzdtuVar2) {
        return new zzchc(zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        zzczt zzcztVar = this.zzfhv.get();
        final Context context = this.zzeoj.get();
        return (zzbbh) zzdto.zza(zzcztVar.zzv(zzczs.WEBVIEW_COOKIE).zzd(new Callable(context) { // from class: com.google.android.gms.internal.ads.zzcgu
            private final Context zzdef;

            {
                this.zzdef = context;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                CookieManager cookieManagerZzaz = com.google.android.gms.ads.internal.zzk.zzli().zzaz(this.zzdef);
                return cookieManagerZzaz != null ? cookieManagerZzaz.getCookie("googleads.g.doubleclick.net") : "";
            }
        }).zza(1L, TimeUnit.SECONDS).zza(Exception.class, zzcgv.zzfvz).zzane(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
