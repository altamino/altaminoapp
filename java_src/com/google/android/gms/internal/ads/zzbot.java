package com.google.android.gms.internal.ads;

import android.content.Context;
import android.support.v4.util.ArrayMap;
import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes2.dex */
public final class zzbot implements zzbrw, zzbsr {
    private final zzbai zzbtc;
    private final zzbgz zzdbs;
    private final zzcxm zzfig;
    private IObjectWrapper zzfih;
    private boolean zzfii;
    private final Context zzlj;

    public zzbot(Context context, zzbgz zzbgzVar, zzcxm zzcxmVar, zzbai zzbaiVar) {
        this.zzlj = context;
        this.zzdbs = zzbgzVar;
        this.zzfig = zzcxmVar;
        this.zzbtc = zzbaiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbsr
    public final synchronized void onAdLoaded() {
        if (this.zzfii) {
            return;
        }
        zzafv();
    }

    @Override // com.google.android.gms.internal.ads.zzbrw
    public final synchronized void onAdImpression() {
        if (!this.zzfii) {
            zzafv();
        }
        if (this.zzfig.zzdoh && this.zzfih != null && this.zzdbs != null) {
            this.zzdbs.zza("onSdkImpression", new ArrayMap());
        }
    }

    private final synchronized void zzafv() {
        if (this.zzfig.zzdoh) {
            if (this.zzdbs == null) {
                return;
            }
            if (com.google.android.gms.ads.internal.zzk.zzlv().zzl(this.zzlj)) {
                int i = this.zzbtc.zzdzc;
                int i2 = this.zzbtc.zzdzd;
                StringBuilder sb = new StringBuilder(23);
                sb.append(i);
                sb.append(".");
                sb.append(i2);
                this.zzfih = com.google.android.gms.ads.internal.zzk.zzlv().zza(sb.toString(), this.zzdbs.getWebView(), "", "javascript", this.zzfig.zzgko.optInt("media_type", -1) == 0 ? null : "javascript");
                View view = this.zzdbs.getView();
                if (this.zzfih != null && view != null) {
                    com.google.android.gms.ads.internal.zzk.zzlv().zza(this.zzfih, view);
                    this.zzdbs.zzam(this.zzfih);
                    com.google.android.gms.ads.internal.zzk.zzlv().zzaa(this.zzfih);
                    this.zzfii = true;
                }
            }
        }
    }
}
