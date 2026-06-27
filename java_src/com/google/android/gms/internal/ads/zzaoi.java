package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@zzard
/* loaded from: classes2.dex */
public final class zzaoi extends zzanh {
    private final UnifiedNativeAdMapper zzdhb;

    public zzaoi(UnifiedNativeAdMapper unifiedNativeAdMapper) {
        this.zzdhb = unifiedNativeAdMapper;
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final zzaea zzrj() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final float zzsq() {
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final String getHeadline() {
        return this.zzdhb.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final List getImages() {
        List<NativeAd.Image> images = this.zzdhb.getImages();
        ArrayList arrayList = new ArrayList();
        if (images != null) {
            for (NativeAd.Image image : images) {
                arrayList.add(new zzadw(image.getDrawable(), image.getUri(), image.getScale(), image.getWidth(), image.getHeight()));
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final String getBody() {
        return this.zzdhb.getBody();
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final zzaei zzri() {
        NativeAd.Image icon = this.zzdhb.getIcon();
        if (icon != null) {
            return new zzadw(icon.getDrawable(), icon.getUri(), icon.getScale(), icon.getWidth(), icon.getHeight());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final String getCallToAction() {
        return this.zzdhb.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final String getAdvertiser() {
        return this.zzdhb.getAdvertiser();
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final double getStarRating() {
        if (this.zzdhb.getStarRating() != null) {
            return this.zzdhb.getStarRating().doubleValue();
        }
        return -1.0d;
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final String getStore() {
        return this.zzdhb.getStore();
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final String getPrice() {
        return this.zzdhb.getPrice();
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final zzaar getVideoController() {
        if (this.zzdhb.getVideoController() != null) {
            return this.zzdhb.getVideoController().zzdh();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final IObjectWrapper zzso() {
        View adChoicesContent = this.zzdhb.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return ObjectWrapper.wrap(adChoicesContent);
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final IObjectWrapper zzsp() {
        View viewZzacd = this.zzdhb.zzacd();
        if (viewZzacd == null) {
            return null;
        }
        return ObjectWrapper.wrap(viewZzacd);
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final IObjectWrapper zzrk() {
        Object objZzkv = this.zzdhb.zzkv();
        if (objZzkv == null) {
            return null;
        }
        return ObjectWrapper.wrap(objZzkv);
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final Bundle getExtras() {
        return this.zzdhb.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final boolean getOverrideImpressionRecording() {
        return this.zzdhb.getOverrideImpressionRecording();
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final boolean getOverrideClickHandling() {
        return this.zzdhb.getOverrideClickHandling();
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final void recordImpression() {
        this.zzdhb.recordImpression();
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final void zzt(IObjectWrapper iObjectWrapper) {
        this.zzdhb.handleClick((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final void zzc(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        this.zzdhb.trackViews((View) ObjectWrapper.unwrap(iObjectWrapper), (HashMap) ObjectWrapper.unwrap(iObjectWrapper2), (HashMap) ObjectWrapper.unwrap(iObjectWrapper3));
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final void zzv(IObjectWrapper iObjectWrapper) {
        this.zzdhb.untrackView((View) ObjectWrapper.unwrap(iObjectWrapper));
    }
}
