package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.VideoAutoplayBehavior;
import com.facebook.ads.internal.api.NativeAdApi;
import com.facebook.ads.internal.api.NativeAdBaseApi;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.9b, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C03829b implements NativeAdApi {
    private final NativeAd A00;
    private final NativeAdBaseApi A01;

    public C03829b(NativeAd nativeAd, NativeAdBaseApi nativeAdBaseApi) {
        this.A00 = nativeAd;
        this.A01 = nativeAdBaseApi;
        L8.A0H(nativeAdBaseApi).A1H(LW.A06);
    }

    public C03829b(NativeAdBase nativeAdBase, NativeAd nativeAd, NativeAdBaseApi nativeAdBaseApi) {
        this.A00 = nativeAd;
        this.A01 = nativeAdBaseApi;
    }

    private L8 A00() {
        return L8.A0H(this.A01);
    }

    @Nullable
    public final String A01() {
        return A00().A10();
    }

    @Nullable
    public final String A02() {
        return A00().A11();
    }

    @Nullable
    public final List<NativeAd> A03() {
        C03829b c03829b = this;
        ArrayList arrayList = null;
        Iterator<L8> it = null;
        char c = c03829b.A00().A13() == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    arrayList = null;
                    c = 3;
                    break;
                case 3:
                    return arrayList;
                case 4:
                    c03829b = c03829b;
                    arrayList = new ArrayList();
                    it = c03829b.A00().A13().iterator();
                    c = 5;
                    break;
                case 5:
                    it = it;
                    if (!it.hasNext()) {
                        c = 3;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    arrayList = arrayList;
                    it = it;
                    L8 next = it.next();
                    arrayList.add(new NativeAd(next.A0o(), next));
                    c = 5;
                    break;
            }
        }
    }

    public final NativeAd.AdCreativeType getAdCreativeType() {
        C03829b c03829b = this;
        NativeAd.AdCreativeType adCreativeType = null;
        char c = !TextUtils.isEmpty(c03829b.A00().A11()) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    adCreativeType = NativeAd.AdCreativeType.VIDEO;
                    c = 3;
                    break;
                case 3:
                    return adCreativeType;
                case 4:
                    c03829b = c03829b;
                    if (c03829b.A00().A13() == null) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c03829b = c03829b;
                    if (!c03829b.A00().A13().isEmpty()) {
                        c = 6;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 6:
                    adCreativeType = NativeAd.AdCreativeType.CAROUSEL;
                    c = 3;
                    break;
                case 7:
                    c03829b = c03829b;
                    if (c03829b.A00().getAdCoverImage() == null) {
                        c = '\n';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c03829b = c03829b;
                    if (!TextUtils.isEmpty(c03829b.A00().getAdCoverImage().getUrl())) {
                        c = '\t';
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\t':
                    adCreativeType = NativeAd.AdCreativeType.IMAGE;
                    c = 3;
                    break;
                case '\n':
                    adCreativeType = NativeAd.AdCreativeType.UNKNOWN;
                    c = 3;
                    break;
            }
        }
    }

    public final VideoAutoplayBehavior getVideoAutoplayBehavior() {
        return LL.A00(A00().A0x());
    }

    public final void registerViewForInteraction(View view, MediaView mediaView) {
        registerViewForInteraction(view, mediaView, (MediaView) null);
    }

    public final void registerViewForInteraction(View view, MediaView mediaView, @Nullable ImageView imageView) {
        registerViewForInteraction(view, mediaView, imageView, (List<View>) null);
    }

    public final void registerViewForInteraction(View view, MediaView mediaView, @Nullable ImageView imageView, @Nullable List<View> list) {
        if (imageView != null) {
            L8.A0Z(A00().getAdIcon(), imageView);
        }
        registerViewForInteraction(view, mediaView, (MediaView) null, list);
    }

    public final void registerViewForInteraction(View view, MediaView mediaView, @Nullable MediaView mediaView2) {
        registerViewForInteraction(view, mediaView, mediaView2, (List<View>) null);
    }

    public final void registerViewForInteraction(View view, MediaView mediaView, @Nullable MediaView mediaView2, @Nullable List<View> list) {
        C03829b c03829b = this;
        char c = mediaView != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c03829b = c03829b;
                    mediaView = mediaView;
                    ((C9K) mediaView.getMediaViewApi()).A0H(c03829b.A00);
                    c = 3;
                    break;
                case 3:
                    mediaView2 = mediaView2;
                    if (mediaView2 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c03829b = c03829b;
                    mediaView2 = mediaView2;
                    ((C9K) mediaView2.getMediaViewApi()).A0I(c03829b.A01, false);
                    c = 5;
                    break;
                case 5:
                    list = list;
                    if (list == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c03829b = c03829b;
                    view = view;
                    mediaView = mediaView;
                    list = list;
                    c03829b.A00().A19(view, mediaView, list);
                    c = 7;
                    break;
                case 7:
                    return;
                case '\b':
                    c03829b = c03829b;
                    view = view;
                    mediaView = mediaView;
                    c03829b.A00().A18(view, mediaView);
                    c = 7;
                    break;
            }
        }
    }

    public final void registerViewForInteraction(View view, MediaView mediaView, @Nullable List<View> list) {
        registerViewForInteraction(view, mediaView, (MediaView) null, list);
    }
}
