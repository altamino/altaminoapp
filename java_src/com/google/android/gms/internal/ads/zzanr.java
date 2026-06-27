package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.NativeContentAdMapper;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@zzard
/* loaded from: classes2.dex */
public final class zzanr extends zzane {
    private final NativeContentAdMapper zzdgr;

    public zzanr(NativeContentAdMapper nativeContentAdMapper) {
        this.zzdgr = nativeContentAdMapper;
    }

    @Override // com.google.android.gms.internal.ads.zzand
    public final zzaea zzrj() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzand
    public final IObjectWrapper zzrk() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzand
    public final String getHeadline() {
        return this.zzdgr.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.zzand
    public final List getImages() {
        List<NativeAd.Image> images = this.zzdgr.getImages();
        if (images == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (NativeAd.Image image : images) {
            arrayList.add(new zzadw(image.getDrawable(), image.getUri(), image.getScale(), image.getWidth(), image.getHeight()));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzand
    public final String getBody() {
        return this.zzdgr.getBody();
    }

    @Override // com.google.android.gms.internal.ads.zzand
    public final zzaei zzrl() {
        NativeAd.Image logo = this.zzdgr.getLogo();
        if (logo != null) {
            return new zzadw(logo.getDrawable(), logo.getUri(), logo.getScale(), logo.getWidth(), logo.getHeight());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzand
    public final String getCallToAction() {
        return this.zzdgr.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.zzand
    public final String getAdvertiser() {
        return this.zzdgr.getAdvertiser();
    }

    @Override // com.google.android.gms.internal.ads.zzand
    public final void recordImpression() {
        this.zzdgr.recordImpression();
    }

    @Override // com.google.android.gms.internal.ads.zzand
    public final void zzt(IObjectWrapper iObjectWrapper) {
        this.zzdgr.handleClick((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzand
    public final void zzu(IObjectWrapper iObjectWrapper) {
        this.zzdgr.trackView((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzand
    public final void zzc(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        this.zzdgr.trackViews((View) ObjectWrapper.unwrap(iObjectWrapper), (HashMap) ObjectWrapper.unwrap(iObjectWrapper2), (HashMap) ObjectWrapper.unwrap(iObjectWrapper3));
    }

    @Override // com.google.android.gms.internal.ads.zzand
    public final void zzv(IObjectWrapper iObjectWrapper) {
        this.zzdgr.untrackView((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzand
    public final boolean getOverrideImpressionRecording() {
        return this.zzdgr.getOverrideImpressionRecording();
    }

    @Override // com.google.android.gms.internal.ads.zzand
    public final boolean getOverrideClickHandling() {
        return this.zzdgr.getOverrideClickHandling();
    }

    @Override // com.google.android.gms.internal.ads.zzand
    public final Bundle getExtras() {
        return this.zzdgr.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.zzand
    public final IObjectWrapper zzso() {
        View adChoicesContent = this.zzdgr.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return ObjectWrapper.wrap(adChoicesContent);
    }

    @Override // com.google.android.gms.internal.ads.zzand
    public final zzaar getVideoController() {
        if (this.zzdgr.getVideoController() != null) {
            return this.zzdgr.getVideoController().zzdh();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzand
    public final IObjectWrapper zzsp() {
        View viewZzacd = this.zzdgr.zzacd();
        if (viewZzacd == null) {
            return null;
        }
        return ObjectWrapper.wrap(viewZzacd);
    }
}
