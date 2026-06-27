package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@zzard
/* loaded from: classes2.dex */
public final class zzanq extends zzanb {
    private final NativeAppInstallAdMapper zzdgq;

    public zzanq(NativeAppInstallAdMapper nativeAppInstallAdMapper) {
        this.zzdgq = nativeAppInstallAdMapper;
    }

    @Override // com.google.android.gms.internal.ads.zzana
    public final zzaea zzrj() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzana
    public final IObjectWrapper zzrk() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzana
    public final String getHeadline() {
        return this.zzdgq.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.zzana
    public final List getImages() {
        List<NativeAd.Image> images = this.zzdgq.getImages();
        if (images == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (NativeAd.Image image : images) {
            arrayList.add(new zzadw(image.getDrawable(), image.getUri(), image.getScale(), image.getWidth(), image.getHeight()));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzana
    public final String getBody() {
        return this.zzdgq.getBody();
    }

    @Override // com.google.android.gms.internal.ads.zzana
    public final zzaei zzri() {
        NativeAd.Image icon = this.zzdgq.getIcon();
        if (icon != null) {
            return new zzadw(icon.getDrawable(), icon.getUri(), icon.getScale(), icon.getWidth(), icon.getHeight());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzana
    public final String getCallToAction() {
        return this.zzdgq.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.zzana
    public final double getStarRating() {
        return this.zzdgq.getStarRating();
    }

    @Override // com.google.android.gms.internal.ads.zzana
    public final String getStore() {
        return this.zzdgq.getStore();
    }

    @Override // com.google.android.gms.internal.ads.zzana
    public final String getPrice() {
        return this.zzdgq.getPrice();
    }

    @Override // com.google.android.gms.internal.ads.zzana
    public final void recordImpression() {
        this.zzdgq.recordImpression();
    }

    @Override // com.google.android.gms.internal.ads.zzana
    public final void zzt(IObjectWrapper iObjectWrapper) {
        this.zzdgq.handleClick((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzana
    public final void zzu(IObjectWrapper iObjectWrapper) {
        this.zzdgq.trackView((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzana
    public final void zzc(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        this.zzdgq.trackViews((View) ObjectWrapper.unwrap(iObjectWrapper), (HashMap) ObjectWrapper.unwrap(iObjectWrapper2), (HashMap) ObjectWrapper.unwrap(iObjectWrapper3));
    }

    @Override // com.google.android.gms.internal.ads.zzana
    public final void zzv(IObjectWrapper iObjectWrapper) {
        this.zzdgq.untrackView((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzana
    public final boolean getOverrideImpressionRecording() {
        return this.zzdgq.getOverrideImpressionRecording();
    }

    @Override // com.google.android.gms.internal.ads.zzana
    public final boolean getOverrideClickHandling() {
        return this.zzdgq.getOverrideClickHandling();
    }

    @Override // com.google.android.gms.internal.ads.zzana
    public final Bundle getExtras() {
        return this.zzdgq.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.zzana
    public final zzaar getVideoController() {
        if (this.zzdgq.getVideoController() != null) {
            return this.zzdgq.getVideoController().zzdh();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzana
    public final IObjectWrapper zzso() {
        View adChoicesContent = this.zzdgq.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return ObjectWrapper.wrap(adChoicesContent);
    }

    @Override // com.google.android.gms.internal.ads.zzana
    public final IObjectWrapper zzsp() {
        View viewZzacd = this.zzdgq.zzacd();
        if (viewZzacd == null) {
            return null;
        }
        return ObjectWrapper.wrap(viewZzacd);
    }
}
