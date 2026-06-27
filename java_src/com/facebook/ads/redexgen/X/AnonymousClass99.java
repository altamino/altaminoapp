package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;
import com.facebook.ads.AdError;
import com.facebook.ads.AdSize;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.InstreamVideoAdListener;
import com.facebook.ads.InstreamVideoAdView;
import com.facebook.ads.internal.api.InstreamVideoAdViewApi;
import com.facebook.ads.internal.protocol.AdPlacementType;
import java.util.Arrays;
import java.util.EnumSet;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.99, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class AnonymousClass99 implements InstreamVideoAdViewApi {
    private static byte[] A0E;

    @Nullable
    private Bundle A00;

    @Nullable
    private View A01;

    @Nullable
    private InstreamVideoAdListener A02;

    @Nullable
    private AnonymousClass24 A03;

    @Nullable
    private C02353f A04;
    private AnonymousClass98 A05;

    @Nullable
    private SL A06;

    @Nullable
    private String A07;

    @Nullable
    private String A08;
    private boolean A09;
    private final Context A0A;
    private final AdSize A0B;
    private final InstreamVideoAdView A0C;
    private final String A0D;

    static {
        A0D();
    }

    private static String A09(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 81);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A0D() {
        A0E = new byte[]{100, 97, 100, 117, 113, 96, 119, 8, 20, 25, 27, 29, 21, 29, 22, 12, 49, 60, 15, 10, 61, 7, 20, 11};
    }

    public AnonymousClass99(InstreamVideoAdView instreamVideoAdView, Context context, Bundle bundle) {
        this(instreamVideoAdView, context, bundle.getString(A09(7, 11, 41)), (AdSize) bundle.get(A09(18, 6, 63)));
        this.A00 = bundle;
    }

    public AnonymousClass99(InstreamVideoAdView instreamVideoAdView, Context context, String str, AdSize adSize) {
        this.A09 = false;
        this.A0C = instreamVideoAdView;
        this.A0A = context;
        this.A0D = str;
        this.A0B = adSize;
        this.A05 = new AnonymousClass98(this);
        this.A04 = A05();
    }

    private C02353f A05() {
        C3V c3v = new C3V(this.A0D, LW.A03, AdPlacementType.INSTREAM, LV.A02(this.A0B), 1);
        c3v.A06(this.A07);
        c3v.A07(this.A08);
        this.A04 = new C02353f(this.A0C.getContext(), c3v);
        this.A04.A0E(this.A05);
        return this.A04;
    }

    private void A0C() {
        if (this.A04 != null) {
            this.A04.A0J(true);
            this.A04 = null;
            this.A04 = A05();
            this.A03 = null;
            this.A09 = false;
            this.A0C.removeAllViews();
        }
    }

    private void A0E(@Nullable String str) {
        String str2 = str;
        AnonymousClass99 anonymousClass99 = this;
        char c = anonymousClass99.A04 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    anonymousClass99 = anonymousClass99;
                    if (anonymousClass99.A00 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    anonymousClass99 = anonymousClass99;
                    AnonymousClass24 anonymousClass24 = (AnonymousClass24) new C01901m().A00(AdPlacementType.INSTREAM);
                    anonymousClass99.A03 = anonymousClass24;
                    anonymousClass24.A0F(anonymousClass99.A0C.getContext(), new C2R(anonymousClass99, anonymousClass99.A02, anonymousClass99.A0C, anonymousClass99.A01, anonymousClass99.A0A, anonymousClass99.A08), anonymousClass99.A04.A09, anonymousClass99.A00.getBundle(A09(0, 7, 84)), EnumSet.of(CacheFlag.NONE));
                    c = 2;
                    break;
                case 5:
                    anonymousClass99 = anonymousClass99;
                    str2 = str2;
                    anonymousClass99.A04.A0G(str2);
                    c = 2;
                    break;
            }
        }
    }

    public final InstreamVideoAdView.InstreamVideoLoadConfigBuilder buildLoadAdConfig() {
        return new C0669Ke(this);
    }

    public final void destroy() {
        AnonymousClass99 anonymousClass99 = this;
        char c = anonymousClass99.A06 != null ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    if (Build.VERSION.SDK_INT < 18) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    anonymousClass99 = anonymousClass99;
                    if (!K1.A12(anonymousClass99.A0A)) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    anonymousClass99 = anonymousClass99;
                    anonymousClass99.A06.A07();
                    if (anonymousClass99.A01 == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    anonymousClass99 = anonymousClass99;
                    anonymousClass99.A01.getOverlay().remove(anonymousClass99.A06);
                    c = 6;
                    break;
                case 6:
                    anonymousClass99.A0C();
                    return;
            }
        }
    }

    public final String getPlacementId() {
        return this.A0D;
    }

    @Nullable
    public final Bundle getSaveInstanceState() {
        AnonymousClass99 anonymousClass99 = this;
        Bundle saveInstanceState = null;
        AnonymousClass22 anonymousClass22 = null;
        Bundle bundle = null;
        char c = anonymousClass99.A04 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return bundle;
                case 3:
                    anonymousClass99 = anonymousClass99;
                    if (anonymousClass99.A03 == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    anonymousClass99 = anonymousClass99;
                    anonymousClass22 = anonymousClass99.A03;
                    c = 5;
                    break;
                case 5:
                    anonymousClass22 = (AnonymousClass23) anonymousClass22;
                    if (anonymousClass22 == null) {
                        c = 2;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    anonymousClass22 = (AnonymousClass23) anonymousClass22;
                    saveInstanceState = anonymousClass22.getSaveInstanceState();
                    if (saveInstanceState == null) {
                        c = 2;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    anonymousClass99 = anonymousClass99;
                    saveInstanceState = saveInstanceState;
                    bundle = new Bundle();
                    bundle.putBundle(A09(0, 7, 84), saveInstanceState);
                    bundle.putString(A09(7, 11, 41), anonymousClass99.A0D);
                    bundle.putSerializable(A09(18, 6, 63), anonymousClass99.A0B);
                    c = 2;
                    break;
                case '\b':
                    anonymousClass99 = anonymousClass99;
                    anonymousClass22 = (AnonymousClass23) anonymousClass99.A04.A02;
                    c = 5;
                    break;
            }
        }
    }

    public final boolean isAdInvalidated() {
        AnonymousClass99 anonymousClass99 = this;
        boolean z = false;
        char c = anonymousClass99.A04 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass99 = anonymousClass99;
                    if (!anonymousClass99.A04.A0L()) {
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

    public final boolean isAdLoaded() {
        return this.A09;
    }

    public final void loadAd() {
        A0E(null);
    }

    public final void loadAd(InstreamVideoAdView.InstreamVideoLoadAdConfig instreamVideoLoadAdConfig) {
        A0E(((C0669Ke) instreamVideoLoadAdConfig).A00());
    }

    public final void loadAdFromBid(String str) {
        A0E(str);
    }

    public final void setAdListener(@Nullable InstreamVideoAdListener instreamVideoAdListener) {
        this.A02 = instreamVideoAdListener;
    }

    public final void setExtraHints(ExtraHints extraHints) {
        this.A07 = extraHints.getHints();
        this.A08 = extraHints.getMediationData();
    }

    public final void setIsAdLoaded(boolean z) {
        this.A09 = z;
    }

    public final boolean show() {
        final AnonymousClass99 anonymousClass99 = this;
        boolean z = false;
        char c = anonymousClass99.A09 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass99 = anonymousClass99;
                    if (anonymousClass99.A04 != null) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    anonymousClass99 = anonymousClass99;
                    if (anonymousClass99.A03 != null) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    anonymousClass99 = anonymousClass99;
                    MD.A00(new C2M() { // from class: com.facebook.ads.redexgen.X.91
                        @Override // com.facebook.ads.redexgen.X.C2M
                        public final void A01() {
                            if (this.A00.A02 == null) {
                                return;
                            }
                            this.A00.A02.onError(this.A00.A0C, AdError.SHOW_CALLED_BEFORE_LOAD_ERROR);
                        }
                    });
                    c = 5;
                    break;
                case 5:
                    return z;
                case 6:
                    anonymousClass99 = anonymousClass99;
                    if (anonymousClass99.A03 == null) {
                        c = '\t';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    anonymousClass99 = anonymousClass99;
                    anonymousClass99.A03.A0E();
                    c = '\b';
                    break;
                case '\b':
                    anonymousClass99 = anonymousClass99;
                    anonymousClass99.A09 = false;
                    z = true;
                    c = 5;
                    break;
                case '\t':
                    anonymousClass99 = anonymousClass99;
                    anonymousClass99.A04.A0A();
                    c = '\b';
                    break;
            }
        }
    }
}
