package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.net.Uri;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeoutException;

@VisibleForTesting
@zzard
/* loaded from: classes2.dex */
public final class zzbio extends zzbiz implements zzbii {
    private volatile boolean zzbsy;
    private zzxr zzcgi;
    private zzagv zzczo;
    private zzagx zzczp;
    private com.google.android.gms.ads.internal.zzb zzdaj;
    private zzapr zzdak;
    protected zzbgz zzdjm;
    private com.google.android.gms.ads.internal.overlay.zzo zzdkm;
    private com.google.android.gms.ads.internal.overlay.zzu zzdkq;
    private boolean zzdok;
    private zzbij zzejf;
    private zzbik zzejg;
    private zzbil zzejh;
    private boolean zzejj;
    private boolean zzejk;
    private zzaqa zzejl;
    private zzavb zzejm;
    private boolean zzejn;
    private boolean zzejo;
    private int zzejp;
    private View.OnAttachStateChangeListener zzejq;
    private final Object lock = new Object();
    private boolean zzeji = false;
    private final zzaju<zzbgz> zzemk = new zzaju<>();

    final void zza(zzbgz zzbgzVar, boolean z) {
        zzaqa zzaqaVar = new zzaqa(zzbgzVar, zzbgzVar.zzaad(), new zzacf(zzbgzVar.getContext()));
        this.zzdjm = zzbgzVar;
        this.zzbsy = z;
        this.zzejl = zzaqaVar;
        this.zzdak = null;
        this.zzemk.zzg((zzaju<zzbgz>) zzbgzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbii
    public final void zza(int i, int i2, boolean z) {
        this.zzejl.zzj(i, i2);
        zzapr zzaprVar = this.zzdak;
        if (zzaprVar != null) {
            zzaprVar.zza(i, i2, false);
        }
    }

    public final void zza(String str, zzaho<? super zzbgz> zzahoVar) {
        this.zzemk.zza(str, zzahoVar);
    }

    public final void zzb(String str, zzaho<? super zzbgz> zzahoVar) {
        this.zzemk.zzb(str, zzahoVar);
    }

    public final void zza(String str, Predicate<zzaho<? super zzbgz>> predicate) {
        this.zzemk.zza(str, predicate);
    }

    @Override // com.google.android.gms.internal.ads.zzbii
    public final void zza(zzxr zzxrVar, zzagv zzagvVar, com.google.android.gms.ads.internal.overlay.zzo zzoVar, zzagx zzagxVar, com.google.android.gms.ads.internal.overlay.zzu zzuVar, boolean z, zzahp zzahpVar, com.google.android.gms.ads.internal.zzb zzbVar, zzaqc zzaqcVar, zzavb zzavbVar) {
        if (zzbVar == null) {
            zzbVar = new com.google.android.gms.ads.internal.zzb(this.zzdjm.getContext(), zzavbVar, null);
        }
        this.zzdak = new zzapr(this.zzdjm, zzaqcVar);
        this.zzejm = zzavbVar;
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcov)).booleanValue()) {
            zza("/adMetadata", new zzagu(zzagvVar));
        }
        zza("/appEvent", new zzagw(zzagxVar));
        zza("/backButton", zzagz.zzczz);
        zza("/refresh", zzagz.zzdaa);
        zza("/canOpenURLs", zzagz.zzczq);
        zza("/canOpenIntents", zzagz.zzczr);
        zza("/click", zzagz.zzczs);
        zza("/close", zzagz.zzczt);
        zza("/customClose", zzagz.zzczu);
        zza("/instrument", zzagz.zzdad);
        zza("/delayPageLoaded", zzagz.zzdaf);
        zza("/delayPageClosed", zzagz.zzdag);
        zza("/getLocationInfo", zzagz.zzdah);
        zza("/httpTrack", zzagz.zzczv);
        zza("/log", zzagz.zzczw);
        zza("/mraid", new zzahr(zzbVar, this.zzdak, zzaqcVar));
        zza("/mraidLoaded", this.zzejl);
        zza("/open", new zzahs(zzbVar, this.zzdak));
        zza("/precache", new zzbgc());
        zza("/touch", zzagz.zzczy);
        zza("/video", zzagz.zzdab);
        zza("/videoMeta", zzagz.zzdac);
        if (com.google.android.gms.ads.internal.zzk.zzme().zzx(this.zzdjm.getContext())) {
            zza("/logScionEvent", new zzahq(this.zzdjm.getContext()));
        }
        this.zzcgi = zzxrVar;
        this.zzdkm = zzoVar;
        this.zzczo = zzagvVar;
        this.zzczp = zzagxVar;
        this.zzdkq = zzuVar;
        this.zzdaj = zzbVar;
        this.zzeji = z;
    }

    @Override // com.google.android.gms.internal.ads.zzbii
    public final com.google.android.gms.ads.internal.zzb zzaax() {
        return this.zzdaj;
    }

    @Override // com.google.android.gms.internal.ads.zzbii
    public final boolean zzaay() {
        return this.zzbsy;
    }

    public final boolean zzaaz() {
        boolean z;
        synchronized (this.lock) {
            z = this.zzejj;
        }
        return z;
    }

    public final ViewTreeObserver.OnGlobalLayoutListener zzaba() {
        synchronized (this.lock) {
        }
        return null;
    }

    public final ViewTreeObserver.OnScrollChangedListener zzabb() {
        synchronized (this.lock) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final void zza(zzbja zzbjaVar) {
        this.zzejn = true;
        zzbik zzbikVar = this.zzejg;
        if (zzbikVar != null) {
            zzbikVar.zzrw();
            this.zzejg = null;
        }
        zzabh();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(View view, zzavb zzavbVar, int i) {
        if (!zzavbVar.zzud() || i <= 0) {
            return;
        }
        zzavbVar.zzj(view);
        if (zzavbVar.zzud()) {
            zzaxi.zzdvv.postDelayed(new zzbiq(this, view, zzavbVar, i), 100L);
        }
    }

    private final void zzabc() {
        if (this.zzejq == null) {
            return;
        }
        this.zzdjm.getView().removeOnAttachStateChangeListener(this.zzejq);
    }

    @Override // com.google.android.gms.internal.ads.zzbii
    public final void zzabd() {
        zzavb zzavbVar = this.zzejm;
        if (zzavbVar != null) {
            WebView webView = this.zzdjm.getWebView();
            if (ViewCompat.isAttachedToWindow(webView)) {
                zza(webView, zzavbVar, 10);
                return;
            }
            zzabc();
            this.zzejq = new zzbir(this, zzavbVar);
            this.zzdjm.getView().addOnAttachStateChangeListener(this.zzejq);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbii
    public final void zzabe() {
        synchronized (this.lock) {
            this.zzejk = true;
        }
        this.zzejp++;
        zzabh();
    }

    @Override // com.google.android.gms.internal.ads.zzbii
    public final void zzabf() {
        this.zzejp--;
        zzabh();
    }

    @Override // com.google.android.gms.internal.ads.zzbii
    public final void zzabg() {
        this.zzejo = true;
        zzabh();
    }

    private final void zzabh() {
        if (this.zzejf != null && ((this.zzejn && this.zzejp <= 0) || this.zzejo)) {
            this.zzejf.zzae(!this.zzejo);
            this.zzejf = null;
        }
        this.zzdjm.zzaas();
    }

    public final void zza(com.google.android.gms.ads.internal.overlay.zzc zzcVar) {
        boolean zZzaan = this.zzdjm.zzaan();
        zza(new AdOverlayInfoParcel(zzcVar, (!zZzaan || this.zzdjm.zzaag().zzabx()) ? this.zzcgi : null, zZzaan ? null : this.zzdkm, this.zzdkq, this.zzdjm.zzyh()));
    }

    public final void zzc(boolean z, int i) {
        zzxr zzxrVar = (!this.zzdjm.zzaan() || this.zzdjm.zzaag().zzabx()) ? this.zzcgi : null;
        com.google.android.gms.ads.internal.overlay.zzo zzoVar = this.zzdkm;
        com.google.android.gms.ads.internal.overlay.zzu zzuVar = this.zzdkq;
        zzbgz zzbgzVar = this.zzdjm;
        zza(new AdOverlayInfoParcel(zzxrVar, zzoVar, zzuVar, zzbgzVar, z, i, zzbgzVar.zzyh()));
    }

    public final void zza(boolean z, int i, String str) {
        boolean zZzaan = this.zzdjm.zzaan();
        zzxr zzxrVar = (!zZzaan || this.zzdjm.zzaag().zzabx()) ? this.zzcgi : null;
        zzbis zzbisVar = zZzaan ? null : new zzbis(this.zzdjm, this.zzdkm);
        zzagv zzagvVar = this.zzczo;
        zzagx zzagxVar = this.zzczp;
        com.google.android.gms.ads.internal.overlay.zzu zzuVar = this.zzdkq;
        zzbgz zzbgzVar = this.zzdjm;
        zza(new AdOverlayInfoParcel(zzxrVar, zzbisVar, zzagvVar, zzagxVar, zzuVar, zzbgzVar, z, i, str, zzbgzVar.zzyh()));
    }

    public final void zza(boolean z, int i, String str, String str2) {
        boolean zZzaan = this.zzdjm.zzaan();
        zzxr zzxrVar = (!zZzaan || this.zzdjm.zzaag().zzabx()) ? this.zzcgi : null;
        zzbis zzbisVar = zZzaan ? null : new zzbis(this.zzdjm, this.zzdkm);
        zzagv zzagvVar = this.zzczo;
        zzagx zzagxVar = this.zzczp;
        com.google.android.gms.ads.internal.overlay.zzu zzuVar = this.zzdkq;
        zzbgz zzbgzVar = this.zzdjm;
        zza(new AdOverlayInfoParcel(zzxrVar, zzbisVar, zzagvVar, zzagxVar, zzuVar, zzbgzVar, z, i, str, str2, zzbgzVar.zzyh()));
    }

    private final void zza(AdOverlayInfoParcel adOverlayInfoParcel) {
        com.google.android.gms.ads.internal.overlay.zzc zzcVar;
        zzapr zzaprVar = this.zzdak;
        boolean zZztb = zzaprVar != null ? zzaprVar.zztb() : false;
        com.google.android.gms.ads.internal.zzk.zzlf();
        com.google.android.gms.ads.internal.overlay.zzm.zza(this.zzdjm.getContext(), adOverlayInfoParcel, !zZztb);
        if (this.zzejm != null) {
            String str = adOverlayInfoParcel.url;
            if (str == null && (zzcVar = adOverlayInfoParcel.zzdkl) != null) {
                str = zzcVar.url;
            }
            this.zzejm.zzdk(str);
        }
    }

    public final void destroy() {
        zzavb zzavbVar = this.zzejm;
        if (zzavbVar != null) {
            zzavbVar.zzuf();
            this.zzejm = null;
        }
        zzabc();
        this.zzemk.reset();
        this.zzemk.zzg((zzaju<zzbgz>) null);
        synchronized (this.lock) {
            this.zzcgi = null;
            this.zzdkm = null;
            this.zzejf = null;
            this.zzejg = null;
            this.zzczo = null;
            this.zzczp = null;
            this.zzdkq = null;
            this.zzejh = null;
            if (this.zzdak != null) {
                this.zzdak.zzw(true);
                this.zzdak = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbii
    public final void zza(zzbij zzbijVar) {
        this.zzejf = zzbijVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbii
    public final void zza(zzbik zzbikVar) {
        this.zzejg = zzbikVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final void zzb(zzbja zzbjaVar) {
        this.zzemk.zzg(zzbjaVar.uri);
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final boolean zzc(zzbja zzbjaVar) {
        String strValueOf = String.valueOf(zzbjaVar.url);
        zzawz.zzds(strValueOf.length() != 0 ? "AdWebView shouldOverrideUrlLoading: ".concat(strValueOf) : new String("AdWebView shouldOverrideUrlLoading: "));
        Uri uriZza = zzbjaVar.uri;
        if (this.zzemk.zzg(uriZza)) {
            return true;
        }
        if (this.zzeji) {
            String scheme = uriZza.getScheme();
            if ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                zzxr zzxrVar = this.zzcgi;
                if (zzxrVar != null) {
                    zzxrVar.onAdClicked();
                    zzavb zzavbVar = this.zzejm;
                    if (zzavbVar != null) {
                        zzavbVar.zzdk(zzbjaVar.url);
                    }
                    this.zzcgi = null;
                }
                return false;
            }
        }
        if (!this.zzdjm.getWebView().willNotDraw()) {
            try {
                zzdh zzdhVarZzaal = this.zzdjm.zzaal();
                if (zzdhVarZzaal != null && zzdhVarZzaal.zzc(uriZza)) {
                    uriZza = zzdhVarZzaal.zza(uriZza, this.zzdjm.getContext(), this.zzdjm.getView(), this.zzdjm.zzyd());
                }
            } catch (zzdi unused) {
                String strValueOf2 = String.valueOf(zzbjaVar.url);
                zzbad.zzep(strValueOf2.length() != 0 ? "Unable to append parameter to URL: ".concat(strValueOf2) : new String("Unable to append parameter to URL: "));
            }
            com.google.android.gms.ads.internal.zzb zzbVar = this.zzdaj;
            if (zzbVar == null || zzbVar.zzkx()) {
                zza(new com.google.android.gms.ads.internal.overlay.zzc("android.intent.action.VIEW", uriZza.toString(), null, null, null, null, null));
            } else {
                this.zzdaj.zzbk(zzbjaVar.url);
            }
        } else {
            String strValueOf3 = String.valueOf(zzbjaVar.url);
            zzbad.zzep(strValueOf3.length() != 0 ? "AdWebView unable to handle URL: ".concat(strValueOf3) : new String("AdWebView unable to handle URL: "));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final WebResourceResponse zzd(zzbja zzbjaVar) throws ExecutionException, InterruptedException, TimeoutException {
        String str;
        WebResourceResponse webResourceResponseZzd;
        zzvs zzvsVarZza;
        zzavb zzavbVar = this.zzejm;
        if (zzavbVar != null) {
            zzavbVar.zza(zzbjaVar.url, zzbjaVar.zzab, 1);
        }
        if ("mraid.js".equalsIgnoreCase(new File(zzbjaVar.url).getName())) {
            zzth();
            if (this.zzdjm.zzaag().zzabx()) {
                str = (String) zzyt.zzpe().zzd(zzacu.zzcmu);
            } else if (this.zzdjm.zzaan()) {
                str = (String) zzyt.zzpe().zzd(zzacu.zzcmt);
            } else {
                str = (String) zzyt.zzpe().zzd(zzacu.zzcms);
            }
            com.google.android.gms.ads.internal.zzk.zzlg();
            webResourceResponseZzd = zzaxi.zzd(this.zzdjm.getContext(), this.zzdjm.zzyh().zzbsx, str);
        } else {
            webResourceResponseZzd = null;
        }
        if (webResourceResponseZzd != null) {
            return webResourceResponseZzd;
        }
        try {
            if (!zzavx.zzd(zzbjaVar.url, this.zzdjm.getContext(), this.zzdok).equals(zzbjaVar.url)) {
                return zze(zzbjaVar);
            }
            zzvv zzvvVarZzbo = zzvv.zzbo(zzbjaVar.url);
            if (zzvvVarZzbo != null && (zzvsVarZza = com.google.android.gms.ads.internal.zzk.zzlm().zza(zzvvVarZzbo)) != null && zzvsVarZza.zznh()) {
                return new WebResourceResponse("", "", zzvsVarZza.zzni());
            }
            if (zzazx.isEnabled()) {
                if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcqc)).booleanValue()) {
                    return zze(zzbjaVar);
                }
            }
            return null;
        } catch (Exception | NoClassDefFoundError e) {
            com.google.android.gms.ads.internal.zzk.zzlk().zza(e, "AdWebViewClient.interceptRequest");
            return zzabi();
        }
    }

    private static WebResourceResponse zzabi() {
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcom)).booleanValue()) {
            return new WebResourceResponse("", "", new ByteArrayInputStream(new byte[0]));
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00e9, code lost:
    
        com.google.android.gms.ads.internal.zzk.zzlg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00f0, code lost:
    
        return com.google.android.gms.internal.ads.zzaxi.zzd(r3);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final android.webkit.WebResourceResponse zze(com.google.android.gms.internal.ads.zzbja r8) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbio.zze(com.google.android.gms.internal.ads.zzbja):android.webkit.WebResourceResponse");
    }

    public final void zzao(boolean z) {
        this.zzeji = z;
    }

    @Override // com.google.android.gms.internal.ads.zzbii
    public final zzavb zzabj() {
        return this.zzejm;
    }

    @Override // com.google.android.gms.internal.ads.zzbii
    public final void zzth() {
        synchronized (this.lock) {
            this.zzeji = false;
            this.zzbsy = true;
            zzbbm.zzeae.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbip
                private final zzbio zzeml;

                {
                    this.zzeml = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzbio zzbioVar = this.zzeml;
                    zzbioVar.zzdjm.zzaar();
                    com.google.android.gms.ads.internal.overlay.zzd zzdVarZzaae = zzbioVar.zzdjm.zzaae();
                    if (zzdVarZzaae != null) {
                        zzdVarZzaae.zzth();
                    }
                }
            });
        }
    }

    public final void zzat(boolean z) {
        this.zzdok = z;
    }

    @Override // com.google.android.gms.internal.ads.zzbii
    public final void zzi(int i, int i2) {
        zzapr zzaprVar = this.zzdak;
        if (zzaprVar != null) {
            zzaprVar.zzi(i, i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbii
    public final void zzau(boolean z) {
        synchronized (this.lock) {
            this.zzejj = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbii
    public final void zzh(Uri uri) {
        this.zzemk.zzh(uri);
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(26)
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return this.zzdjm.zzb(renderProcessGoneDetail.didCrash(), renderProcessGoneDetail.rendererPriorityAtExit());
    }
}
