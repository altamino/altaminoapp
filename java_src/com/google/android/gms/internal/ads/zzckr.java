package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.support.customtabs.CustomTabsIntent;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzckr implements zzcjv<zzbvx> {
    private final zzcxk zzfex;
    private final Executor zzffv;
    private final zzbws zzfzy;
    private final Context zzlj;

    public zzckr(Context context, Executor executor, zzbws zzbwsVar, zzcxk zzcxkVar) {
        this.zzlj = context;
        this.zzfzy = zzbwsVar;
        this.zzffv = executor;
        this.zzfex = zzcxkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcjv
    public final boolean zza(zzcxu zzcxuVar, zzcxm zzcxmVar) {
        return (this.zzlj instanceof Activity) && PlatformVersion.isAtLeastIceCreamSandwichMR1() && zzads.zzj(this.zzlj) && !TextUtils.isEmpty(zzc(zzcxmVar));
    }

    @Override // com.google.android.gms.internal.ads.zzcjv
    public final zzbbh<zzbvx> zzb(final zzcxu zzcxuVar, final zzcxm zzcxmVar) {
        String strZzc = zzc(zzcxmVar);
        final Uri uri = strZzc != null ? Uri.parse(strZzc) : null;
        return zzbar.zza(zzbar.zzm(null), new zzbal(this, uri, zzcxuVar, zzcxmVar) { // from class: com.google.android.gms.internal.ads.zzcks
            private final zzckr zzfzz;
            private final Uri zzgaa;
            private final zzcxu zzgab;
            private final zzcxm zzgac;

            {
                this.zzfzz = this;
                this.zzgaa = uri;
                this.zzgab = zzcxuVar;
                this.zzgac = zzcxmVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbal
            public final zzbbh zzf(Object obj) {
                return this.zzfzz.zza(this.zzgaa, this.zzgab, this.zzgac, obj);
            }
        }, this.zzffv);
    }

    private static String zzc(zzcxm zzcxmVar) {
        try {
            return zzcxmVar.zzgkh.getString("tab_url");
        } catch (Exception unused) {
            return null;
        }
    }

    final /* synthetic */ zzbbh zza(Uri uri, zzcxu zzcxuVar, zzcxm zzcxmVar, Object obj) throws Exception {
        try {
            CustomTabsIntent customTabsIntentBuild = new CustomTabsIntent.Builder().build();
            customTabsIntentBuild.intent.setData(uri);
            com.google.android.gms.ads.internal.overlay.zzc zzcVar = new com.google.android.gms.ads.internal.overlay.zzc(customTabsIntentBuild.intent);
            final zzbbr zzbbrVar = new zzbbr();
            zzbvy zzbvyVarZza = this.zzfzy.zza(new zzbpr(zzcxuVar, zzcxmVar, null), new zzbvz(new zzbwz(zzbbrVar) { // from class: com.google.android.gms.internal.ads.zzckt
                private final zzbbr zzbxh;

                {
                    this.zzbxh = zzbbrVar;
                }

                @Override // com.google.android.gms.internal.ads.zzbwz
                public final void zza(boolean z, Context context) {
                    zzbbr zzbbrVar2 = this.zzbxh;
                    try {
                        com.google.android.gms.ads.internal.zzk.zzlf();
                        com.google.android.gms.ads.internal.overlay.zzm.zza(context, (AdOverlayInfoParcel) zzbbrVar2.get(), true);
                    } catch (Exception unused) {
                    }
                }
            }));
            zzbbrVar.set(new AdOverlayInfoParcel(zzcVar, null, zzbvyVarZza.zzaef(), null, new zzbai(0, 0, false)));
            this.zzfex.zzuy();
            return zzbar.zzm(zzbvyVarZza.zzaee());
        } catch (Throwable th) {
            zzbad.zzc("Error in CustomTabsAdRenderer", th);
            throw th;
        }
    }
}
