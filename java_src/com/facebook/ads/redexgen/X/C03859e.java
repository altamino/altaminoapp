package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.res.Resources;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdScrollView;
import com.facebook.ads.NativeAdView;
import com.facebook.ads.NativeAdViewAttributes;
import com.facebook.ads.NativeAdsManager;
import com.facebook.ads.internal.api.NativeAdScrollViewApi;
import com.tonyodev.fetch.FetchConst;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.9e, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C03859e implements NativeAdScrollViewApi {
    private static byte[] A07;
    private final int A00;
    private final Context A01;

    @Nullable
    private final NativeAdScrollView.AdViewProvider A02;

    @Nullable
    private final NativeAdView.Type A03;
    private final NativeAdViewAttributes A04;
    private final NativeAdsManager A05;
    private final C03849d A06;

    static {
        A07();
    }

    private static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_UNKNOWN);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A07() {
        A07 = new byte[]{31, 50, 69, 58, 71, 54, 18, 53, 68, 30, 50, 63, 50, 56, 54, 67, -15, 63, 64, 69, -15, 61, 64, 50, 53, 54, 53, -65, -25, -27, -26, -110, -30, -28, -31, -24, -37, -42, -41, -110, -45, -110, -64, -45, -26, -37, -24, -41, -77, -42, -56, -37, -41, -23, -96, -58, -21, -30, -41, -98, -110, -77, -42, -56, -37, -41, -23, -62, -28, -31, -24, -37, -42, -41, -28, -110, -31, -28, -110, -45, -110, -32, -45, -26, -37, -24, -41, -77, -42, -56, -37, -41, -23, -70, -41, -37, -39, -38, -26, -74, -30};
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.facebook.ads.redexgen.X.9d] */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.facebook.ads.redexgen.X.5U, com.facebook.ads.redexgen.X.9c] */
    public C03859e(NativeAdScrollView nativeAdScrollView, Context context, NativeAdsManager nativeAdsManager, @Nullable NativeAdScrollView.AdViewProvider adViewProvider, int i, @Nullable NativeAdView.Type type, NativeAdViewAttributes nativeAdViewAttributes, int i2) {
        if (!nativeAdsManager.isLoaded()) {
            throw new IllegalStateException(A06(0, 27, 108));
        }
        if (type == null && adViewProvider == null && i <= 0) {
            throw new IllegalArgumentException(A06(27, 74, 13));
        }
        this.A01 = context;
        this.A05 = nativeAdsManager;
        this.A04 = nativeAdViewAttributes;
        this.A02 = adViewProvider;
        this.A03 = type;
        this.A00 = i2;
        ?? r3 = new C5U() { // from class: com.facebook.ads.redexgen.X.9c
            private List<NativeAd> A00 = new ArrayList();

            @Override // com.facebook.ads.redexgen.X.C5U
            public final int A08() {
                return this.A00.size();
            }

            @Override // com.facebook.ads.redexgen.X.C5U
            public final int A09(Object obj) {
                int iIndexOf = this.A00.indexOf(obj);
                if (iIndexOf >= 0) {
                    return iIndexOf;
                }
                return -2;
            }

            @Override // com.facebook.ads.redexgen.X.C5U
            public final Object A0B(ViewGroup viewGroup, int i3) {
                C03839c c03839c = this;
                View viewCreateView = null;
                char c = c03839c.A01.A02 != null ? (char) 2 : (char) 4;
                while (true) {
                    switch (c) {
                        case 2:
                            c03839c = c03839c;
                            viewCreateView = c03839c.A01.A02.createView(c03839c.A00.get(i3), i3);
                            c = 3;
                            break;
                        case 3:
                            View view = viewCreateView;
                            viewGroup.addView(view);
                            return view;
                        case 4:
                            c03839c = c03839c;
                            if (c03839c.A01.A03 == null) {
                                c = 6;
                                break;
                            } else {
                                c = 5;
                                break;
                            }
                        case 5:
                            c03839c = c03839c;
                            viewCreateView = NativeAdView.render(c03839c.A01.A01, c03839c.A00.get(i3), c03839c.A01.A03, c03839c.A01.A04);
                            c = 3;
                            break;
                        case 6:
                            c03839c = c03839c;
                            viewCreateView = NativeAdView.render(c03839c.A01.A01, c03839c.A00.get(i3), c03839c.A01.A04);
                            c = 3;
                            break;
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.C5U
            public final void A0H(ViewGroup viewGroup, int i3, Object obj) {
                C03839c c03839c = this;
                char c = i3 < c03839c.A00.size() ? (char) 2 : (char) 4;
                while (true) {
                    switch (c) {
                        case 2:
                            c03839c = c03839c;
                            if (c03839c.A01.A02 == null) {
                                c = 5;
                                break;
                            } else {
                                c = 3;
                                break;
                            }
                        case 3:
                            c03839c = c03839c;
                            obj = obj;
                            c03839c.A01.A02.destroyView(c03839c.A00.get(i3), (View) obj);
                            c = 4;
                            break;
                        case 4:
                            viewGroup.removeView((View) obj);
                            return;
                        case 5:
                            c03839c = c03839c;
                            c03839c.A00.get(i3).unregisterView();
                            c = 4;
                            break;
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.C5U
            public final boolean A0J(View view, Object obj) {
                boolean z = false;
                char c = view == obj ? (char) 2 : (char) 4;
                while (true) {
                    switch (c) {
                        case 2:
                            z = true;
                            c = 3;
                            break;
                        case 3:
                            return z;
                        case 4:
                            z = false;
                            c = 3;
                            break;
                    }
                }
            }

            public final void A0K() {
                C03839c c03839c = this;
                c03839c.A00.clear();
                int iMin = Math.min(c03839c.A01.A00, c03839c.A01.A05.getUniqueNativeAdCount());
                int i3 = 0;
                int numAds = 2;
                while (true) {
                    switch (numAds) {
                        case 2:
                            if (i3 >= iMin) {
                                numAds = 4;
                                break;
                            } else {
                                numAds = 3;
                                break;
                            }
                        case 3:
                            c03839c = c03839c;
                            NativeAd nativeAdNextNativeAd = c03839c.A01.A05.nextNativeAd();
                            L8.A0H(nativeAdNextNativeAd.getInternalNativeAd()).A1J(true);
                            c03839c.A00.add(nativeAdNextNativeAd);
                            i3++;
                            numAds = 2;
                            break;
                        case 4:
                            c03839c.A0C();
                            return;
                    }
                }
            }
        };
        this.A06 = new C6A(context) { // from class: com.facebook.ads.redexgen.X.9d
            private int A00 = 0;

            /* JADX INFO: Access modifiers changed from: private */
            public void A00(int i3) {
                this.A00 = i3;
            }

            @Override // com.facebook.ads.redexgen.X.C6A, android.view.View
            public final void onMeasure(int i3, int i4) throws Resources.NotFoundException {
                C03849d c03849d = this;
                int measuredHeight = 0;
                int i5 = c03849d.A00;
                int i6 = 0;
                int i7 = 2;
                while (true) {
                    switch (i7) {
                        case 2:
                            c03849d = c03849d;
                            int i8 = c03849d.getChildCount();
                            if (i6 >= i8) {
                                i7 = 6;
                                break;
                            } else {
                                i7 = 3;
                                break;
                            }
                        case 3:
                            c03849d = c03849d;
                            View childAt = c03849d.getChildAt(i6);
                            childAt.measure(i3, View.MeasureSpec.makeMeasureSpec(0, 0));
                            measuredHeight = childAt.getMeasuredHeight();
                            if (measuredHeight <= i5) {
                                i7 = 5;
                                break;
                            } else {
                                i7 = 4;
                                break;
                            }
                        case 4:
                            i5 = measuredHeight;
                            i7 = 5;
                            break;
                        case 5:
                            i6++;
                            i7 = 2;
                            break;
                        case 6:
                            C03849d child = c03849d;
                            int i9 = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
                            super.onMeasure(i3, i9);
                            return;
                    }
                }
            }
        };
        if (this.A03 != null) {
            A00((int) (OY.A01 * this.A03.getHeight()));
        } else if (i > 0) {
            A00(((int) OY.A01) * i);
        }
        setAdapter(r3);
        setInset(20);
        r3.A0K();
        nativeAdScrollView.addView(this.A06);
    }

    public final void setInset(int insetDp) {
        if (insetDp > 0) {
            float f = OY.A01;
            int iRound = Math.round(insetDp * f);
            setPadding(iRound, 0, iRound, 0);
            setPageMargin(Math.round((insetDp / 2) * f));
            setClipToPadding(false);
        }
    }
}
