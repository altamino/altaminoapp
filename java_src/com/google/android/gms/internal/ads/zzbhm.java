package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzwl;
import com.google.android.gms.internal.ads.zzwt;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@VisibleForTesting
@zzard
/* loaded from: classes2.dex */
final class zzbhm extends WebView implements ViewTreeObserver.OnGlobalLayoutListener, DownloadListener, zzbgz {
    private int maxHeight;
    private int maxWidth;
    private String zzaap;
    private final zzbai zzbtc;
    private final WindowManager zzbtf;
    private boolean zzdko;
    private int zzdlt;
    private int zzdlu;
    private String zzdlx;
    private Boolean zzdtr;
    private zzadg zzeem;
    private final zzwj zzejd;
    private final zzbim zzekn;
    private final zzdh zzeko;
    private final com.google.android.gms.ads.internal.zzj zzekp;
    private final com.google.android.gms.ads.internal.zza zzekq;
    private final float zzekr;
    private boolean zzeks;
    private boolean zzekt;
    private zzbha zzeku;
    private com.google.android.gms.ads.internal.overlay.zzd zzekv;
    private IObjectWrapper zzekw;
    private zzbin zzekx;
    private boolean zzeky;
    private boolean zzekz;
    private boolean zzela;
    private int zzelb;
    private boolean zzelc;
    private boolean zzeld;
    private zzbhq zzele;
    private boolean zzelf;
    private boolean zzelg;
    private zzadx zzelh;
    private zzadv zzeli;
    private int zzelj;
    private int zzelk;
    private zzadg zzell;
    private zzadg zzelm;
    private zzadh zzeln;
    private WeakReference<View.OnClickListener> zzelo;
    private com.google.android.gms.ads.internal.overlay.zzd zzelp;
    private boolean zzelq;
    private zzazs zzelr;
    private Map<String, zzbft> zzels;
    private final DisplayMetrics zzwb;

    static zzbhm zzb(Context context, zzbin zzbinVar, String str, boolean z, boolean z2, zzdh zzdhVar, zzbai zzbaiVar, zzadi zzadiVar, com.google.android.gms.ads.internal.zzj zzjVar, com.google.android.gms.ads.internal.zza zzaVar, zzwj zzwjVar) {
        return new zzbhm(new zzbim(context), zzbinVar, str, z, z2, zzdhVar, zzbaiVar, zzadiVar, zzjVar, zzaVar, zzwjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz, com.google.android.gms.internal.ads.zzbih
    public final View getView() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final WebView getWebView() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final boolean zzaaw() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final zzbcw zzya() {
        return null;
    }

    @VisibleForTesting
    private zzbhm(zzbim zzbimVar, zzbin zzbinVar, String str, boolean z, boolean z2, zzdh zzdhVar, zzbai zzbaiVar, zzadi zzadiVar, com.google.android.gms.ads.internal.zzj zzjVar, com.google.android.gms.ads.internal.zza zzaVar, zzwj zzwjVar) {
        super(zzbimVar);
        this.zzeks = false;
        this.zzekt = false;
        this.zzelc = true;
        this.zzeld = false;
        this.zzdlx = "";
        this.zzdlu = -1;
        this.zzdlt = -1;
        this.maxWidth = -1;
        this.maxHeight = -1;
        this.zzekn = zzbimVar;
        this.zzekx = zzbinVar;
        this.zzaap = str;
        this.zzekz = z;
        this.zzelb = -1;
        this.zzeko = zzdhVar;
        this.zzbtc = zzbaiVar;
        this.zzekp = zzjVar;
        this.zzekq = zzaVar;
        this.zzbtf = (WindowManager) getContext().getSystemService("window");
        com.google.android.gms.ads.internal.zzk.zzlg();
        this.zzwb = zzaxi.zza(this.zzbtf);
        this.zzekr = this.zzwb.density;
        this.zzejd = zzwjVar;
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setAllowFileAccess(false);
        try {
            settings.setJavaScriptEnabled(true);
        } catch (NullPointerException e) {
            zzbad.zzc("Unable to enable Javascript.", e);
        }
        settings.setSavePassword(false);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        if (Build.VERSION.SDK_INT >= 21) {
            settings.setMixedContentMode(2);
        }
        com.google.android.gms.ads.internal.zzk.zzlg().zza(zzbimVar, zzbaiVar.zzbsx, settings);
        com.google.android.gms.ads.internal.zzk.zzli().zza(getContext(), settings);
        setDownloadListener(this);
        zzabn();
        if (PlatformVersion.isAtLeastJellyBeanMR1()) {
            addJavascriptInterface(zzbht.zzc(this), "googleAdsJsInterface");
        }
        removeJavascriptInterface("accessibility");
        removeJavascriptInterface("accessibilityTraversal");
        this.zzelr = new zzazs(this.zzekn.zzyd(), this, this, null);
        zzabr();
        this.zzeln = new zzadh(new zzadi(true, "make_wv", this.zzaap));
        this.zzeln.zzqw().zzc(zzadiVar);
        this.zzeem = zzadb.zzb(this.zzeln.zzqw());
        this.zzeln.zza("native:view_create", this.zzeem);
        this.zzelm = null;
        this.zzell = null;
        com.google.android.gms.ads.internal.zzk.zzli().zzay(zzbimVar);
        com.google.android.gms.ads.internal.zzk.zzlk().zzuz();
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzbgz
    public final void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(webViewClient);
        if (webViewClient instanceof zzbha) {
            this.zzeku = (zzbha) webViewClient;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgz, com.google.android.gms.internal.ads.zzbdf
    public final com.google.android.gms.ads.internal.zza zzye() {
        return this.zzekq;
    }

    private final boolean zzabk() throws JSONException {
        int i;
        int iZzb;
        if (!this.zzeku.zzaay() && !this.zzeku.zzaaz()) {
            return false;
        }
        zzyt.zzpa();
        DisplayMetrics displayMetrics = this.zzwb;
        int iZzb2 = zzazt.zzb(displayMetrics, displayMetrics.widthPixels);
        zzyt.zzpa();
        DisplayMetrics displayMetrics2 = this.zzwb;
        int iZzb3 = zzazt.zzb(displayMetrics2, displayMetrics2.heightPixels);
        Activity activityZzyd = this.zzekn.zzyd();
        if (activityZzyd == null || activityZzyd.getWindow() == null) {
            i = iZzb2;
            iZzb = iZzb3;
        } else {
            com.google.android.gms.ads.internal.zzk.zzlg();
            int[] iArrZzd = zzaxi.zzd(activityZzyd);
            zzyt.zzpa();
            int iZzb4 = zzazt.zzb(this.zzwb, iArrZzd[0]);
            zzyt.zzpa();
            iZzb = zzazt.zzb(this.zzwb, iArrZzd[1]);
            i = iZzb4;
        }
        if (this.zzdlt == iZzb2 && this.zzdlu == iZzb3 && this.maxWidth == i && this.maxHeight == iZzb) {
            return false;
        }
        boolean z = (this.zzdlt == iZzb2 && this.zzdlu == iZzb3) ? false : true;
        this.zzdlt = iZzb2;
        this.zzdlu = iZzb3;
        this.maxWidth = i;
        this.maxHeight = iZzb;
        new zzaqb(this).zza(iZzb2, iZzb3, i, iZzb, this.zzwb.density, this.zzbtf.getDefaultDisplay().getRotation());
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(String str, Map<String, ?> map) {
        try {
            zza(str, com.google.android.gms.ads.internal.zzk.zzlg().zzi(map));
        } catch (JSONException unused) {
            zzbad.zzep("Could not convert parameters to JSON.");
        }
    }

    @Override // android.webkit.WebView
    @TargetApi(19)
    public final synchronized void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        if (isDestroyed()) {
            zzbad.zzer("#004 The webview is destroyed. Ignoring action.");
            if (valueCallback != null) {
                valueCallback.onReceiveValue(null);
            }
            return;
        }
        super.evaluateJavascript(str, valueCallback);
    }

    private final synchronized void zzfc(String str) {
        if (!isDestroyed()) {
            loadUrl(str);
        } else {
            zzbad.zzep("#004 The webview is destroyed. Ignoring action.");
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzbgz
    public final synchronized void loadUrl(String str) {
        if (!isDestroyed()) {
            try {
                super.loadUrl(str);
                return;
            } catch (Exception | IncompatibleClassChangeError | NoClassDefFoundError e) {
                com.google.android.gms.ads.internal.zzk.zzlk().zza(e, "AdWebViewImpl.loadUrl");
                zzbad.zzd("Could not call loadUrl. ", e);
                return;
            }
        }
        zzbad.zzep("#004 The webview is destroyed. Ignoring action.");
    }

    private final synchronized void zzfd(String str) {
        try {
            super.loadUrl(str);
        } catch (Exception | IncompatibleClassChangeError | NoClassDefFoundError | UnsatisfiedLinkError e) {
            com.google.android.gms.ads.internal.zzk.zzlk().zza(e, "AdWebViewImpl.loadUrlUnsafe");
            zzbad.zzd("Could not call loadUrl. ", e);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzbgz
    public final synchronized void loadData(String str, String str2, String str3) {
        if (!isDestroyed()) {
            super.loadData(str, str2, str3);
        } else {
            zzbad.zzep("#004 The webview is destroyed. Ignoring action.");
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzbgz
    public final synchronized void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        if (!isDestroyed()) {
            super.loadDataWithBaseURL(str, str2, str3, str4, str5);
        } else {
            zzbad.zzep("#004 The webview is destroyed. Ignoring action.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final synchronized void zzb(String str, String str2, String str3) {
        if (!isDestroyed()) {
            if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcok)).booleanValue()) {
                str2 = zzbid.zzf(str2, zzbid.zzabt());
            }
            super.loadDataWithBaseURL(str, str2, "text/html", C.UTF8_NAME, str3);
            return;
        }
        zzbad.zzep("#004 The webview is destroyed. Ignoring action.");
    }

    @TargetApi(19)
    private final synchronized void zza(String str, ValueCallback<String> valueCallback) {
        if (!isDestroyed()) {
            evaluateJavascript(str, null);
        } else {
            zzbad.zzep("#004 The webview is destroyed. Ignoring action.");
        }
    }

    private final void zzfe(String str) {
        if (PlatformVersion.isAtLeastKitKat()) {
            if (zzux() == null) {
                zzabl();
            }
            if (zzux().booleanValue()) {
                zza(str, (ValueCallback<String>) null);
                return;
            } else {
                String strValueOf = String.valueOf(str);
                zzfc(strValueOf.length() != 0 ? "javascript:".concat(strValueOf) : new String("javascript:"));
                return;
            }
        }
        String strValueOf2 = String.valueOf(str);
        zzfc(strValueOf2.length() != 0 ? "javascript:".concat(strValueOf2) : new String("javascript:"));
    }

    @Override // com.google.android.gms.internal.ads.zzakg
    public final void zzco(String str) {
        zzfe(str);
    }

    private final synchronized void zzabl() {
        this.zzdtr = com.google.android.gms.ads.internal.zzk.zzlk().zzux();
        if (this.zzdtr == null) {
            try {
                evaluateJavascript("(function(){})()", null);
                zza((Boolean) true);
            } catch (IllegalStateException unused) {
                zza((Boolean) false);
            }
        }
    }

    @VisibleForTesting
    private final void zza(Boolean bool) {
        synchronized (this) {
            this.zzdtr = bool;
        }
        com.google.android.gms.ads.internal.zzk.zzlk().zza(bool);
    }

    @VisibleForTesting
    private final synchronized Boolean zzux() {
        return this.zzdtr;
    }

    @Override // com.google.android.gms.internal.ads.zzakg
    public final void zzb(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String string = jSONObject.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(string).length());
        sb.append(str);
        sb.append("(");
        sb.append(string);
        sb.append(");");
        zzfe(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String string = jSONObject.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("(window.AFMA_ReceiveMessage || function() {})('");
        sb.append(str);
        sb.append("'");
        sb.append(",");
        sb.append(string);
        sb.append(");");
        String strValueOf = String.valueOf(sb.toString());
        zzbad.zzdp(strValueOf.length() != 0 ? "Dispatching AFMA event: ".concat(strValueOf) : new String("Dispatching AFMA event: "));
        zzfe(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zzaab() {
        zzabm();
        HashMap map = new HashMap(1);
        map.put("version", this.zzbtc.zzbsx);
        zza("onhide", map);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zzdi(int i) {
        if (i == 0) {
            zzadb.zza(this.zzeln.zzqw(), this.zzeem, "aebb2");
        }
        zzabm();
        if (this.zzeln.zzqw() != null) {
            this.zzeln.zzqw().zzh("close_type", String.valueOf(i));
        }
        HashMap map = new HashMap(2);
        map.put("closetype", String.valueOf(i));
        map.put("version", this.zzbtc.zzbsx);
        zza("onhide", map);
    }

    private final void zzabm() {
        zzadb.zza(this.zzeln.zzqw(), this.zzeem, "aeh2");
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zztl() {
        if (this.zzell == null) {
            zzadb.zza(this.zzeln.zzqw(), this.zzeem, "aes2");
            this.zzell = zzadb.zzb(this.zzeln.zzqw());
            this.zzeln.zza("native:view_show", this.zzell);
        }
        HashMap map = new HashMap(1);
        map.put("version", this.zzbtc.zzbsx);
        zza("onshow", map);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zzaac() {
        HashMap map = new HashMap(3);
        map.put("app_muted", String.valueOf(com.google.android.gms.ads.internal.zzk.zzll().zzpr()));
        map.put("app_volume", String.valueOf(com.google.android.gms.ads.internal.zzk.zzll().zzpq()));
        map.put("device_volume", String.valueOf(zzaya.zzba(getContext())));
        zza("volume", map);
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final void zza(boolean z, long j) {
        HashMap map = new HashMap(2);
        map.put("success", z ? IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE : "0");
        map.put("duration", Long.toString(j));
        zza("onCacheAccessComplete", map);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final synchronized com.google.android.gms.ads.internal.overlay.zzd zzaae() {
        return this.zzekv;
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final synchronized IObjectWrapper zzaam() {
        return this.zzekw;
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final synchronized com.google.android.gms.ads.internal.overlay.zzd zzaaf() {
        return this.zzelp;
    }

    @Override // com.google.android.gms.internal.ads.zzbgz, com.google.android.gms.internal.ads.zzbie
    public final synchronized zzbin zzaag() {
        return this.zzekx;
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final synchronized String zzaah() {
        return this.zzaap;
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final WebViewClient zzaaj() {
        return this.zzeku;
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final synchronized boolean zzaak() {
        return this.zzdko;
    }

    @Override // com.google.android.gms.internal.ads.zzbgz, com.google.android.gms.internal.ads.zzbif
    public final zzdh zzaal() {
        return this.zzeko;
    }

    @Override // com.google.android.gms.internal.ads.zzbgz, com.google.android.gms.internal.ads.zzbdf, com.google.android.gms.internal.ads.zzbig
    public final zzbai zzyh() {
        return this.zzbtc;
    }

    @Override // com.google.android.gms.internal.ads.zzbgz, com.google.android.gms.internal.ads.zzbhy
    public final synchronized boolean zzaan() {
        return this.zzekz;
    }

    @Override // android.webkit.DownloadListener
    public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            com.google.android.gms.ads.internal.zzk.zzlg();
            zzaxi.zza(getContext(), intent);
        } catch (ActivityNotFoundException unused) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51 + String.valueOf(str4).length());
            sb.append("Couldn't find an Activity to view url/mimetype: ");
            sb.append(str);
            sb.append(" / ");
            sb.append(str4);
            zzbad.zzdp(sb.toString());
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.zzeku.zzaaz()) {
            synchronized (this) {
                if (this.zzelh != null) {
                    this.zzelh.zzc(motionEvent);
                }
            }
        } else {
            zzdh zzdhVar = this.zzeko;
            if (zzdhVar != null) {
                zzdhVar.zza(motionEvent);
            }
        }
        if (isDestroyed()) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float axisValue = motionEvent.getAxisValue(9);
        float axisValue2 = motionEvent.getAxisValue(10);
        if (motionEvent.getActionMasked() == 8) {
            if (axisValue > 0.0f && !canScrollVertically(-1)) {
                return false;
            }
            if (axisValue < 0.0f && !canScrollVertically(1)) {
                return false;
            }
            if (axisValue2 > 0.0f && !canScrollHorizontally(-1)) {
                return false;
            }
            if (axisValue2 < 0.0f && !canScrollHorizontally(1)) {
                return false;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:94:0x0167  */
    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    @android.annotation.SuppressLint({"DrawAllocation"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final synchronized void onMeasure(int r8, int r9) {
        /*
            Method dump skipped, instructions count: 516
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbhm.onMeasure(int, int):void");
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() throws JSONException {
        boolean zZzabk = zzabk();
        com.google.android.gms.ads.internal.overlay.zzd zzdVarZzaae = zzaae();
        if (zzdVarZzaae == null || !zZzabk) {
            return;
        }
        zzdVarZzaae.zztk();
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final synchronized void zza(com.google.android.gms.ads.internal.overlay.zzd zzdVar) {
        this.zzekv = zzdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final synchronized void zzam(IObjectWrapper iObjectWrapper) {
        this.zzekw = iObjectWrapper;
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final synchronized void zzb(com.google.android.gms.ads.internal.overlay.zzd zzdVar) {
        this.zzelp = zzdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final synchronized void zza(zzbin zzbinVar) {
        this.zzekx = zzbinVar;
        requestLayout();
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final synchronized void zzaq(boolean z) {
        boolean z2 = z != this.zzekz;
        this.zzekz = z;
        zzabn();
        if (z2) {
            new zzaqb(this).zzdj(z ? "expanded" : "default");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zzaar() {
        this.zzelr.zzwt();
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    protected final synchronized void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isDestroyed()) {
            this.zzelr.onAttachedToWindow();
        }
        boolean z = this.zzelf;
        if (this.zzeku != null && this.zzeku.zzaaz()) {
            if (!this.zzelg) {
                this.zzeku.zzaba();
                this.zzeku.zzabb();
                this.zzelg = true;
            }
            zzabk();
            z = true;
        }
        zzav(z);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        synchronized (this) {
            if (!isDestroyed()) {
                this.zzelr.onDetachedFromWindow();
            }
            super.onDetachedFromWindow();
            if (this.zzelg && this.zzeku != null && this.zzeku.zzaaz() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                this.zzeku.zzaba();
                this.zzeku.zzabb();
                this.zzelg = false;
            }
        }
        zzav(false);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zzbn(Context context) {
        this.zzekn.setBaseContext(context);
        this.zzelr.zzh(this.zzekn.zzyd());
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final synchronized void zzaf(boolean z) {
        if (this.zzekv != null) {
            this.zzekv.zza(this.zzeku.zzaay(), z);
        } else {
            this.zzdko = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final synchronized void setRequestedOrientation(int i) {
        this.zzelb = i;
        if (this.zzekv != null) {
            this.zzekv.setRequestedOrientation(this.zzelb);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgz, com.google.android.gms.internal.ads.zzbdf, com.google.android.gms.internal.ads.zzbhx
    public final Activity zzyd() {
        return this.zzekn.zzyd();
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final Context zzaad() {
        return this.zzekn.zzaad();
    }

    private final synchronized void zzabn() {
        if (!this.zzekz && !this.zzekx.zzabx()) {
            if (Build.VERSION.SDK_INT < 18) {
                zzbad.zzdp("Disabling hardware acceleration on an AdView.");
                zzabo();
                return;
            } else {
                zzbad.zzdp("Enabling hardware acceleration on an AdView.");
                zzabp();
                return;
            }
        }
        zzbad.zzdp("Enabling hardware acceleration on an overlay.");
        zzabp();
    }

    private final synchronized void zzabo() {
        if (!this.zzela) {
            com.google.android.gms.ads.internal.zzk.zzli();
            setLayerType(1, null);
        }
        this.zzela = true;
    }

    private final synchronized void zzabp() {
        if (this.zzela) {
            com.google.android.gms.ads.internal.zzk.zzli();
            setLayerType(0, null);
        }
        this.zzela = false;
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzbgz
    public final synchronized void destroy() {
        zzabr();
        this.zzelr.zzwu();
        if (this.zzekv != null) {
            this.zzekv.close();
            this.zzekv.onDestroy();
            this.zzekv = null;
        }
        this.zzekw = null;
        this.zzeku.reset();
        if (this.zzeky) {
            return;
        }
        com.google.android.gms.ads.internal.zzk.zzmc();
        zzbfs.zzc(this);
        zzabq();
        this.zzeky = true;
        zzawz.zzds("Initiating WebView self destruct sequence in 3...");
        zzawz.zzds("Loading blank page in WebView, 2...");
        zzfd("about:blank");
    }

    protected final void finalize() throws Throwable {
        try {
            synchronized (this) {
                if (!this.zzeky) {
                    this.zzeku.reset();
                    com.google.android.gms.ads.internal.zzk.zzmc();
                    zzbfs.zzc(this);
                    zzabq();
                    zzva();
                }
            }
        } finally {
            super.finalize();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final synchronized void zzaao() {
        zzawz.zzds("Destroying WebView!");
        zzva();
        zzaxi.zzdvv.post(new zzbhp(this));
    }

    private final synchronized void zzva() {
        if (!this.zzelq) {
            this.zzelq = true;
            com.google.android.gms.ads.internal.zzk.zzlk().zzva();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final synchronized boolean isDestroyed() {
        return this.zzeky;
    }

    @Override // android.webkit.WebView, android.view.View
    @TargetApi(21)
    protected final void onDraw(Canvas canvas) {
        if (isDestroyed()) {
            return;
        }
        if (Build.VERSION.SDK_INT == 21 && canvas.isHardwareAccelerated() && !isAttachedToWindow()) {
            return;
        }
        super.onDraw(canvas);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zzaas() {
        if (this.zzelm == null) {
            this.zzelm = zzadb.zzb(this.zzeln.zzqw());
            this.zzeln.zza("native:view_load", this.zzelm);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzbgz
    public final void onPause() {
        if (isDestroyed()) {
            return;
        }
        try {
            super.onPause();
        } catch (Exception e) {
            zzbad.zzc("Could not pause webview.", e);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzbgz
    public final void onResume() {
        if (isDestroyed()) {
            return;
        }
        try {
            super.onResume();
        } catch (Exception e) {
            zzbad.zzc("Could not resume webview.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zzaav() {
        zzawz.zzds("Cannot add text view to inner AdWebView");
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zzat(boolean z) {
        this.zzeku.zzat(z);
    }

    @Override // android.webkit.WebView
    public final void stopLoading() {
        if (isDestroyed()) {
            return;
        }
        try {
            super.stopLoading();
        } catch (Exception e) {
            zzbad.zzc("Could not stop loading webview.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final synchronized void zzar(boolean z) {
        this.zzelc = z;
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final synchronized boolean zzaap() {
        return this.zzelc;
    }

    @Override // com.google.android.gms.ads.internal.zzj
    public final synchronized void zzlc() {
        this.zzeld = true;
        if (this.zzekp != null) {
            this.zzekp.zzlc();
        }
    }

    @Override // com.google.android.gms.ads.internal.zzj
    public final synchronized void zzld() {
        this.zzeld = false;
        if (this.zzekp != null) {
            this.zzekp.zzld();
        }
    }

    private final synchronized void zzabq() {
        if (this.zzels != null) {
            Iterator<zzbft> it = this.zzels.values().iterator();
            while (it.hasNext()) {
                it.next().release();
            }
        }
        this.zzels = null;
    }

    @Override // com.google.android.gms.internal.ads.zzbgz, com.google.android.gms.internal.ads.zzbdf
    public final synchronized void zza(String str, zzbft zzbftVar) {
        if (this.zzels == null) {
            this.zzels = new HashMap();
        }
        this.zzels.put(str, zzbftVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final synchronized zzbft zzet(String str) {
        if (this.zzels == null) {
            return null;
        }
        return this.zzels.get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final synchronized String zzyf() {
        return this.zzdlx;
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final synchronized void zzyk() {
        if (this.zzeli != null) {
            this.zzeli.zzre();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final synchronized void zza(zzadv zzadvVar) {
        this.zzeli = zzadvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final zzadg zzyc() {
        return this.zzeem;
    }

    @Override // com.google.android.gms.internal.ads.zzbgz, com.google.android.gms.internal.ads.zzbdf
    public final zzadh zzyg() {
        return this.zzeln;
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzbgz
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.zzelo = new WeakReference<>(onClickListener);
        super.setOnClickListener(onClickListener);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final synchronized void zza(zzadx zzadxVar) {
        this.zzelh = zzadxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final synchronized zzadx zzaat() {
        return this.zzelh;
    }

    @Override // com.google.android.gms.internal.ads.zzbgz, com.google.android.gms.internal.ads.zzbdf
    public final synchronized zzbhq zzyb() {
        return this.zzele;
    }

    @Override // com.google.android.gms.internal.ads.zzbgz, com.google.android.gms.internal.ads.zzbdf
    public final synchronized void zza(zzbhq zzbhqVar) {
        if (this.zzele != null) {
            zzbad.zzen("Attempt to create multiple AdWebViewVideoControllers.");
        } else {
            this.zzele = zzbhqVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final synchronized boolean zzaaq() {
        return this.zzelj > 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final synchronized void zzas(boolean z) {
        this.zzelj += z ? 1 : -1;
        if (this.zzelj <= 0 && this.zzekv != null) {
            this.zzekv.zztn();
        }
    }

    private final void zzabr() {
        zzadi zzadiVarZzqw;
        zzadh zzadhVar = this.zzeln;
        if (zzadhVar == null || (zzadiVarZzqw = zzadhVar.zzqw()) == null || com.google.android.gms.ads.internal.zzk.zzlk().zzuw() == null) {
            return;
        }
        com.google.android.gms.ads.internal.zzk.zzlk().zzuw().zza(zzadiVarZzqw);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zzaau() {
        setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final void zzao(boolean z) {
        this.zzeku.zzao(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final void zztm() {
        com.google.android.gms.ads.internal.overlay.zzd zzdVarZzaae = zzaae();
        if (zzdVarZzaae != null) {
            zzdVarZzaae.zztm();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final int zzyi() {
        return getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final int zzyj() {
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.zzbic
    public final void zza(com.google.android.gms.ads.internal.overlay.zzc zzcVar) {
        this.zzeku.zza(zzcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbic
    public final void zzc(boolean z, int i) {
        this.zzeku.zzc(z, i);
    }

    @Override // com.google.android.gms.internal.ads.zzbic
    public final void zza(boolean z, int i, String str) {
        this.zzeku.zza(z, i, str);
    }

    @Override // com.google.android.gms.internal.ads.zzbic
    public final void zza(boolean z, int i, String str, String str2) {
        this.zzeku.zza(z, i, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzue
    public final void zza(zzud zzudVar) {
        synchronized (this) {
            this.zzelf = zzudVar.zzbtk;
        }
        zzav(zzudVar.zzbtk);
    }

    private final void zzav(boolean z) {
        HashMap map = new HashMap();
        map.put("isVisible", z ? IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE : "0");
        zza("onAdVisibilityChanged", map);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zza(String str, zzaho<? super zzbgz> zzahoVar) {
        zzbha zzbhaVar = this.zzeku;
        if (zzbhaVar != null) {
            zzbhaVar.zza(str, zzahoVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zzb(String str, zzaho<? super zzbgz> zzahoVar) {
        zzbha zzbhaVar = this.zzeku;
        if (zzbhaVar != null) {
            zzbhaVar.zzb(str, zzahoVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zza(String str, Predicate<zzaho<? super zzbgz>> predicate) {
        zzbha zzbhaVar = this.zzeku;
        if (zzbhaVar != null) {
            zzbhaVar.zza(str, predicate);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final boolean zzb(final boolean z, final int i) {
        destroy();
        this.zzejd.zza(new zzwk(z, i) { // from class: com.google.android.gms.internal.ads.zzbhn
            private final int zzdwj;
            private final boolean zzelt;

            {
                this.zzelt = z;
                this.zzdwj = i;
            }

            @Override // com.google.android.gms.internal.ads.zzwk
            public final void zza(zzxn zzxnVar) {
                zzbhm.zza(this.zzelt, this.zzdwj, zzxnVar);
            }
        });
        this.zzejd.zza(zzwl.zza.zzb.ANDROID_WEBVIEW_CRASH);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final /* synthetic */ zzbii zzaai() {
        return this.zzeku;
    }

    static final /* synthetic */ void zza(boolean z, int i, zzxn zzxnVar) {
        zzwt.zzv.zza zzaVarZzop = zzwt.zzv.zzop();
        if (zzaVarZzop.zzoo() != z) {
            zzaVarZzop.zzr(z);
        }
        zzaVarZzop.zzcm(i);
        zzxnVar.zzcfn = (zzwt.zzv) zzaVarZzop.zzaya();
    }
}
