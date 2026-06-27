package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.RelativeLayout;
import com.facebook.ads.AdError;
import com.facebook.ads.InstreamVideoAdListener;
import com.facebook.ads.InstreamVideoAdView;
import com.facebook.ads.internal.api.InstreamVideoAdViewApi;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.2R, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C2R implements C2L {
    private static byte[] A06;

    @Nullable
    private View A00;

    @Nullable
    private InstreamVideoAdListener A01;

    @Nullable
    private String A02;
    private final Context A03;
    private final InstreamVideoAdView A04;
    private final InstreamVideoAdViewApi A05;

    static {
        A03();
    }

    private static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 9);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A06 = new byte[]{104, 74, 69, 69, 68, 95, 11, 91, 89, 78, 88, 78, 69, 95, 11, 69, 94, 71, 71, 11, 93, 66, 78, 92};
    }

    public C2R(InstreamVideoAdViewApi instreamVideoAdViewApi, InstreamVideoAdListener instreamVideoAdListener, InstreamVideoAdView instreamVideoAdView, View view, Context context, String str) {
        this.A05 = instreamVideoAdViewApi;
        this.A01 = instreamVideoAdListener;
        this.A04 = instreamVideoAdView;
        this.A00 = view;
        this.A03 = context;
        this.A02 = str;
    }

    private void A04(InstreamVideoAdView instreamVideoAdView) {
        S6 s6A01 = SA.A01(this.A03, this.A02);
        if (s6A01 != null) {
            instreamVideoAdView.addView(s6A01, new RelativeLayout.LayoutParams(-1, -1));
        }
    }

    @Override // com.facebook.ads.redexgen.X.C2L
    public final void A5S(AnonymousClass23 anonymousClass23) {
        MD.A00(new C2M() { // from class: com.facebook.ads.redexgen.X.2P
            @Override // com.facebook.ads.redexgen.X.C2M
            public final void A01() {
                if (this.A00.A01 == null) {
                    return;
                }
                this.A00.A01.onAdClicked(this.A00.A04);
            }
        });
    }

    @Override // com.facebook.ads.redexgen.X.C2L
    public final void A5T(AnonymousClass23 anonymousClass23) {
        this.A05.setIsAdLoaded(true);
        MD.A00(new C2M() { // from class: com.facebook.ads.redexgen.X.2N
            @Override // com.facebook.ads.redexgen.X.C2M
            public final void A01() {
                if (this.A00.A01 == null) {
                    return;
                }
                this.A00.A01.onAdLoaded(this.A00.A04);
            }
        });
    }

    @Override // com.facebook.ads.redexgen.X.C2L
    public final void A5U(AnonymousClass23 anonymousClass23) {
    }

    @Override // com.facebook.ads.redexgen.X.C2L
    public final void A5V(AnonymousClass23 anonymousClass23) {
        MD.A00(new C2M() { // from class: com.facebook.ads.redexgen.X.2Q
            @Override // com.facebook.ads.redexgen.X.C2M
            public final void A01() {
                if (this.A00.A01 == null) {
                    return;
                }
                this.A00.A01.onAdVideoComplete(this.A00.A04);
            }
        });
    }

    @Override // com.facebook.ads.redexgen.X.C2L
    public final void A5W(AnonymousClass23 anonymousClass23, View view) {
        if (view == null) {
            throw new IllegalStateException(A02(0, 24, 34));
        }
        this.A00 = view;
        this.A04.removeAllViews();
        this.A00.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.A04.addView(this.A00);
        A04(this.A04);
    }

    @Override // com.facebook.ads.redexgen.X.C2L
    public final void A5X(AnonymousClass23 anonymousClass23, final AdError adError) {
        MD.A00(new C2M() { // from class: com.facebook.ads.redexgen.X.2O
            @Override // com.facebook.ads.redexgen.X.C2M
            public final void A01() {
                if (this.A01.A01 == null) {
                    return;
                }
                this.A01.A01.onError(this.A01.A04, adError);
            }
        });
    }
}
