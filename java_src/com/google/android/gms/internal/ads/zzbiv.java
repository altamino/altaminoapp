package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
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
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;

@VisibleForTesting
@zzard
/* loaded from: classes2.dex */
final class zzbiv extends zzbjb implements ViewTreeObserver.OnGlobalLayoutListener, DownloadListener, zzajq, zzbgz {
    private int maxHeight;
    private int maxWidth;
    private String zzaap;
    private final zzbai zzbtc;
    private final WindowManager zzbtf;
    private boolean zzdko;
    private int zzdlt;
    private int zzdlu;
    private String zzdlx;
    private zzadg zzeem;
    private final zzwj zzejd;
    private final zzbim zzekn;
    private final zzdh zzeko;
    private final com.google.android.gms.ads.internal.zzj zzekp;
    private final com.google.android.gms.ads.internal.zza zzekq;
    private com.google.android.gms.ads.internal.overlay.zzd zzekv;
    private zzbin zzekx;
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
    private zzazs zzelr;
    private Map<String, zzbft> zzels;
    private final zzbio zzemn;
    private final AtomicReference<IObjectWrapper> zzemo;
    private final DisplayMetrics zzwb;

    @VisibleForTesting
    protected zzbiv(zzbim zzbimVar, zzbio zzbioVar, zzbin zzbinVar, String str, boolean z, boolean z2, zzdh zzdhVar, zzbai zzbaiVar, zzadi zzadiVar, com.google.android.gms.ads.internal.zzj zzjVar, com.google.android.gms.ads.internal.zza zzaVar, zzwj zzwjVar) {
        super(zzbimVar, zzbioVar);
        this.zzelc = true;
        this.zzeld = false;
        this.zzdlx = "";
        this.zzemo = new AtomicReference<>();
        this.zzdlu = -1;
        this.zzdlt = -1;
        this.maxWidth = -1;
        this.maxHeight = -1;
        this.zzekn = zzbimVar;
        this.zzemn = zzbioVar;
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
        this.zzejd = zzwjVar;
        this.zzelr = new zzazs(this.zzekn.zzyd(), this, this, null);
        com.google.android.gms.ads.internal.zzk.zzlg().zza(zzbimVar, zzbaiVar.zzbsx, getSettings());
        setDownloadListener(this);
        zzabn();
        if (PlatformVersion.isAtLeastJellyBeanMR1()) {
            addJavascriptInterface(zzbht.zzc(this), "googleAdsJsInterface");
        }
        zzabr();
        this.zzeln = new zzadh(new zzadi(true, "make_wv", this.zzaap));
        this.zzeln.zzqw().zzc(zzadiVar);
        this.zzeem = zzadb.zzb(this.zzeln.zzqw());
        this.zzeln.zza("native:view_create", this.zzeem);
        this.zzelm = null;
        this.zzell = null;
        com.google.android.gms.ads.internal.zzk.zzli().zzay(zzbimVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz, com.google.android.gms.internal.ads.zzbih
    public final View getView() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final WebView getWebView() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(String str, Map map) {
        zzajr.zza(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzajq, com.google.android.gms.internal.ads.zzaji
    public final void zza(String str, JSONObject jSONObject) {
        zzajr.zzb(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbjb, com.google.android.gms.internal.ads.zzbgz
    public final void zzaao() {
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final boolean zzaaw() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzakg
    public final void zzb(String str, JSONObject jSONObject) {
        zzajr.zza(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzajq
    public final void zzi(String str, String str2) {
        zzajr.zza(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final zzbcw zzya() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbgz, com.google.android.gms.internal.ads.zzbdf
    public final com.google.android.gms.ads.internal.zza zzye() {
        return this.zzekq;
    }

    private final boolean zzabk() throws JSONException {
        int i;
        int iZzb;
        if (!this.zzemn.zzaay() && !this.zzemn.zzaaz()) {
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

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final synchronized void zzb(String str, String str2, String str3) {
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcok)).booleanValue()) {
            str2 = zzbid.zzf(str2, zzbid.zzabt());
        }
        super.loadDataWithBaseURL(str, str2, "text/html", C.UTF8_NAME, str3);
    }

    @Override // com.google.android.gms.internal.ads.zzbjb, com.google.android.gms.internal.ads.zzbiy, com.google.android.gms.internal.ads.zzajq, com.google.android.gms.internal.ads.zzakg
    public final synchronized void zzco(String str) {
        if (!isDestroyed()) {
            super.zzco(str);
        } else {
            zzbad.zzep("The webview is destroyed. Ignoring action.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zzaab() {
        zzabm();
        HashMap map = new HashMap(1);
        map.put("version", this.zzbtc.zzbsx);
        zzajr.zza(this, "onhide", map);
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
        zzajr.zza(this, "onhide", map);
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
        zzajr.zza(this, "onshow", map);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zzaac() {
        HashMap map = new HashMap(3);
        map.put("app_muted", String.valueOf(com.google.android.gms.ads.internal.zzk.zzll().zzpr()));
        map.put("app_volume", String.valueOf(com.google.android.gms.ads.internal.zzk.zzll().zzpq()));
        map.put("device_volume", String.valueOf(zzaya.zzba(getContext())));
        zzajr.zza(this, "volume", map);
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final void zza(boolean z, long j) {
        HashMap map = new HashMap(2);
        map.put("success", z ? IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE : "0");
        map.put("duration", Long.toString(j));
        zzajr.zza(this, "onCacheAccessComplete", map);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final synchronized com.google.android.gms.ads.internal.overlay.zzd zzaae() {
        return this.zzekv;
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final IObjectWrapper zzaam() {
        return this.zzemo.get();
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
        return this.zzemn;
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

    @Override // com.google.android.gms.internal.ads.zzbjb, android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.zzemn.zzaaz()) {
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

    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    @SuppressLint({"DrawAllocation"})
    protected final synchronized void onMeasure(int i, int i2) {
        int size;
        if (isDestroyed()) {
            setMeasuredDimension(0, 0);
            return;
        }
        if (!isInEditMode() && !this.zzekz && !this.zzekx.zzaby()) {
            if (this.zzekx.zzaca()) {
                super.onMeasure(i, i2);
                return;
            }
            if (this.zzekx.zzabz()) {
                if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcsk)).booleanValue()) {
                    super.onMeasure(i, i2);
                    return;
                }
                zzbhq zzbhqVarZzyb = zzyb();
                float aspectRatio = zzbhqVarZzyb != null ? zzbhqVarZzyb.getAspectRatio() : 0.0f;
                if (aspectRatio == 0.0f) {
                    super.onMeasure(i, i2);
                    return;
                }
                int size2 = View.MeasureSpec.getSize(i);
                int size3 = View.MeasureSpec.getSize(i2);
                int i3 = (int) (size3 * aspectRatio);
                int i4 = (int) (size2 / aspectRatio);
                if (size3 == 0 && i4 != 0) {
                    i3 = (int) (i4 * aspectRatio);
                    size3 = i4;
                } else if (size2 == 0 && i3 != 0) {
                    i4 = (int) (i3 / aspectRatio);
                    size2 = i3;
                }
                setMeasuredDimension(Math.min(i3, size2), Math.min(i4, size3));
                return;
            }
            if (this.zzekx.isFluid()) {
                if (!((Boolean) zzyt.zzpe().zzd(zzacu.zzcsn)).booleanValue() && PlatformVersion.isAtLeastJellyBeanMR1()) {
                    zza("/contentHeight", new zzbix(this));
                    zzco("(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = 'gmsg://mobileads.google.com/contentHeight?';  url += 'height=' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById('afma-notify-fluid');    if (!frame) {      frame = document.createElement('IFRAME');      frame.id = 'afma-notify-fluid';      frame.style.display = 'none';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();");
                    int size4 = View.MeasureSpec.getSize(i);
                    if (this.zzelk == -1) {
                        size = View.MeasureSpec.getSize(i2);
                    } else {
                        size = (int) (this.zzelk * this.zzwb.density);
                    }
                    setMeasuredDimension(size4, size);
                    return;
                }
                super.onMeasure(i, i2);
                return;
            }
            if (this.zzekx.zzabx()) {
                setMeasuredDimension(this.zzwb.widthPixels, this.zzwb.heightPixels);
                return;
            }
            int mode = View.MeasureSpec.getMode(i);
            int size5 = View.MeasureSpec.getSize(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            int size6 = View.MeasureSpec.getSize(i2);
            int i5 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size5 : Integer.MAX_VALUE;
            int i6 = (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) ? size6 : Integer.MAX_VALUE;
            boolean z = true;
            boolean z2 = this.zzekx.widthPixels > i5 || this.zzekx.heightPixels > i6;
            if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcvg)).booleanValue()) {
                if (this.zzekx.widthPixels / this.zzwb.density > i5 / this.zzwb.density || this.zzekx.heightPixels / this.zzwb.density > i6 / this.zzwb.density) {
                    z = false;
                }
                if (z2) {
                    z2 = z;
                }
            }
            if (z2) {
                int i7 = (int) (this.zzekx.widthPixels / this.zzwb.density);
                int i8 = (int) (this.zzekx.heightPixels / this.zzwb.density);
                int i9 = (int) (size5 / this.zzwb.density);
                int i10 = (int) (size6 / this.zzwb.density);
                StringBuilder sb = new StringBuilder(103);
                sb.append("Not enough space to show ad. Needs ");
                sb.append(i7);
                sb.append("x");
                sb.append(i8);
                sb.append(" dp, but only has ");
                sb.append(i9);
                sb.append("x");
                sb.append(i10);
                sb.append(" dp.");
                zzbad.zzep(sb.toString());
                if (getVisibility() != 8) {
                    setVisibility(4);
                }
                setMeasuredDimension(0, 0);
                return;
            }
            if (getVisibility() != 8) {
                setVisibility(0);
            }
            setMeasuredDimension(this.zzekx.widthPixels, this.zzekx.heightPixels);
            return;
        }
        super.onMeasure(i, i2);
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
    public final void zzam(IObjectWrapper iObjectWrapper) {
        this.zzemo.set(iObjectWrapper);
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
        if (this.zzemn != null && this.zzemn.zzaaz()) {
            if (!this.zzelg) {
                this.zzemn.zzaba();
                this.zzemn.zzabb();
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
            if (this.zzelg && this.zzemn != null && this.zzemn.zzaaz() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                this.zzemn.zzaba();
                this.zzemn.zzabb();
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
            this.zzekv.zza(this.zzemn.zzaay(), z);
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

    @Override // com.google.android.gms.internal.ads.zzbjb
    protected final synchronized void zzaw(boolean z) {
        if (!z) {
            zzabr();
            this.zzelr.zzwu();
            if (this.zzekv != null) {
                this.zzekv.close();
                this.zzekv.onDestroy();
                this.zzekv = null;
            }
            this.zzemo.set(null);
            this.zzemn.destroy();
            com.google.android.gms.ads.internal.zzk.zzmc();
            zzbfs.zzc(this);
            zzabq();
        } else {
            this.zzemo.set(null);
            this.zzemn.destroy();
            com.google.android.gms.ads.internal.zzk.zzmc();
            zzbfs.zzc(this);
            zzabq();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbjb, android.webkit.WebView, android.view.View
    @TargetApi(21)
    protected final void onDraw(Canvas canvas) {
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

    @Override // com.google.android.gms.internal.ads.zzbjb, android.webkit.WebView, com.google.android.gms.internal.ads.zzbgz
    public final void onPause() {
        try {
            super.onPause();
        } catch (Exception e) {
            zzbad.zzc("Could not pause webview.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbjb, android.webkit.WebView, com.google.android.gms.internal.ads.zzbgz
    public final void onResume() {
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
        this.zzemn.zzat(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbjb, android.webkit.WebView
    public final void stopLoading() {
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
        this.zzemn.zzao(z);
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
        this.zzemn.zza(zzcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbic
    public final void zzc(boolean z, int i) {
        this.zzemn.zzc(z, i);
    }

    @Override // com.google.android.gms.internal.ads.zzbic
    public final void zza(boolean z, int i, String str) {
        this.zzemn.zza(z, i, str);
    }

    @Override // com.google.android.gms.internal.ads.zzbic
    public final void zza(boolean z, int i, String str, String str2) {
        this.zzemn.zza(z, i, str, str2);
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
        zzajr.zza(this, "onAdVisibilityChanged", map);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zza(String str, zzaho<? super zzbgz> zzahoVar) {
        zzbio zzbioVar = this.zzemn;
        if (zzbioVar != null) {
            zzbioVar.zza(str, zzahoVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zzb(String str, zzaho<? super zzbgz> zzahoVar) {
        zzbio zzbioVar = this.zzemn;
        if (zzbioVar != null) {
            zzbioVar.zzb(str, zzahoVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zza(String str, Predicate<zzaho<? super zzbgz>> predicate) {
        zzbio zzbioVar = this.zzemn;
        if (zzbioVar != null) {
            zzbioVar.zza(str, predicate);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final boolean zzb(final boolean z, final int i) {
        destroy();
        this.zzejd.zza(new zzwk(z, i) { // from class: com.google.android.gms.internal.ads.zzbiw
            private final int zzdwj;
            private final boolean zzelt;

            {
                this.zzelt = z;
                this.zzdwj = i;
            }

            @Override // com.google.android.gms.internal.ads.zzwk
            public final void zza(zzxn zzxnVar) {
                zzbiv.zza(this.zzelt, this.zzdwj, zzxnVar);
            }
        });
        this.zzejd.zza(zzwl.zza.zzb.ANDROID_WEBVIEW_CRASH);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final /* synthetic */ zzbii zzaai() {
        return this.zzemn;
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
