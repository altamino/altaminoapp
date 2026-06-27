package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import java.io.IOException;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzcfz implements AppEventListener, zzbrl, zzbro, zzbrw, zzbrx, zzbsr, zzbtk, zzczz, zzxr {
    private long startTime;
    private final List<Object> zzdyx;
    private final zzcfn zzfuy;

    public zzcfz(zzcfn zzcfnVar, zzbjm zzbjmVar) {
        this.zzfuy = zzcfnVar;
        this.zzdyx = Collections.singletonList(zzbjmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final void zza(zzcxu zzcxuVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbrx
    public final void zzbp(Context context) throws IOException {
        zza(zzbrx.class, "onPause", context);
    }

    @Override // com.google.android.gms.internal.ads.zzbrx
    public final void zzbq(Context context) throws IOException {
        zza(zzbrx.class, "onResume", context);
    }

    @Override // com.google.android.gms.internal.ads.zzbrx
    public final void zzbr(Context context) throws IOException {
        zza(zzbrx.class, "onDestroy", context);
    }

    @Override // com.google.android.gms.ads.doubleclick.AppEventListener
    public final void onAppEvent(String str, String str2) throws IOException {
        zza(AppEventListener.class, "onAppEvent", str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbsr
    public final void onAdLoaded() throws IOException {
        long jElapsedRealtime = com.google.android.gms.ads.internal.zzk.zzln().elapsedRealtime() - this.startTime;
        StringBuilder sb = new StringBuilder(41);
        sb.append("Ad Request Latency : ");
        sb.append(jElapsedRealtime);
        zzawz.zzds(sb.toString());
        zza(zzbsr.class, "onAdLoaded", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzbro
    public final void onAdFailedToLoad(int i) throws IOException {
        zza(zzbro.class, "onAdFailedToLoad", Integer.valueOf(i));
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final void onAdOpened() throws IOException {
        zza(zzbrl.class, "onAdOpened", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final void onAdClosed() throws IOException {
        zza(zzbrl.class, "onAdClosed", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final void onAdLeftApplication() throws IOException {
        zza(zzbrl.class, "onAdLeftApplication", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzxr
    public final void onAdClicked() throws IOException {
        zza(zzxr.class, "onAdClicked", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzbrw
    public final void onAdImpression() throws IOException {
        zza(zzbrw.class, "onAdImpression", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final void onRewardedVideoStarted() throws IOException {
        zza(zzbrl.class, "onRewardedVideoStarted", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final void zzb(zzasr zzasrVar, String str, String str2) throws IOException {
        zza(zzbrl.class, "onRewarded", zzasrVar, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final void onRewardedVideoCompleted() throws IOException {
        zza(zzbrl.class, "onRewardedVideoCompleted", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzczz
    public final void zza(zzczs zzczsVar, String str) throws IOException {
        zza(zzczr.class, "onTaskCreated", str);
    }

    @Override // com.google.android.gms.internal.ads.zzczz
    public final void zzb(zzczs zzczsVar, String str) throws IOException {
        zza(zzczr.class, "onTaskStarted", str);
    }

    @Override // com.google.android.gms.internal.ads.zzczz
    public final void zza(zzczs zzczsVar, String str, Throwable th) throws IOException {
        zza(zzczr.class, "onTaskFailed", str, th.getClass().getSimpleName());
    }

    @Override // com.google.android.gms.internal.ads.zzczz
    public final void zzc(zzczs zzczsVar, String str) throws IOException {
        zza(zzczr.class, "onTaskSucceeded", str);
    }

    private final void zza(Class cls, String str, Object... objArr) throws IOException {
        zzcfn zzcfnVar = this.zzfuy;
        List<Object> list = this.zzdyx;
        String strValueOf = String.valueOf(cls.getSimpleName());
        zzcfnVar.zza(list, strValueOf.length() != 0 ? "Event-".concat(strValueOf) : new String("Event-"), str, objArr);
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final void zzb(zzarx zzarxVar) throws IOException {
        this.startTime = com.google.android.gms.ads.internal.zzk.zzln().elapsedRealtime();
        zza(zzbtk.class, "onAdRequest", new Object[0]);
    }
}
