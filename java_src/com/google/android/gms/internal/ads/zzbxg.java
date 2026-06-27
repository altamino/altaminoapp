package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public final class zzbxg implements zzbrl, zzbur {
    private final View view;
    private final zzavg zzbsq;
    private final zzavf zzfio;
    private final int zzflt;
    private String zzflx;
    private final Context zzlj;

    public zzbxg(zzavf zzavfVar, Context context, zzavg zzavgVar, View view, int i) {
        this.zzfio = zzavfVar;
        this.zzlj = context;
        this.zzbsq = zzavgVar;
        this.view = view;
        this.zzflt = i;
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final void onAdLeftApplication() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final void onRewardedVideoCompleted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final void onRewardedVideoStarted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final void onAdOpened() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        View view = this.view;
        if (view != null && this.zzflx != null) {
            this.zzbsq.zzf(view.getContext(), this.zzflx);
        }
        this.zzfio.zzag(true);
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final void onAdClosed() {
        this.zzfio.zzag(false);
    }

    @Override // com.google.android.gms.internal.ads.zzbur
    public final void zzagu() {
        this.zzflx = this.zzbsq.zzz(this.zzlj);
        String strValueOf = String.valueOf(this.zzflx);
        String str = this.zzflt == 7 ? "/Rewarded" : "/Interstitial";
        this.zzflx = str.length() != 0 ? strValueOf.concat(str) : new String(strValueOf);
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final void zzb(zzasr zzasrVar, String str, String str2) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (this.zzbsq.zzx(this.zzlj)) {
            try {
                this.zzbsq.zza(this.zzlj, this.zzbsq.zzac(this.zzlj), this.zzfio.getAdUnitId(), zzasrVar.getType(), zzasrVar.getAmount());
            } catch (RemoteException e) {
                zzbad.zzd("Remote Exception to get reward item.", e);
            }
        }
    }
}
