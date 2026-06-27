package com.facebook.ads.redexgen.X;

import com.facebook.ads.NativeAd;
import com.facebook.ads.internal.api.MediaViewVideoRendererApi;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Km, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0677Km implements InterfaceC0676Kl {
    public final /* synthetic */ MediaViewVideoRendererApi A00;
    public final /* synthetic */ C0684Ku A01;

    public C0677Km(C0684Ku c0684Ku, MediaViewVideoRendererApi mediaViewVideoRendererApi) {
        this.A01 = c0684Ku;
        this.A00 = mediaViewVideoRendererApi;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0676Kl
    public final void A70() {
        this.A00.setVolume(1.0f);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0676Kl
    public final void A72(NativeAd nativeAd) {
        this.A01.A0I(L8.A0H(nativeAd.getInternalNativeAd()), new C0683Kt(L8.A0H(nativeAd.getInternalNativeAd())));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0676Kl
    public final void A7E() {
        this.A01.A0D();
    }
}
