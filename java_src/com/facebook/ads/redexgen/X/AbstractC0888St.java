package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.widget.RelativeLayout;
import java.util.Arrays;
import java.util.HashMap;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.St, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public abstract class AbstractC0888St extends RelativeLayout {
    private static byte[] A03;
    public static final int A04;
    public static final int A05;
    private final KM A00;
    private final ViewOnClickListenerC0869Sa A01;
    private final C0883So A02;

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 62);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A03 = new byte[]{87, 91, 89, 26, 82, 85, 87, 81, 86, 91, 91, 95, 26, 85, 80, 71, 26, 93, 90, 64, 81, 70, 71, 64, 93, 64, 93, 85, 88, 26, 87, 88, 93, 87, 95, 81, 80};
    }

    public abstract boolean A0Y();

    static {
        A02();
        A04 = (int) (16.0f * OY.A01);
        A05 = (int) (28.0f * OY.A01);
    }

    public AbstractC0888St(T0 t0, C02282y c02282y, boolean z) {
        super(t0.A02());
        this.A00 = t0.A06();
        this.A01 = new ViewOnClickListenerC0869Sa(t0.A02(), A01(0, 37, 10), c02282y, t0.A06(), t0.A08(), t0.A0C(), t0.A07());
        this.A01.setRoundedCornersEnabled(A06());
        this.A01.setViewShowsOverMedia(A09());
        OY.A0H(1001, this.A01);
        this.A02 = new C0883So(getContext(), c02282y, z, A07(), A08());
        if (K1.A0x(getContext())) {
            this.A02.setOnClickListener(new ViewOnClickListenerC0891Sw(this));
        }
        OY.A0N(this.A02);
    }

    public final void A03(C0667Kc c0667Kc) {
    }

    public final void A04(KF kf) {
    }

    public final void A05(K4 k4) {
    }

    public boolean A06() {
        return true;
    }

    public boolean A07() {
        return true;
    }

    public boolean A08() {
        return true;
    }

    public boolean A09() {
        return true;
    }

    public void A0Q(Bundle bundle) {
    }

    public void A0R(LN ln) {
    }

    public void A0S(K2 k2) {
    }

    public void A0T(K0 k0) {
    }

    public boolean A0U() {
        return false;
    }

    public void A0V() {
    }

    public void A0W(AnonymousClass32 anonymousClass32, String str, double d, @Nullable Bundle bundle, @Nullable Q6 q6) {
        boolean z = false;
        C0883So c0883So = this.A02;
        String strA07 = anonymousClass32.A04().A07();
        String strA02 = anonymousClass32.A04().A02();
        char c = !A0Y() ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    if (d <= 0.0d) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    if (d >= 1.0d) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    z = true;
                    c = 5;
                    break;
                case 5:
                    c0883So.A00(strA07, strA02, null, false, z);
                    this.A01.setCta(anonymousClass32.A05(), str, new HashMap());
                    return;
                case 6:
                    z = false;
                    c = 5;
                    break;
            }
        }
    }

    public boolean A0X() {
        return false;
    }

    public KM getAdEventManager() {
        return this.A00;
    }

    public ViewOnClickListenerC0869Sa getCtaButton() {
        return this.A01;
    }

    public int getExactMediaHeightIfAvailable() {
        return 0;
    }

    public int getExactMediaWidthIfAvailable() {
        return 0;
    }

    public C0883So getTitleDescContainer() {
        return this.A02;
    }
}
