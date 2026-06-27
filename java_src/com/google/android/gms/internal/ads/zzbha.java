package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.net.Uri;
import android.support.v4.view.ViewCompat;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

@VisibleForTesting
@zzard
/* loaded from: classes2.dex */
public class zzbha extends WebViewClient implements zzbii {
    private static final String[] zzejb = {"UNKNOWN", "HOST_LOOKUP", "UNSUPPORTED_AUTH_SCHEME", "AUTHENTICATION", "PROXY_AUTHENTICATION", "CONNECT", "IO", "TIMEOUT", "REDIRECT_LOOP", "UNSUPPORTED_SCHEME", "FAILED_SSL_HANDSHAKE", "BAD_URL", "FILE", "FILE_NOT_FOUND", "TOO_MANY_REQUESTS"};
    private static final String[] zzejc = {"NOT_YET_VALID", "EXPIRED", "ID_MISMATCH", "UNTRUSTED", "DATE_INVALID", "INVALID"};
    private final Object lock;
    private boolean zzbsy;
    private zzxr zzcgi;
    private zzagv zzczo;
    private zzagx zzczp;
    private com.google.android.gms.ads.internal.zzb zzdaj;
    private zzapr zzdak;
    protected zzbgz zzdjm;
    private com.google.android.gms.ads.internal.overlay.zzo zzdkm;
    private com.google.android.gms.ads.internal.overlay.zzu zzdkq;
    private boolean zzdok;
    private final zzwj zzejd;
    private final HashMap<String, List<zzaho<? super zzbgz>>> zzeje;
    private zzbij zzejf;
    private zzbik zzejg;
    private zzbil zzejh;
    private boolean zzeji;
    private boolean zzejj;
    private boolean zzejk;
    private final zzaqa zzejl;
    protected zzavb zzejm;
    private boolean zzejn;
    private boolean zzejo;
    private int zzejp;
    private View.OnAttachStateChangeListener zzejq;

    public zzbha(zzbgz zzbgzVar, zzwj zzwjVar, boolean z) {
        this(zzbgzVar, zzwjVar, z, new zzaqa(zzbgzVar, zzbgzVar.zzaad(), new zzacf(zzbgzVar.getContext())), null);
    }

    @VisibleForTesting
    private zzbha(zzbgz zzbgzVar, zzwj zzwjVar, boolean z, zzaqa zzaqaVar, zzapr zzaprVar) {
        this.zzeje = new HashMap<>();
        this.lock = new Object();
        this.zzeji = false;
        this.zzejd = zzwjVar;
        this.zzdjm = zzbgzVar;
        this.zzbsy = z;
        this.zzejl = zzaqaVar;
        this.zzdak = null;
    }

    @Override // com.google.android.gms.internal.ads.zzbii
    public final void zza(int i, int i2, boolean z) {
        this.zzejl.zzj(i, i2);
        zzapr zzaprVar = this.zzdak;
        if (zzaprVar != null) {
            zzaprVar.zza(i, i2, false);
        }
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
        boolean z;
        synchronized (this.lock) {
            z = this.zzbsy;
        }
        return z;
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

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        synchronized (this.lock) {
            if (this.zzdjm.isDestroyed()) {
                zzawz.zzds("Blank page loaded, 1...");
                this.zzdjm.zzaao();
                return;
            }
            this.zzejn = true;
            zzbik zzbikVar = this.zzejg;
            if (zzbikVar != null) {
                zzbikVar.zzrw();
                this.zzejg = null;
            }
            zzabh();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(View view, zzavb zzavbVar, int i) {
        if (!zzavbVar.zzud() || i <= 0) {
            return;
        }
        zzavbVar.zzj(view);
        if (zzavbVar.zzud()) {
            zzaxi.zzdvv.postDelayed(new zzbhc(this, view, zzavbVar, i), 100L);
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
            this.zzejq = new zzbhd(this, zzavbVar);
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
        zzbhe zzbheVar = zZzaan ? null : new zzbhe(this.zzdjm, this.zzdkm);
        zzagv zzagvVar = this.zzczo;
        zzagx zzagxVar = this.zzczp;
        com.google.android.gms.ads.internal.overlay.zzu zzuVar = this.zzdkq;
        zzbgz zzbgzVar = this.zzdjm;
        zza(new AdOverlayInfoParcel(zzxrVar, zzbheVar, zzagvVar, zzagxVar, zzuVar, zzbgzVar, z, i, str, zzbgzVar.zzyh()));
    }

    public final void zza(boolean z, int i, String str, String str2) {
        boolean zZzaan = this.zzdjm.zzaan();
        zzxr zzxrVar = (!zZzaan || this.zzdjm.zzaag().zzabx()) ? this.zzcgi : null;
        zzbhe zzbheVar = zZzaan ? null : new zzbhe(this.zzdjm, this.zzdkm);
        zzagv zzagvVar = this.zzczo;
        zzagx zzagxVar = this.zzczp;
        com.google.android.gms.ads.internal.overlay.zzu zzuVar = this.zzdkq;
        zzbgz zzbgzVar = this.zzdjm;
        zza(new AdOverlayInfoParcel(zzxrVar, zzbheVar, zzagvVar, zzagxVar, zzuVar, zzbgzVar, z, i, str, str2, zzbgzVar.zzyh()));
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

    public final void zza(String str, zzaho<? super zzbgz> zzahoVar) {
        synchronized (this.lock) {
            List<zzaho<? super zzbgz>> copyOnWriteArrayList = this.zzeje.get(str);
            if (copyOnWriteArrayList == null) {
                copyOnWriteArrayList = new CopyOnWriteArrayList<>();
                this.zzeje.put(str, copyOnWriteArrayList);
            }
            copyOnWriteArrayList.add(zzahoVar);
        }
    }

    public final void zzb(String str, zzaho<? super zzbgz> zzahoVar) {
        synchronized (this.lock) {
            List<zzaho<? super zzbgz>> list = this.zzeje.get(str);
            if (list == null) {
                return;
            }
            list.remove(zzahoVar);
        }
    }

    public final void zza(String str, Predicate<zzaho<? super zzbgz>> predicate) {
        synchronized (this.lock) {
            List<zzaho<? super zzbgz>> list = this.zzeje.get(str);
            if (list == null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (zzaho<? super zzbgz> zzahoVar : list) {
                if (predicate.apply(zzahoVar)) {
                    arrayList.add(zzahoVar);
                }
            }
            list.removeAll(arrayList);
        }
    }

    public final void reset() {
        zzavb zzavbVar = this.zzejm;
        if (zzavbVar != null) {
            zzavbVar.zzuf();
            this.zzejm = null;
        }
        zzabc();
        synchronized (this.lock) {
            this.zzeje.clear();
            this.zzcgi = null;
            this.zzdkm = null;
            this.zzejf = null;
            this.zzejg = null;
            this.zzczo = null;
            this.zzczp = null;
            this.zzeji = false;
            this.zzbsy = false;
            this.zzejj = false;
            this.zzejk = false;
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

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        String strValueOf = String.valueOf(str);
        zzawz.zzds(strValueOf.length() != 0 ? "Loading resource: ".concat(strValueOf) : new String("Loading resource: "));
        Uri uri = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(uri.getScheme()) && "mobileads.google.com".equalsIgnoreCase(uri.getHost())) {
            zzh(uri);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x000d  */
    @Override // android.webkit.WebViewClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onReceivedError(android.webkit.WebView r4, int r5, java.lang.String r6, java.lang.String r7) {
        /*
            r3 = this;
            if (r5 >= 0) goto Ld
            int r0 = -r5
            int r0 = r0 + (-1)
            java.lang.String[] r1 = com.google.android.gms.internal.ads.zzbha.zzejb
            int r2 = r1.length
            if (r0 >= r2) goto Ld
            r0 = r1[r0]
            goto L11
        Ld:
            java.lang.String r0 = java.lang.String.valueOf(r5)
        L11:
            com.google.android.gms.internal.ads.zzbgz r1 = r3.zzdjm
            android.content.Context r1 = r1.getContext()
            java.lang.String r2 = "http_err"
            r3.zze(r1, r2, r0, r7)
            super.onReceivedError(r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbha.onReceivedError(android.webkit.WebView, int, java.lang.String, java.lang.String):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0010  */
    @Override // android.webkit.WebViewClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onReceivedSslError(android.webkit.WebView r5, android.webkit.SslErrorHandler r6, android.net.http.SslError r7) {
        /*
            r4 = this;
            if (r7 == 0) goto L26
            int r0 = r7.getPrimaryError()
            if (r0 < 0) goto L10
            java.lang.String[] r1 = com.google.android.gms.internal.ads.zzbha.zzejc
            int r2 = r1.length
            if (r0 >= r2) goto L10
            r0 = r1[r0]
            goto L14
        L10:
            java.lang.String r0 = java.lang.String.valueOf(r0)
        L14:
            com.google.android.gms.internal.ads.zzbgz r1 = r4.zzdjm
            android.content.Context r1 = r1.getContext()
            com.google.android.gms.ads.internal.zzk.zzli()
            java.lang.String r2 = r7.getUrl()
            java.lang.String r3 = "ssl_err"
            r4.zze(r1, r3, r0, r2)
        L26:
            super.onReceivedSslError(r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbha.onReceivedSslError(android.webkit.WebView, android.webkit.SslErrorHandler, android.net.http.SslError):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zze(android.content.Context r8, java.lang.String r9, java.lang.String r10, java.lang.String r11) {
        /*
            r7 = this;
            com.google.android.gms.internal.ads.zzacj<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzacu.zzcqo
            com.google.android.gms.internal.ads.zzacr r1 = com.google.android.gms.internal.ads.zzyt.zzpe()
            java.lang.Object r0 = r1.zzd(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L13
            return
        L13:
            android.os.Bundle r5 = new android.os.Bundle
            r5.<init>()
            java.lang.String r0 = "err"
            r5.putString(r0, r9)
            java.lang.String r9 = "code"
            r5.putString(r9, r10)
            boolean r9 = android.text.TextUtils.isEmpty(r11)
            if (r9 != 0) goto L37
            android.net.Uri r9 = android.net.Uri.parse(r11)
            java.lang.String r10 = r9.getHost()
            if (r10 == 0) goto L37
            java.lang.String r9 = r9.getHost()
            goto L39
        L37:
            java.lang.String r9 = ""
        L39:
            java.lang.String r10 = "host"
            r5.putString(r10, r9)
            com.google.android.gms.internal.ads.zzaxi r1 = com.google.android.gms.ads.internal.zzk.zzlg()
            com.google.android.gms.internal.ads.zzbgz r9 = r7.zzdjm
            com.google.android.gms.internal.ads.zzbai r9 = r9.zzyh()
            java.lang.String r3 = r9.zzbsx
            r6 = 1
            java.lang.String r4 = "gmob-apps"
            r2 = r8
            r1.zza(r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbha.zze(android.content.Context, java.lang.String, java.lang.String, java.lang.String):void");
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) throws zzdi {
        String strValueOf = String.valueOf(str);
        zzawz.zzds(strValueOf.length() != 0 ? "AdWebView shouldOverrideUrlLoading: ".concat(strValueOf) : new String("AdWebView shouldOverrideUrlLoading: "));
        Uri uriZza = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(uriZza.getScheme()) && "mobileads.google.com".equalsIgnoreCase(uriZza.getHost())) {
            zzh(uriZza);
        } else {
            if (this.zzeji && webView == this.zzdjm.getWebView()) {
                String scheme = uriZza.getScheme();
                if ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                    zzxr zzxrVar = this.zzcgi;
                    if (zzxrVar != null) {
                        zzxrVar.onAdClicked();
                        zzavb zzavbVar = this.zzejm;
                        if (zzavbVar != null) {
                            zzavbVar.zzdk(str);
                        }
                        this.zzcgi = null;
                    }
                    return super.shouldOverrideUrlLoading(webView, str);
                }
            }
            if (!this.zzdjm.getWebView().willNotDraw()) {
                try {
                    zzdh zzdhVarZzaal = this.zzdjm.zzaal();
                    if (zzdhVarZzaal != null && zzdhVarZzaal.zzc(uriZza)) {
                        uriZza = zzdhVarZzaal.zza(uriZza, this.zzdjm.getContext(), this.zzdjm.getView(), this.zzdjm.zzyd());
                    }
                } catch (zzdi unused) {
                    String strValueOf2 = String.valueOf(str);
                    zzbad.zzep(strValueOf2.length() != 0 ? "Unable to append parameter to URL: ".concat(strValueOf2) : new String("Unable to append parameter to URL: "));
                }
                com.google.android.gms.ads.internal.zzb zzbVar = this.zzdaj;
                if (zzbVar == null || zzbVar.zzkx()) {
                    zza(new com.google.android.gms.ads.internal.overlay.zzc("android.intent.action.VIEW", uriZza.toString(), null, null, null, null, null));
                } else {
                    this.zzdaj.zzbk(str);
                }
            } else {
                String strValueOf3 = String.valueOf(str);
                zzbad.zzep(strValueOf3.length() != 0 ? "AdWebView unable to handle URL: ".concat(strValueOf3) : new String("AdWebView unable to handle URL: "));
            }
        }
        return true;
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(11)
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return zzd(str, Collections.emptyMap());
    }

    protected final WebResourceResponse zzd(String str, Map<String, String> map) {
        zzvs zzvsVarZza;
        try {
            String strZzd = zzavx.zzd(str, this.zzdjm.getContext(), this.zzdok);
            if (!strZzd.equals(str)) {
                return zze(strZzd, map);
            }
            zzvv zzvvVarZzbo = zzvv.zzbo(str);
            if (zzvvVarZzbo != null && (zzvsVarZza = com.google.android.gms.ads.internal.zzk.zzlm().zza(zzvvVarZzbo)) != null && zzvsVarZza.zznh()) {
                return new WebResourceResponse("", "", zzvsVarZza.zzni());
            }
            if (!zzazx.isEnabled()) {
                return null;
            }
            if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcqc)).booleanValue()) {
                return zze(str, map);
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

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00e5, code lost:
    
        com.google.android.gms.ads.internal.zzk.zzlg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00ec, code lost:
    
        return com.google.android.gms.internal.ads.zzaxi.zzd(r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final android.webkit.WebResourceResponse zze(java.lang.String r7, java.util.Map<java.lang.String, java.lang.String> r8) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbha.zze(java.lang.String, java.util.Map):android.webkit.WebResourceResponse");
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
            zzbbm.zzeae.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbhb
                private final zzbha zzejr;

                {
                    this.zzejr = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzbha zzbhaVar = this.zzejr;
                    zzbhaVar.zzdjm.zzaar();
                    com.google.android.gms.ads.internal.overlay.zzd zzdVarZzaae = zzbhaVar.zzdjm.zzaae();
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

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 79 || keyCode == 222) {
            return true;
        }
        switch (keyCode) {
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
                return true;
            default:
                switch (keyCode) {
                    case 126:
                    case 127:
                    case 128:
                    case 129:
                    case 130:
                        return true;
                    default:
                        return false;
                }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbii
    public final void zzh(Uri uri) {
        String path = uri.getPath();
        List<zzaho<? super zzbgz>> list = this.zzeje.get(path);
        if (list != null) {
            com.google.android.gms.ads.internal.zzk.zzlg();
            Map<String, String> mapZzi = zzaxi.zzi(uri);
            if (zzbad.isLoggable(2)) {
                String strValueOf = String.valueOf(path);
                zzawz.zzds(strValueOf.length() != 0 ? "Received GMSG: ".concat(strValueOf) : new String("Received GMSG: "));
                for (String str : mapZzi.keySet()) {
                    String str2 = mapZzi.get(str);
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 4 + String.valueOf(str2).length());
                    sb.append("  ");
                    sb.append(str);
                    sb.append(": ");
                    sb.append(str2);
                    zzawz.zzds(sb.toString());
                }
            }
            Iterator<zzaho<? super zzbgz>> it = list.iterator();
            while (it.hasNext()) {
                it.next().zza(this.zzdjm, mapZzi);
            }
            return;
        }
        String strValueOf2 = String.valueOf(uri);
        StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf2).length() + 32);
        sb2.append("No GMSG handler found for GMSG: ");
        sb2.append(strValueOf2);
        zzawz.zzds(sb2.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbii
    public final void zzau(boolean z) {
        synchronized (this.lock) {
            this.zzejj = true;
        }
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(26)
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return this.zzdjm.zzb(renderProcessGoneDetail.didCrash(), renderProcessGoneDetail.rendererPriorityAtExit());
    }
}
