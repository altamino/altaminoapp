package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.ads.formats.UnifiedNativeAdAssetNames;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzbzj extends zzaen implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, zzcab {
    public static final String[] zzfpm = {NativeAppInstallAd.ASSET_MEDIA_VIDEO, NativeContentAd.ASSET_MEDIA_VIDEO, UnifiedNativeAdAssetNames.ASSET_MEDIA_VIDEO};
    private FrameLayout zzbqi;
    private zzbyn zzfpj;
    private zzua zzfpk;
    private final String zzfpl;
    private FrameLayout zzfpo;
    private zzbbl zzfpp;
    private View zzfpq;
    private Map<String, WeakReference<View>> zzfpn = new HashMap();
    private boolean zzeky = false;

    public zzbzj(FrameLayout frameLayout, FrameLayout frameLayout2) {
        String str;
        this.zzfpo = frameLayout;
        this.zzbqi = frameLayout2;
        String canonicalName = frameLayout.getClass().getCanonicalName();
        if ("com.google.android.gms.ads.formats.NativeContentAdView".equals(canonicalName)) {
            str = NativeContentAd.ASSET_ATTRIBUTION_ICON_IMAGE;
        } else if ("com.google.android.gms.ads.formats.NativeAppInstallAdView".equals(canonicalName)) {
            str = NativeAppInstallAd.ASSET_ATTRIBUTION_ICON_IMAGE;
        } else {
            "com.google.android.gms.ads.formats.UnifiedNativeAdView".equals(canonicalName);
            str = "3012";
        }
        this.zzfpl = str;
        com.google.android.gms.ads.internal.zzk.zzmd();
        zzbbz.zza((View) frameLayout, (ViewTreeObserver.OnGlobalLayoutListener) this);
        com.google.android.gms.ads.internal.zzk.zzmd();
        zzbbz.zza((View) frameLayout, (ViewTreeObserver.OnScrollChangedListener) this);
        this.zzfpp = zzbbm.zzeag;
        this.zzfpk = new zzua(this.zzfpo.getContext(), this.zzfpo);
        frameLayout.setOnTouchListener(this);
        frameLayout.setOnClickListener(this);
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final synchronized void zzc(String str, IObjectWrapper iObjectWrapper) {
        zza(str, (View) ObjectWrapper.unwrap(iObjectWrapper), true);
    }

    @Override // com.google.android.gms.internal.ads.zzcab
    public final synchronized void zza(String str, View view, boolean z) {
        if (this.zzeky) {
            return;
        }
        if (view == null) {
            this.zzfpn.remove(str);
            return;
        }
        this.zzfpn.put(str, new WeakReference<>(view));
        if (!NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW.equals(str) && !UnifiedNativeAdAssetNames.ASSET_ADCHOICES_CONTAINER_VIEW.equals(str)) {
            view.setOnTouchListener(this);
            view.setClickable(true);
            view.setOnClickListener(this);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final synchronized IObjectWrapper zzcf(String str) {
        return ObjectWrapper.wrap(zzfp(str));
    }

    @Override // com.google.android.gms.internal.ads.zzcab
    public final synchronized View zzfp(String str) {
        if (this.zzeky) {
            return null;
        }
        WeakReference<View> weakReference = this.zzfpn.get(str);
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final synchronized void zze(IObjectWrapper iObjectWrapper) {
        if (this.zzeky) {
            return;
        }
        Object objUnwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if (!(objUnwrap instanceof zzbyn)) {
            zzbad.zzep("Not an instance of native engine. This is most likely a transient error");
            return;
        }
        if (this.zzfpj != null) {
            this.zzfpj.zzb(this);
        }
        zzaix();
        this.zzfpj = (zzbyn) objUnwrap;
        this.zzfpj.zza(this);
        this.zzfpj.zzy(this.zzfpo);
    }

    private final synchronized void zzaix() {
        this.zzfpp.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbzk
            private final zzbzj zzfpr;

            {
                this.zzfpr = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzfpr.zzaiy();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final synchronized void destroy() {
        if (this.zzeky) {
            return;
        }
        if (this.zzfpj != null) {
            this.zzfpj.zzb(this);
            this.zzfpj = null;
        }
        this.zzfpn.clear();
        this.zzfpo.removeAllViews();
        this.zzbqi.removeAllViews();
        this.zzfpn = null;
        this.zzfpo = null;
        this.zzbqi = null;
        this.zzfpq = null;
        this.zzfpk = null;
        this.zzeky = true;
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final synchronized void zzc(IObjectWrapper iObjectWrapper, int i) {
    }

    @Override // android.view.View.OnClickListener
    public final synchronized void onClick(View view) {
        if (this.zzfpj != null) {
            this.zzfpj.cancelUnconfirmedClick();
            this.zzfpj.zza(view, this.zzfpo, zzait(), zzaiu(), false);
        }
    }

    @Override // android.view.View.OnTouchListener
    public final synchronized boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.zzfpj != null) {
            this.zzfpj.zza(view, motionEvent, this.zzfpo);
        }
        return false;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final synchronized void onGlobalLayout() {
        if (this.zzfpj != null) {
            this.zzfpj.zzb(this.zzfpo, zzait(), zzaiu(), zzbyn.zzx(this.zzfpo));
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final synchronized void onScrollChanged() {
        if (this.zzfpj != null) {
            this.zzfpj.zzb(this.zzfpo, zzait(), zzaiu(), zzbyn.zzx(this.zzfpo));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcab
    public final synchronized Map<String, WeakReference<View>> zzait() {
        return this.zzfpn;
    }

    @Override // com.google.android.gms.internal.ads.zzcab
    public final synchronized Map<String, WeakReference<View>> zzaiu() {
        return this.zzfpn;
    }

    @Override // com.google.android.gms.internal.ads.zzcab
    public final synchronized Map<String, WeakReference<View>> zzaiv() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcab
    public final synchronized String zzaiw() {
        return this.zzfpl;
    }

    @Override // com.google.android.gms.internal.ads.zzcab
    public final FrameLayout zzair() {
        return this.zzbqi;
    }

    @Override // com.google.android.gms.internal.ads.zzcab
    public final zzua zzais() {
        return this.zzfpk;
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final synchronized void zzi(IObjectWrapper iObjectWrapper) {
        this.zzfpj.setClickConfirmingView((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzcab
    public final /* synthetic */ View zzafi() {
        return this.zzfpo;
    }

    final /* synthetic */ void zzaiy() {
        if (this.zzfpq == null) {
            this.zzfpq = new View(this.zzfpo.getContext());
            this.zzfpq.setLayoutParams(new FrameLayout.LayoutParams(-1, 0));
        }
        if (this.zzfpo != this.zzfpq.getParent()) {
            this.zzfpo.addView(this.zzfpq);
        }
    }
}
