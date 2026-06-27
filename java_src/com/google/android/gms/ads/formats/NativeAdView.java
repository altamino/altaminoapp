package com.google.android.gms.ads.formats;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzaem;
import com.google.android.gms.internal.ads.zzbad;
import com.google.android.gms.internal.ads.zzyt;

@Deprecated
/* loaded from: classes.dex */
public class NativeAdView extends FrameLayout {
    private final FrameLayout zzbqi;
    private final zzaem zzbqj;

    public NativeAdView(Context context) {
        super(context);
        this.zzbqi = zzd(context);
        this.zzbqj = zzks();
    }

    public NativeAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.zzbqi = zzd(context);
        this.zzbqj = zzks();
    }

    public NativeAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.zzbqi = zzd(context);
        this.zzbqj = zzks();
    }

    @TargetApi(21)
    public NativeAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.zzbqi = zzd(context);
        this.zzbqj = zzks();
    }

    public void setAdChoicesView(AdChoicesView adChoicesView) {
        zza(NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW, adChoicesView);
    }

    public AdChoicesView getAdChoicesView() {
        View viewZzbj = zzbj(NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW);
        if (viewZzbj instanceof AdChoicesView) {
            return (AdChoicesView) viewZzbj;
        }
        return null;
    }

    protected final void zza(String str, View view) {
        try {
            this.zzbqj.zzc(str, ObjectWrapper.wrap(view));
        } catch (RemoteException e) {
            zzbad.zzc("Unable to call setAssetView on delegate", e);
        }
    }

    protected final View zzbj(String str) {
        try {
            IObjectWrapper iObjectWrapperZzcf = this.zzbqj.zzcf(str);
            if (iObjectWrapperZzcf != null) {
                return (View) ObjectWrapper.unwrap(iObjectWrapperZzcf);
            }
            return null;
        } catch (RemoteException e) {
            zzbad.zzc("Unable to call getAssetView on delegate", e);
            return null;
        }
    }

    public void setNativeAd(NativeAd nativeAd) {
        try {
            this.zzbqj.zze((IObjectWrapper) nativeAd.zzkq());
        } catch (RemoteException e) {
            zzbad.zzc("Unable to call setNativeAd on delegate", e);
        }
    }

    public void destroy() {
        try {
            this.zzbqj.destroy();
        } catch (RemoteException e) {
            zzbad.zzc("Unable to destroy native ad view", e);
        }
    }

    private final FrameLayout zzd(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(frameLayout);
        return frameLayout;
    }

    private final zzaem zzks() {
        Preconditions.checkNotNull(this.zzbqi, "createDelegate must be called after mOverlayFrame has been created");
        if (isInEditMode()) {
            return null;
        }
        return zzyt.zzpb().zza(this.zzbqi.getContext(), this, this.zzbqi);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.zzbqi);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.zzbqi == view) {
            return;
        }
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        super.removeAllViews();
        super.addView(this.zzbqi);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void bringChildToFront(View view) {
        super.bringChildToFront(view);
        FrameLayout frameLayout = this.zzbqi;
        if (frameLayout != view) {
            super.bringChildToFront(frameLayout);
        }
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        zzaem zzaemVar = this.zzbqj;
        if (zzaemVar != null) {
            try {
                zzaemVar.zzc(ObjectWrapper.wrap(view), i);
            } catch (RemoteException e) {
                zzbad.zzc("Unable to call onVisibilityChanged on delegate", e);
            }
        }
    }
}
