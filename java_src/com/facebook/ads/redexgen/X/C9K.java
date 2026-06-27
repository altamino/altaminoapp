package com.facebook.ads.redexgen.X;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.facebook.ads.DefaultMediaViewVideoRenderer;
import com.facebook.ads.MediaView;
import com.facebook.ads.MediaViewListener;
import com.facebook.ads.MediaViewVideoRenderer;
import com.facebook.ads.NativeAd;
import com.facebook.ads.internal.api.AdComponentView;
import com.facebook.ads.internal.api.AdComponentViewApi;
import com.facebook.ads.internal.api.AdComponentViewParentApi;
import com.facebook.ads.internal.api.AdViewConstructorParams;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.facebook.ads.internal.api.MediaViewApi;
import com.facebook.ads.internal.api.NativeAdBaseApi;
import com.facebook.ads.internal.logging.AdEventManagerImpl;
import com.facebook.ads.internal.protocol.AdErrorType;
import io.agora.rtc.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.9K, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C9K extends C03608e implements MediaViewApi {
    private static byte[] A0C;
    private static final String A0D;
    private View A00;
    private ImageView A01;
    private MediaView A02;

    @Nullable
    private MediaViewListener A03;
    private MediaViewVideoRenderer A04;
    private C8H A05;
    private AdComponentViewParentApi A06;
    private C0805Po A07;
    private SJ A08;

    @Nullable
    private S6 A09;
    private boolean A0A;
    private boolean A0B;

    private static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        int i4 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    bArrCopyOfRange = bArrCopyOfRange;
                    if (i4 >= bArrCopyOfRange.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bArrCopyOfRange = bArrCopyOfRange;
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 123);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A05() {
        A0C = new byte[]{82, 86, 85, 97, 112, 125, 113, 122, 119, 113, 90, 113, 96, 99, 123, 102, 127, 2, 29, 16, 17, 27, 33, 6, 24, 73, 75, 90, 67, 60, 24, 20, 18, 16, 85, 7, 16, 27, 17, 16, 7, 16, 7, 85, 24, 0, 6, 1, 85, 23, 16, 85, 6, 16, 1, 85, 23, 16, 19, 26, 7, 16, 85, 27, 20, 1, 28, 3, 16, 52, 17, 91, 102, 68, 87, 74, 80, 86, 64, 73, 5, 87, 64, 75, 65, 64, 87, 64, 87, 5, 72, 80, 86, 81, 5, 71, 64, 5, 86, 64, 81, 5, 71, 64, 67, 74, 87, 64, 5, 75, 68, 81, 76, 83, 64, 100, 65, 11, 30, 57, 33, 54, 59, 62, 51, 119, 1, 62, 50, 32, 119, 52, 56, 57, 36, 35, 37, 34, 52, 35, 56, 37, 119, 39, 54, 37, 54, 58, 36, 119, 35, 46, 39, 50, 121, 101, 90, 87, 86, 92, 19, 65, 86, 93, 87, 86, 65, 86, 65, 19, 94, 70, 64, 71, 19, 81, 86, 19, 64, 86, 71, 19, 81, 86, 85, 92, 65, 86, 19, 93, 82, 71, 90, 69, 86, 114, 87, 29, 5, 42, 63, 34, 61, 46, 107, 10, 47, 107, 2, 40, 36, 37, 107, 34, 56, 107, 37, 62, 39, 39, 101, 11, 47, 35, 37, 39, 98, 48, 39, 44, 38, 39, 48, 39, 48, 98, 47, 55, 49, 54, 98, 32, 39, 98, 49, 39, 54, 98, 32, 39, 36, 45, 48, 39, 98, 44, 35, 54, 43, 52, 39, 0, 35, 44, 44, 39, 48, 3, 38, 108};
    }

    static {
        A05();
        A0D = MediaView.class.getSimpleName();
    }

    private void A03() {
        C9K c9k = this;
        char c = c9k.A0B ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    throw new IllegalStateException(A02(72, 46, 94));
                case 3:
                    c9k = c9k;
                    if (c9k.A05 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c9k = c9k;
                    OY.A0L(c9k.A07);
                    c = 5;
                    break;
                case 5:
                    C9K c9k2 = c9k;
                    float f = OY.A01;
                    int iRound = Math.round(4.0f * f);
                    int iRound2 = Math.round(12.0f * f);
                    c9k2.A07.setChildSpacing(iRound);
                    c9k2.A07.setPadding(0, iRound2, 0, iRound2);
                    c9k2.A07.setVisibility(8);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                    layoutParams.addRule(13);
                    c9k2.A02.addView(c9k2.A07, layoutParams);
                    return;
            }
        }
    }

    private void A04() {
        EnumC0759Nu.A04(this.A02, EnumC0759Nu.A0A);
        EnumC0759Nu.A04(this.A08, EnumC0759Nu.A0A);
        EnumC0759Nu.A04(this.A04, EnumC0759Nu.A0A);
        EnumC0759Nu.A04(this.A05, EnumC0759Nu.A0A);
    }

    @TargetApi(21)
    private final void A06(Context context, AttributeSet attributeSet, int i, int i2, MediaView mediaView) {
        this.A02 = mediaView;
        A0C(new ImageView(context, attributeSet, i, i2));
        A0E(new SJ(context, attributeSet, i, i2));
        this.A07 = new C0805Po(context, attributeSet, i);
        A03();
        setVideoRenderer(new DefaultMediaViewVideoRenderer(context, attributeSet, i, i2));
        A04();
    }

    private final void A07(Context context, AttributeSet attributeSet, int i, MediaView mediaView) {
        this.A02 = mediaView;
        A0C(new ImageView(context, attributeSet, i));
        A0E(new SJ(context, attributeSet, i));
        this.A07 = new C0805Po(context, attributeSet, i);
        A03();
        setVideoRenderer(new DefaultMediaViewVideoRenderer(context, attributeSet, i));
        A04();
    }

    private final void A08(Context context, AttributeSet attributeSet, MediaView mediaView) {
        this.A02 = mediaView;
        A0C(new ImageView(context, attributeSet));
        A0E(new SJ(context, attributeSet));
        this.A07 = new C0805Po(context, attributeSet);
        A03();
        setVideoRenderer(new DefaultMediaViewVideoRenderer(context, attributeSet));
        A04();
    }

    private final void A09(Context context, MediaView mediaView) {
        this.A02 = mediaView;
        A0C(new ImageView(context));
        A0E(new SJ(context));
        this.A07 = new C0805Po(context);
        A03();
        setVideoRenderer(new DefaultMediaViewVideoRenderer(context));
        A04();
    }

    private final void A0A(View view, ViewGroup.LayoutParams layoutParams) {
        A01(false);
        this.A02.addView(view, layoutParams);
        A01(true);
    }

    private void A0B(View view, L8 l8) {
        C9K c9k = this;
        String strA0z = null;
        Context context = null;
        RelativeLayout.LayoutParams layoutParams = null;
        char c = c9k.A09 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c9k = c9k;
                    c9k.A02.removeView(c9k.A09);
                    c = 3;
                    break;
                case 3:
                    l8 = l8;
                    if (!l8.A1M()) {
                        c = 4;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 4:
                    return;
                case 5:
                    c9k = c9k;
                    l8 = l8;
                    strA0z = l8.A0z();
                    context = c9k.A02.getContext();
                    if (context == null) {
                        c = 4;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c9k = c9k;
                    strA0z = strA0z;
                    context = context;
                    c9k.A09 = SA.A01(context, strA0z);
                    if (c9k.A09 == null) {
                        c = 4;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    view = view;
                    layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                    layoutParams.addRule(5, view.getId());
                    layoutParams.addRule(7, view.getId());
                    layoutParams.addRule(6, view.getId());
                    layoutParams.addRule(8, view.getId());
                    if (Build.VERSION.SDK_INT < 17) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    view = view;
                    layoutParams = layoutParams;
                    layoutParams.addRule(16, view.getId());
                    layoutParams.addRule(17, view.getId());
                    c = '\t';
                    break;
                case '\t':
                    c9k = c9k;
                    layoutParams = layoutParams;
                    c9k.A0A(c9k.A09, layoutParams);
                    c9k.A06.bringChildToFront(c9k.A09);
                    c = 4;
                    break;
            }
        }
    }

    private void A0C(ImageView imageView) {
        C9K c9k = this;
        char c = c9k.A0B ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    throw new IllegalStateException(A02(221, 49, 57));
                case 3:
                    c9k = c9k;
                    if (c9k.A01 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c9k = c9k;
                    OY.A0L(c9k.A01);
                    c = 5;
                    break;
                case 5:
                    C9K c9k2 = c9k;
                    ImageView imageView2 = imageView;
                    imageView2.setVisibility(8);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                    layoutParams.addRule(13);
                    c9k2.A02.addView(imageView2, layoutParams);
                    imageView2.setId(OY.A00());
                    c9k2.A01 = imageView2;
                    return;
            }
        }
    }

    private void A0D(final L8 l8, boolean z, L9 l9) {
        SM smA04 = new SM(this.A01).A04();
        if (z) {
            smA04.A06(new InterfaceC02072d() { // from class: com.facebook.ads.redexgen.X.9E
                @Override // com.facebook.ads.redexgen.X.InterfaceC02072d
                public final void A5P(boolean z2) {
                    l8.A1L(z2, true);
                }
            });
        }
        smA04.A07(l9.getUrl());
    }

    private void A0E(SJ sj) {
        C9K c9k = this;
        char c = c9k.A0B ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    throw new IllegalStateException(A02(29, 43, 14));
                case 3:
                    c9k = c9k;
                    if (c9k.A08 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c9k = c9k;
                    c9k.A02.removeView(c9k.A08);
                    c = 5;
                    break;
                case 5:
                    C9K c9k2 = c9k;
                    SJ sj2 = sj;
                    sj2.setVisibility(8);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                    layoutParams.addRule(13);
                    c9k2.A02.addView(sj2, layoutParams);
                    c9k2.A08 = sj2;
                    return;
            }
        }
    }

    private boolean A0F(NativeAd nativeAd) {
        Iterator<NativeAd> it = null;
        boolean z = false;
        List<NativeAd> listA03 = ((C03829b) nativeAd.getNativeAdApi()).A03();
        char c = listA03 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    z = false;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    listA03 = listA03;
                    it = listA03.iterator();
                    c = 5;
                    break;
                case 5:
                    it = it;
                    if (!it.hasNext()) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    it = it;
                    if (it.next().getAdCoverImage() != null) {
                        c = 5;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    z = false;
                    c = 3;
                    break;
                case '\b':
                    z = true;
                    c = 3;
                    break;
            }
        }
    }

    private boolean A0G(NativeAd nativeAd) {
        boolean z = false;
        char c = Build.VERSION.SDK_INT >= 14 ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    nativeAd = nativeAd;
                    if (!TextUtils.isEmpty(((C03829b) nativeAd.getNativeAdApi()).A02())) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 3:
                    z = true;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }

    public final void A0H(NativeAd nativeAd) {
        final C9K c9k = this;
        AbstractC02112h abstractC02112h = null;
        boolean z = true;
        int i = 0;
        c9k.A0B = true;
        final L8 l8A0H = L8.A0H(nativeAd.getInternalNativeAd());
        l8A0H.A1B(c9k.A02);
        c9k.A01.setVisibility(8);
        c9k.A01.setImageDrawable(null);
        char c = c9k.A0F(nativeAd) ? (char) 2 : '\t';
        while (true) {
            switch (c) {
                case 2:
                    l8A0H = l8A0H;
                    if (l8A0H.A0w() != LJ.A0B) {
                        c = '\b';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c9k = c9k;
                    i = 0;
                    c9k.A05 = c9k.A07;
                    ((C0805Po) c9k.A05).setCurrentPosition(0);
                    ((C0805Po) c9k.A05).setShowTextInCarousel(z);
                    if (!z) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c9k = c9k;
                    l8A0H = l8A0H;
                    final C0805Po c0805Po = (C0805Po) c9k.A05;
                    final List<L8> listA13 = l8A0H.A13();
                    final LI liA0v = l8A0H.A0v();
                    abstractC02112h = new AbstractC02112h(c0805Po, listA13, liA0v) { // from class: com.facebook.ads.redexgen.X.2i
                        private static byte[] A01;
                        private final LI A00;

                        static {
                            A04();
                        }

                        private static String A03(int i2, int i3, int i4) {
                            byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i2, i2 + i3);
                            int i5 = 0;
                            char c2 = 2;
                            while (true) {
                                switch (c2) {
                                    case 2:
                                        bArrCopyOfRange = bArrCopyOfRange;
                                        if (i5 >= bArrCopyOfRange.length) {
                                            c2 = 4;
                                            break;
                                        } else {
                                            c2 = 3;
                                            break;
                                        }
                                    case 3:
                                        bArrCopyOfRange = bArrCopyOfRange;
                                        bArrCopyOfRange[i5] = (byte) ((bArrCopyOfRange[i5] ^ i4) ^ 11);
                                        i5++;
                                        c2 = 2;
                                        break;
                                    case 4:
                                        return new String(bArrCopyOfRange);
                                }
                            }
                        }

                        private static void A04() {
                            A01 = new byte[]{65, 68, 67, 70, 114, 73, 72, 94, 78, 95, 68, 93, 89, 68, 66, 67, 123, 121, 116, 116, 71, 108, 119, 71, 121, 123, 108, 113, 119, 118, 46, 35, 39, 34, 42, 47, 40, 35};
                        }

                        {
                            this.A00 = liA0v == null ? new LI() : liA0v;
                        }

                        /* JADX INFO: Access modifiers changed from: private */
                        @Override // com.facebook.ads.redexgen.X.AbstractC02102g
                        /* renamed from: A00, reason: merged with bridge method [inline-methods] */
                        public final PT A0I(ViewGroup viewGroup, int i2) {
                            return new PT(new PR(viewGroup.getContext(), this.A00));
                        }

                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r4v1, types: [android.view.View, com.facebook.ads.internal.api.AdNativeComponentView, com.facebook.ads.redexgen.X.PR, java.lang.Object] */
                        @Override // com.facebook.ads.redexgen.X.AbstractC02112h, com.facebook.ads.redexgen.X.AbstractC02102g
                        /* renamed from: A0M */
                        public final void A0J(PT pt, int i2) {
                            super.A0J(pt, i2);
                            ?? r4 = (PR) pt.A0l();
                            A0K(r4.getImageCardView(), i2);
                            r4.setTitle(((AbstractC02112h) this).A01.get(i2).A12(A03(30, 8, 77)));
                            r4.setSubtitle(((AbstractC02112h) this).A01.get(i2).A12(A03(0, 16, 38)));
                            r4.setButtonText(((AbstractC02112h) this).A01.get(i2).A12(A03(16, 14, 19)));
                            L8 l8 = ((AbstractC02112h) this).A01.get(i2);
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(r4);
                            l8.A19(r4, r4, arrayList);
                        }
                    };
                    c = 5;
                    break;
                case 5:
                    c9k = c9k;
                    l8A0H = l8A0H;
                    abstractC02112h = abstractC02112h;
                    abstractC02112h.A0L(new InterfaceC02092f() { // from class: com.facebook.ads.redexgen.X.9F
                        @Override // com.facebook.ads.redexgen.X.InterfaceC02092f
                        public final void A51() {
                            l8A0H.A1L(true, true);
                        }
                    });
                    c9k.A05.setAdapter(abstractC02112h);
                    c9k.A00 = c9k.A05;
                    c9k.A08.setVisibility(8);
                    c9k.A08.setImage(null, null);
                    c9k.A04.setVisibility(8);
                    c9k.A04.unsetNativeAd();
                    ((C9Z) c9k.A04.getMediaViewVideoRendererApi()).A03();
                    c9k.bringChildToFront(c9k.A05);
                    c9k.A05.setVisibility(i);
                    c9k.A0B(c9k.A05, l8A0H);
                    c = 6;
                    break;
                case 6:
                    return;
                case 7:
                    c9k = c9k;
                    l8A0H = l8A0H;
                    final C0805Po c0805Po2 = (C0805Po) c9k.A05;
                    final List<L8> listA132 = l8A0H.A13();
                    abstractC02112h = new AbstractC02112h(c0805Po2, listA132) { // from class: com.facebook.ads.redexgen.X.2j
                        /* JADX INFO: Access modifiers changed from: private */
                        @Override // com.facebook.ads.redexgen.X.AbstractC02102g
                        /* renamed from: A00, reason: merged with bridge method [inline-methods] */
                        public final PT A0I(ViewGroup viewGroup, int i2) {
                            return new PT(new C0806Pp(viewGroup.getContext()));
                        }

                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r2v1, types: [android.view.View, com.facebook.ads.internal.api.AdNativeComponentView, com.facebook.ads.redexgen.X.Pp] */
                        @Override // com.facebook.ads.redexgen.X.AbstractC02112h, com.facebook.ads.redexgen.X.AbstractC02102g
                        /* renamed from: A0M */
                        public final void A0J(PT pt, int i2) {
                            super.A0J(pt, i2);
                            ?? r2 = (C0806Pp) pt.A0l();
                            R5 r5 = (R5) r2.getImageCardView();
                            r5.setImageDrawable(null);
                            A0K(r5, i2);
                            ((AbstractC02112h) this).A01.get(i2).A18(r2, r2);
                        }
                    };
                    c = 5;
                    break;
                case '\b':
                    i = 0;
                    z = false;
                    c = 3;
                    break;
                case '\t':
                    c9k = c9k;
                    nativeAd = nativeAd;
                    if (!c9k.A0G(nativeAd)) {
                        c = 17;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c9k = c9k;
                    l8A0H = l8A0H;
                    l8A0H.A1K(c9k.A0A);
                    c9k.A00 = ((C9Z) c9k.A04.getMediaViewVideoRendererApi()).getVideoView();
                    c9k.A08.setVisibility(8);
                    c9k.A08.setImage(null, null);
                    if (c9k.A05 == null) {
                        c = '\f';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    c9k = c9k;
                    c9k.A05.setVisibility(8);
                    c9k.A05.setAdapter(null);
                    c = '\f';
                    break;
                case '\f':
                    c9k = c9k;
                    nativeAd = nativeAd;
                    l8A0H = l8A0H;
                    i = 0;
                    c9k.bringChildToFront(c9k.A04);
                    c9k.A04.setNativeAd(nativeAd);
                    ((C9Z) c9k.A04.getMediaViewVideoRendererApi()).A04(nativeAd);
                    c9k.A04.setVisibility(0);
                    if (l8A0H.getAdCoverImage() == null) {
                        c = 14;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    c9k = c9k;
                    l8A0H = l8A0H;
                    new SM((ViewGroup) c9k.A02).A05(c9k.A02.getHeight(), c9k.A02.getWidth()).A06(new InterfaceC02072d() { // from class: com.facebook.ads.redexgen.X.9G
                        @Override // com.facebook.ads.redexgen.X.InterfaceC02072d
                        public final void A5P(boolean z2) {
                            l8A0H.A1L(z2, true);
                        }
                    }).A07(l8A0H.getAdCoverImage().getUrl());
                    c = 14;
                    break;
                case 14:
                    if (!BuildConfigApi.isDebug()) {
                        c = 16;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    nativeAd = nativeAd;
                    String str = A02(17, 9, 15) + ((C03829b) nativeAd.getNativeAdApi()).A02();
                    c = 16;
                    break;
                case 16:
                    c9k = c9k;
                    l8A0H = l8A0H;
                    c9k.A0B(c9k.A04, l8A0H);
                    c = 6;
                    break;
                case 17:
                    nativeAd = nativeAd;
                    if (nativeAd.getAdCoverImage() == null) {
                        c = 6;
                        break;
                    } else {
                        c = 18;
                        break;
                    }
                case 18:
                    c9k = c9k;
                    c9k.A00 = c9k.A08.getBodyImageView();
                    c9k.A04.setVisibility(8);
                    c9k.A04.unsetNativeAd();
                    ((C9Z) c9k.A04.getMediaViewVideoRendererApi()).A03();
                    if (c9k.A05 == null) {
                        c = 20;
                        break;
                    } else {
                        c = 19;
                        break;
                    }
                case 19:
                    c9k = c9k;
                    c9k.A05.setVisibility(8);
                    c9k.A05.setAdapter(null);
                    c = 20;
                    break;
                case 20:
                    c9k = c9k;
                    l8A0H = l8A0H;
                    i = 0;
                    c9k.bringChildToFront(c9k.A08);
                    c9k.A08.setVisibility(0);
                    new SM(c9k.A08).A05(c9k.A02.getHeight(), c9k.A02.getWidth()).A06(new InterfaceC02072d() { // from class: com.facebook.ads.redexgen.X.9H
                        @Override // com.facebook.ads.redexgen.X.InterfaceC02072d
                        public final void A5P(boolean z2) {
                            l8A0H.A1L(z2, true);
                        }
                    }).A07(l8A0H.getAdCoverImage().getUrl());
                    c9k.A0B(c9k.A08, l8A0H);
                    c = 6;
                    break;
            }
        }
    }

    public final void A0I(NativeAdBaseApi nativeAdBaseApi, boolean z) {
        final C9K c9k = this;
        Bitmap bitmapA0M = null;
        L9 l9A0t = null;
        LA laA0u = null;
        c9k.A0B = true;
        final L8 l8A0H = L8.A0H(nativeAdBaseApi);
        l8A0H.A1A(c9k.A02);
        c9k.A08.setVisibility(8);
        c9k.A08.setImage(null, null);
        c9k.A04.setVisibility(8);
        c9k.A04.unsetNativeAd();
        ((C9Z) c9k.A04.getMediaViewVideoRendererApi()).A03();
        char c = c9k.A05 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c9k = c9k;
                    c9k.A05.setVisibility(8);
                    c9k.A05.setAdapter(null);
                    c = 3;
                    break;
                case 3:
                    c9k = c9k;
                    l8A0H = l8A0H;
                    c9k.A01.setVisibility(0);
                    c9k.bringChildToFront(c9k.A01);
                    c9k.A00 = c9k.A01;
                    l9A0t = l8A0H.getAdIcon();
                    if (l9A0t == null) {
                        c = '\t';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    l8A0H = l8A0H;
                    l9A0t = l9A0t;
                    bitmapA0M = l8A0H.A0q().A0M(l9A0t.getUrl());
                    if (bitmapA0M == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c9k = c9k;
                    bitmapA0M = bitmapA0M;
                    c9k.A01.setImageBitmap(bitmapA0M);
                    if (!z) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c9k = c9k;
                    l8A0H = l8A0H;
                    c9k.A02.post(new AnonymousClass27() { // from class: com.facebook.ads.redexgen.X.9D
                        @Override // com.facebook.ads.redexgen.X.AnonymousClass27
                        public final void A03() {
                            l8A0H.A1L(true, true);
                        }
                    });
                    c = 7;
                    break;
                case 7:
                    C9K c9k2 = c9k;
                    c9k2.A0B(c9k2.A01, l8A0H);
                    return;
                case '\b':
                    c9k = c9k;
                    l8A0H = l8A0H;
                    l9A0t = l9A0t;
                    c9k.A0D(l8A0H, z, l9A0t);
                    c = 7;
                    break;
                case '\t':
                    l8A0H = l8A0H;
                    laA0u = l8A0H.A0u();
                    if (laA0u == null) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    laA0u = laA0u;
                    laA0u.A5G(LQ.A01(AdErrorType.NATIVE_AD_IS_NOT_LOADED));
                    c = 11;
                    break;
                case 11:
                    nativeAdBaseApi = nativeAdBaseApi;
                    Log.e(A02(0, 17, 111), AdErrorType.NATIVE_AD_IS_NOT_LOADED.getDefaultErrorMessage());
                    if (!nativeAdBaseApi.isAdLoaded()) {
                        c = 7;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    c9k = c9k;
                    P7.A07(c9k.A02.getContext(), A02(26, 3, 81), P8.A0K, new PA(A02(198, 23, 48)));
                    c = 7;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C03608e
    public final void bringChildToFront(View view) {
        C9K c9k = this;
        char c = view != c9k.A05 ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c9k = c9k;
                    view = view;
                    if (view == c9k.A04) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c9k = c9k;
                    view = view;
                    if (view == c9k.A08) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c9k = c9k;
                    view = view;
                    if (view != c9k.A01) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c9k = c9k;
                    view = view;
                    c9k.A06.bringChildToFront(view);
                    if (c9k.A09 == null) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c9k = c9k;
                    c9k.A06.bringChildToFront(c9k.A09);
                    c = 7;
                    break;
                case 7:
                    return;
            }
        }
    }

    public final void destroy() {
        this.A04.pause(false);
        this.A04.getMediaViewVideoRendererApi().destroy();
    }

    public final AdComponentViewApi getAdComponentViewApi() {
        return this;
    }

    public final View getAdContentsView() {
        return this.A00;
    }

    public final int getMediaHeight() {
        C9K c9k = this;
        int imageHeight = 0;
        char c = c9k.A08.getVisibility() == 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c9k = c9k;
                    imageHeight = c9k.A08.getImageHeight();
                    c = 3;
                    break;
                case 3:
                    return imageHeight;
                case 4:
                    c9k = c9k;
                    if (c9k.A04.getVisibility() != 0) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c9k = c9k;
                    imageHeight = c9k.A04.getMediaViewVideoRendererApi().getVideoView().getHeight();
                    c = 3;
                    break;
                case 6:
                    imageHeight = 0;
                    c = 3;
                    break;
            }
        }
    }

    public final int getMediaWidth() {
        C9K c9k = this;
        int imageWidth = 0;
        char c = c9k.A08.getVisibility() == 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c9k = c9k;
                    imageWidth = c9k.A08.getImageWidth();
                    c = 3;
                    break;
                case 3:
                    return imageWidth;
                case 4:
                    c9k = c9k;
                    if (c9k.A04.getVisibility() != 0) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c9k = c9k;
                    imageWidth = c9k.A04.getMediaViewVideoRendererApi().getVideoView().getWidth();
                    c = 3;
                    break;
                case 6:
                    imageWidth = 0;
                    c = 3;
                    break;
            }
        }
    }

    public final void initialize(AdViewConstructorParams adViewConstructorParams, MediaView mediaView) {
        char c;
        MediaView mediaView2 = mediaView;
        C9K c9k = this;
        switch (adViewConstructorParams.getInitializationType()) {
            case 0:
                c = 6;
                break;
            case 1:
                c = 5;
                break;
            case 2:
                c = 4;
                break;
            case 3:
                c = 3;
                break;
            default:
                c = 2;
                break;
        }
        while (true) {
            switch (c) {
                case 2:
                    throw new IllegalArgumentException(A02(118, 37, 44));
                case 3:
                    c9k = c9k;
                    adViewConstructorParams = adViewConstructorParams;
                    mediaView2 = mediaView2;
                    c9k.A06(adViewConstructorParams.getContext(), adViewConstructorParams.getAttributeSet(), adViewConstructorParams.getDefStyleAttr(), adViewConstructorParams.getDefStyleRes(), mediaView2);
                    c = 7;
                    break;
                case 4:
                    c9k = c9k;
                    adViewConstructorParams = adViewConstructorParams;
                    mediaView2 = mediaView2;
                    c9k.A07(adViewConstructorParams.getContext(), adViewConstructorParams.getAttributeSet(), adViewConstructorParams.getDefStyleAttr(), mediaView2);
                    c = 7;
                    break;
                case 5:
                    c9k = c9k;
                    adViewConstructorParams = adViewConstructorParams;
                    mediaView2 = mediaView2;
                    c9k.A08(adViewConstructorParams.getContext(), adViewConstructorParams.getAttributeSet(), mediaView2);
                    c = 7;
                    break;
                case 6:
                    c9k = c9k;
                    adViewConstructorParams = adViewConstructorParams;
                    mediaView2 = mediaView2;
                    c9k.A09(adViewConstructorParams.getContext(), mediaView2);
                    c = 7;
                    break;
                case 7:
                    c9k.A01(true);
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C03608e
    public final void onAttachedToView(AdComponentView adComponentView, AdComponentViewParentApi adComponentViewParentApi) {
        super.onAttachedToView(adComponentView, adComponentViewParentApi);
        this.A06 = adComponentViewParentApi;
    }

    public final void setListener(final MediaViewListener mediaViewListener) {
        final C9K c9k = this;
        c9k.A03 = mediaViewListener;
        char c = mediaViewListener == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c9k = c9k;
                    ((C9Z) c9k.A04.getMediaViewVideoRendererApi()).A07(null);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c9k = c9k;
                    mediaViewListener = mediaViewListener;
                    ((C9Z) c9k.A04.getMediaViewVideoRendererApi()).A07(new C9I() { // from class: com.facebook.ads.redexgen.X.9J
                        @Override // com.facebook.ads.redexgen.X.C9I
                        public final void A54() {
                            mediaViewListener.onComplete(this.A01.A02);
                        }

                        @Override // com.facebook.ads.redexgen.X.C9I
                        public final void A5E() {
                            mediaViewListener.onEnterFullscreen(this.A01.A02);
                        }

                        @Override // com.facebook.ads.redexgen.X.C9I
                        public final void A5K() {
                            mediaViewListener.onExitFullscreen(this.A01.A02);
                        }

                        @Override // com.facebook.ads.redexgen.X.C9I
                        public final void A5M() {
                            mediaViewListener.onFullscreenBackground(this.A01.A02);
                        }

                        @Override // com.facebook.ads.redexgen.X.C9I
                        public final void A5N() {
                            mediaViewListener.onFullscreenForeground(this.A01.A02);
                        }

                        @Override // com.facebook.ads.redexgen.X.C9I
                        public final void A5z() {
                            mediaViewListener.onPlay(this.A01.A02);
                        }

                        @Override // com.facebook.ads.redexgen.X.C9I
                        public final void A6O() {
                            mediaViewListener.onVolumeChange(this.A01.A02, this.A01.A04.getVolume());
                        }

                        @Override // com.facebook.ads.redexgen.X.C9I
                        public final void onPause() {
                            mediaViewListener.onPause(this.A01.A02);
                        }
                    });
                    c = 3;
                    break;
            }
        }
    }

    public final void setVideoRenderer(MediaViewVideoRenderer mediaViewVideoRenderer) {
        C9K c9k = this;
        boolean z = false;
        char c = c9k.A0B ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    throw new IllegalStateException(A02(Constants.ERR_PUBLISH_STREAM_NOT_FOUND, 43, 72));
                case 3:
                    c9k = c9k;
                    if (c9k.A04 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c9k = c9k;
                    c9k.A02.removeView(c9k.A04);
                    c9k.A04.getMediaViewVideoRendererApi().destroy();
                    c = 5;
                    break;
                case 5:
                    c9k = c9k;
                    mediaViewVideoRenderer = mediaViewVideoRenderer;
                    ((C9Z) mediaViewVideoRenderer.getMediaViewVideoRendererApi()).A05(AdEventManagerImpl.getInstance(c9k.A02.getContext()));
                    mediaViewVideoRenderer.setVisibility(8);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                    layoutParams.addRule(13);
                    ((C9K) c9k.A02.getMediaViewApi()).A0A(mediaViewVideoRenderer, layoutParams);
                    c9k.A04 = mediaViewVideoRenderer;
                    if (!(c9k.A04 instanceof DefaultMediaViewVideoRenderer)) {
                        c = 6;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case 6:
                    z = true;
                    c = 7;
                    break;
                case 7:
                    c9k.A0A = z;
                    mediaViewVideoRenderer.setId(OY.A00());
                    return;
                case '\b':
                    z = false;
                    c = 7;
                    break;
            }
        }
    }
}
