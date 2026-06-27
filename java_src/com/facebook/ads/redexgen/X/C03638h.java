package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.support.annotation.Nullable;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdSize;
import com.facebook.ads.AdView;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.internal.api.AdViewApi;
import com.facebook.ads.internal.api.AdViewParentApi;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.protocol.AdPlacementType;
import java.util.Arrays;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.8h, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C03638h implements AdViewApi {
    private static byte[] A0B;

    @Nullable
    private View A00;

    @Nullable
    private AdListener A01;

    @Nullable
    private C02303a A02;
    private SL A03;

    @Nullable
    private String A04;

    @Nullable
    private String A05;
    private final DisplayMetrics A06;
    private final AdView A07;
    private final AdViewParentApi A08;
    private final LV A09;
    private final String A0A;

    static {
        A02();
    }

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 113);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A0B = new byte[]{98, 65, 78, 78, 69, 82, 0, 65, 68, 0, 68, 69, 83, 84, 82, 79, 89, 69, 68, 43, 40, 38, 35, 6, 35, 1, 53, 40, 42, 5, 46, 35, 37, 36, 37, 40, 38, 117, 34, 41, 57, 109, 106, 110, 60, 110, 62, 60, 50, 49, 63, 58, 31, 58, 80, 81, 71, 64, 70, 91, 77, 48, 19, 28, 28, 23, 0, 82, 19, 22, 82, 30, 29, 19, 22, 82, 0, 23, 3, 7, 23, 1, 6, 23, 22, 124, 94, 81, 81, 80, 75, 31, 89, 86, 81, 91, 31, 94, 31, 75, 90, 82, 79, 83, 94, 75, 90, 31, 75, 87, 94, 75, 31, 83, 80, 94, 91, 31, 93, 86, 91, 31, 24, 26, 76, 24, 95, 8, 90, 94, 12, 12, 86, 92, 47, 42, 29, 39, 52, 43, 96, 97, 48, 53, 100, 48, 96};
    }

    @SuppressLint({"ConstructorMayLeakThis"})
    public C03638h(Context context, String str, AdSize adSize, AdViewParentApi adViewParentApi, AdView adView) {
        if (adSize == null || adSize == AdSize.INTERSTITIAL) {
            throw new IllegalArgumentException(A01(134, 6, 63));
        }
        this.A06 = adView.getContext().getResources().getDisplayMetrics();
        this.A09 = LV.A02(adSize);
        this.A0A = str;
        this.A08 = adViewParentApi;
        this.A07 = adView;
        C3V c3v = new C3V(str, LY.A02(this.A09), AdPlacementType.BANNER, LV.A02(adSize), 1);
        c3v.A06(this.A04);
        c3v.A07(this.A05);
        this.A02 = new C02303a(context, c3v);
        this.A02.A0E(new C04069z(this));
    }

    @SuppressLint({"ConstructorMayLeakThis"})
    public C03638h(Context context, String str, String str2, AdViewParentApi adViewParentApi, AdView adView) throws LR {
        this(context, str, A00(str2), adViewParentApi, adView);
    }

    private static AdSize A00(String str) throws LR {
        LW lwA00 = C0691Lb.A00(str);
        if (lwA00 == null) {
            throw new LR(AdErrorType.BID_PAYLOAD_ERROR, String.format(Locale.US, A01(85, 41, 78), str));
        }
        C0691Lb.A03(lwA00);
        return LY.A00(lwA00);
    }

    private void A03(@Nullable String str) {
        if (this.A02 != null) {
            this.A02.A0G(str);
        }
    }

    public final DisplayMetrics A04() {
        return this.A06;
    }

    @Nullable
    public final AdListener A05() {
        return this.A01;
    }

    public final AdView A06() {
        return this.A07;
    }

    @Nullable
    public final C02303a A07() {
        return this.A02;
    }

    public final LV A08() {
        return this.A09;
    }

    public final void A09(RelativeLayout relativeLayout, View view) {
        C03638h c03638h = this;
        S6 s6A01 = null;
        char c = c03638h.A05 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c03638h = c03638h;
                    relativeLayout = relativeLayout;
                    s6A01 = SA.A01(relativeLayout.getContext(), c03638h.A05);
                    if (s6A01 == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    relativeLayout = relativeLayout;
                    view = view;
                    s6A01 = s6A01;
                    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    relativeLayout.addView(s6A01, new RelativeLayout.LayoutParams(layoutParams.width, layoutParams.height));
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    public final void A0A(SL sl) {
        this.A03 = sl;
    }

    public final AdView.AdViewLoadConfigBuilder buildLoadAdConfig() {
        return new C0668Kd(this);
    }

    public final void destroy() {
        C03638h c03638h = this;
        View view = null;
        C0695Lf.A05(A01(54, 7, 69), A01(0, 19, 81), A01(140, 7, 37));
        char c = c03638h.A02 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c03638h = c03638h;
                    view = null;
                    c03638h.A02.A0J(true);
                    c03638h.A02 = null;
                    c = 3;
                    break;
                case 3:
                    if (Build.VERSION.SDK_INT < 18) {
                        c = '\b';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c03638h = c03638h;
                    if (c03638h.A03 == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c03638h = c03638h;
                    if (!K1.A12(c03638h.A07.getContext())) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c03638h = c03638h;
                    c03638h.A03.A07();
                    if (c03638h.A00 == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c03638h = c03638h;
                    c03638h.A00.getOverlay().remove(c03638h.A03);
                    c = '\b';
                    break;
                case '\b':
                    C03638h c03638h2 = c03638h;
                    c03638h2.A07.removeAllViews();
                    c03638h2.A00 = view;
                    c03638h2.A01 = view;
                    return;
            }
        }
    }

    public final String getPlacementId() {
        return this.A0A;
    }

    public final boolean isAdInvalidated() {
        C03638h c03638h = this;
        boolean z = false;
        char c = c03638h.A02 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c03638h = c03638h;
                    if (!c03638h.A02.A0L()) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
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

    public final void loadAd() {
        C0695Lf.A05(A01(48, 6, 47), A01(61, 24, 3), A01(126, 8, 31));
        A03(null);
    }

    public final void loadAd(AdView.AdViewLoadConfig adViewLoadConfig) {
        C0695Lf.A05(A01(48, 6, 47), A01(61, 24, 3), A01(40, 8, 126));
        A03(((C0668Kd) adViewLoadConfig).A00());
    }

    public final void loadAdFromBid(String str) {
        C0695Lf.A05(A01(19, 13, 54), A01(61, 24, 3), A01(32, 8, 97));
        A03(str);
    }

    public final void onConfigurationChanged(Configuration configuration) {
        this.A08.onConfigurationChanged(configuration);
        if (this.A00 != null) {
            LY.A03(this.A06, this.A00, this.A09);
        }
    }

    public final void setAdListener(@Nullable AdListener adListener) {
        this.A01 = adListener;
    }

    public final void setExtraHints(ExtraHints extraHints) {
        this.A04 = extraHints.getHints();
        this.A05 = extraHints.getMediationData();
    }
}
