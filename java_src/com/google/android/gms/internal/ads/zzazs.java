package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;

@zzard
/* loaded from: classes2.dex */
public final class zzazs {
    private final View view;
    private boolean zzbtp;
    private boolean zzbxm;
    private Activity zzdyk;
    private boolean zzdyl;
    private ViewTreeObserver.OnGlobalLayoutListener zzdym;
    private ViewTreeObserver.OnScrollChangedListener zzdyn = null;

    public zzazs(Activity activity, View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        this.zzdyk = activity;
        this.view = view;
        this.zzdym = onGlobalLayoutListener;
    }

    public final void zzh(Activity activity) {
        this.zzdyk = activity;
    }

    public final void zzwt() {
        this.zzbxm = true;
        if (this.zzbtp) {
            zzwv();
        }
    }

    public final void zzwu() {
        this.zzbxm = false;
        zzww();
    }

    public final void onAttachedToWindow() {
        this.zzbtp = true;
        if (this.zzbxm) {
            zzwv();
        }
    }

    public final void onDetachedFromWindow() {
        this.zzbtp = false;
        zzww();
    }

    private final void zzwv() {
        ViewTreeObserver viewTreeObserverZzi;
        if (this.zzdyl) {
            return;
        }
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.zzdym;
        if (onGlobalLayoutListener != null) {
            Activity activity = this.zzdyk;
            if (activity != null && (viewTreeObserverZzi = zzi(activity)) != null) {
                viewTreeObserverZzi.addOnGlobalLayoutListener(onGlobalLayoutListener);
            }
            com.google.android.gms.ads.internal.zzk.zzmd();
            zzbbz.zza(this.view, this.zzdym);
        }
        this.zzdyl = true;
    }

    private final void zzww() {
        ViewTreeObserver viewTreeObserverZzi;
        Activity activity = this.zzdyk;
        if (activity != null && this.zzdyl) {
            ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.zzdym;
            if (onGlobalLayoutListener != null && (viewTreeObserverZzi = zzi(activity)) != null) {
                com.google.android.gms.ads.internal.zzk.zzli().zza(viewTreeObserverZzi, onGlobalLayoutListener);
            }
            this.zzdyl = false;
        }
    }

    private static ViewTreeObserver zzi(Activity activity) {
        Window window;
        View decorView;
        if (activity == null || (window = activity.getWindow()) == null || (decorView = window.getDecorView()) == null) {
            return null;
        }
        return decorView.getViewTreeObserver();
    }
}
