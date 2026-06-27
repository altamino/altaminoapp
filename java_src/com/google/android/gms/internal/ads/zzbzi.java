package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.ads.formats.UnifiedNativeAdAssetNames;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

@zzard
/* loaded from: classes2.dex */
public final class zzbzi extends zzaes implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, zzcab {
    private final WeakReference<View> zzfpf;
    private final Map<String, WeakReference<View>> zzfpg = new HashMap();
    private final Map<String, WeakReference<View>> zzfph = new HashMap();
    private final Map<String, WeakReference<View>> zzfpi = new HashMap();
    private zzbyn zzfpj;
    private zzua zzfpk;

    public zzbzi(View view, HashMap<String, View> map, HashMap<String, View> map2) {
        view.setOnTouchListener(this);
        view.setOnClickListener(this);
        com.google.android.gms.ads.internal.zzk.zzmd();
        zzbbz.zza(view, (ViewTreeObserver.OnGlobalLayoutListener) this);
        com.google.android.gms.ads.internal.zzk.zzmd();
        zzbbz.zza(view, (ViewTreeObserver.OnScrollChangedListener) this);
        this.zzfpf = new WeakReference<>(view);
        for (Map.Entry<String, View> entry : map.entrySet()) {
            String key = entry.getKey();
            View value = entry.getValue();
            if (value != null) {
                this.zzfpg.put(key, new WeakReference<>(value));
                if (!NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW.equals(key) && !UnifiedNativeAdAssetNames.ASSET_ADCHOICES_CONTAINER_VIEW.equals(key)) {
                    value.setOnTouchListener(this);
                    value.setClickable(true);
                    value.setOnClickListener(this);
                }
            }
        }
        this.zzfpi.putAll(this.zzfpg);
        for (Map.Entry<String, View> entry2 : map2.entrySet()) {
            View value2 = entry2.getValue();
            if (value2 != null) {
                this.zzfph.put(entry2.getKey(), new WeakReference<>(value2));
                value2.setOnTouchListener(this);
                value2.setClickable(false);
            }
        }
        this.zzfpi.putAll(this.zzfph);
        this.zzfpk = new zzua(view.getContext(), view);
    }

    @Override // com.google.android.gms.internal.ads.zzcab
    public final FrameLayout zzair() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final synchronized void unregisterNativeAd() {
        if (this.zzfpj != null) {
            this.zzfpj.zzb(this);
            this.zzfpj = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final synchronized void zze(IObjectWrapper iObjectWrapper) {
        Object objUnwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if (!(objUnwrap instanceof zzbyn)) {
            zzbad.zzep("Not an instance of InternalNativeAd. This is most likely a transient error");
            return;
        }
        if (this.zzfpj != null) {
            this.zzfpj.zzb(this);
        }
        if (((zzbyn) objUnwrap).zzahs()) {
            this.zzfpj = (zzbyn) objUnwrap;
            this.zzfpj.zza(this);
            this.zzfpj.zzy(zzafi());
            return;
        }
        zzbad.zzen("Your account must be enabled to use this feature. Talk to your account manager to request this feature for your account.");
    }

    @Override // com.google.android.gms.internal.ads.zzcab
    public final View zzafi() {
        return this.zzfpf.get();
    }

    @Override // com.google.android.gms.internal.ads.zzcab
    public final zzua zzais() {
        return this.zzfpk;
    }

    @Override // com.google.android.gms.internal.ads.zzcab
    public final synchronized void zza(String str, View view, boolean z) {
        if (view == null) {
            this.zzfpi.remove(str);
            this.zzfpg.remove(str);
            this.zzfph.remove(str);
            return;
        }
        this.zzfpi.put(str, new WeakReference<>(view));
        if (!NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW.equals(str) && !UnifiedNativeAdAssetNames.ASSET_ADCHOICES_CONTAINER_VIEW.equals(str)) {
            this.zzfpg.put(str, new WeakReference<>(view));
            view.setClickable(true);
            view.setOnClickListener(this);
            view.setOnTouchListener(this);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcab
    public final synchronized Map<String, WeakReference<View>> zzait() {
        return this.zzfpi;
    }

    @Override // com.google.android.gms.internal.ads.zzcab
    public final synchronized Map<String, WeakReference<View>> zzaiu() {
        return this.zzfpg;
    }

    @Override // com.google.android.gms.internal.ads.zzcab
    public final synchronized Map<String, WeakReference<View>> zzaiv() {
        return this.zzfph;
    }

    @Override // com.google.android.gms.internal.ads.zzcab
    public final synchronized View zzfp(String str) {
        WeakReference<View> weakReference = this.zzfpi.get(str);
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Override // com.google.android.gms.internal.ads.zzcab
    public final synchronized String zzaiw() {
        return NativeContentAd.ASSET_ATTRIBUTION_ICON_IMAGE;
    }

    @Override // android.view.View.OnTouchListener
    public final synchronized boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.zzfpj != null) {
            this.zzfpj.zza(view, motionEvent, zzafi());
        }
        return false;
    }

    @Override // android.view.View.OnClickListener
    public final synchronized void onClick(View view) {
        if (this.zzfpj != null) {
            this.zzfpj.zza(view, zzafi(), zzait(), zzaiu(), true);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final synchronized void onGlobalLayout() {
        if (this.zzfpj != null) {
            this.zzfpj.zzb(zzafi(), zzait(), zzaiu(), zzbyn.zzx(zzafi()));
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final synchronized void onScrollChanged() {
        if (this.zzfpj != null) {
            this.zzfpj.zzb(zzafi(), zzait(), zzaiu(), zzbyn.zzx(zzafi()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final synchronized void zzi(IObjectWrapper iObjectWrapper) {
        if (this.zzfpj != null) {
            Object objUnwrap = ObjectWrapper.unwrap(iObjectWrapper);
            if (!(objUnwrap instanceof View)) {
                zzbad.zzep("Calling NativeAdViewHolderNonagonDelegate.setClickConfirmingView with wrong wrapped object");
            }
            this.zzfpj.setClickConfirmingView((View) objUnwrap);
        }
    }
}
