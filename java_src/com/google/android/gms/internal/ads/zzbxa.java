package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.HashMap;

/* loaded from: classes2.dex */
public final class zzbxa implements com.google.android.gms.ads.internal.overlay.zzo, zzbsr {
    private final zzbai zzbtc;
    private final zzbgz zzdbs;
    private final zzcxm zzfig;

    @VisibleForTesting
    private IObjectWrapper zzfih;
    private final int zzflt;
    private final Context zzlj;

    public zzbxa(Context context, zzbgz zzbgzVar, zzcxm zzcxmVar, zzbai zzbaiVar, int i) {
        this.zzlj = context;
        this.zzdbs = zzbgzVar;
        this.zzfig = zzcxmVar;
        this.zzbtc = zzbaiVar;
        this.zzflt = i;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onResume() {
    }

    @Override // com.google.android.gms.internal.ads.zzbsr
    public final void onAdLoaded() {
        int i = this.zzflt;
        if ((i == 7 || i == 3) && this.zzfig.zzdoh && this.zzdbs != null && com.google.android.gms.ads.internal.zzk.zzlv().zzl(this.zzlj)) {
            zzbai zzbaiVar = this.zzbtc;
            int i2 = zzbaiVar.zzdzc;
            int i3 = zzbaiVar.zzdzd;
            StringBuilder sb = new StringBuilder(23);
            sb.append(i2);
            sb.append(".");
            sb.append(i3);
            this.zzfih = com.google.android.gms.ads.internal.zzk.zzlv().zza(sb.toString(), this.zzdbs.getWebView(), "", "javascript", this.zzfig.zzgko.optInt("media_type", -1) == 0 ? null : "javascript");
            if (this.zzfih == null || this.zzdbs.getView() == null) {
                return;
            }
            com.google.android.gms.ads.internal.zzk.zzlv().zza(this.zzfih, this.zzdbs.getView());
            this.zzdbs.zzam(this.zzfih);
            com.google.android.gms.ads.internal.zzk.zzlv().zzaa(this.zzfih);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzsz() {
        this.zzfih = null;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzta() {
        zzbgz zzbgzVar;
        if (this.zzfih == null || (zzbgzVar = this.zzdbs) == null) {
            return;
        }
        zzbgzVar.zza("onSdkImpression", new HashMap());
    }
}
