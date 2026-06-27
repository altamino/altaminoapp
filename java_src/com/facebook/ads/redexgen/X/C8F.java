package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.8F, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public class C8F implements Runnable {
    private static byte[] A07;
    public OverScroller A01;
    private int A02;
    private int A03;
    public final /* synthetic */ C8H A06;
    public Interpolator A00 = C8H.A19;
    private boolean A04 = false;
    private boolean A05 = false;

    static {
        A03();
    }

    private static String A02(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 21);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A07 = new byte[]{-59, -55, -109, -58, -42, -27, -30, -33, -33};
    }

    public C8F(C8H c8h) {
        this.A06 = c8h;
        this.A01 = new OverScroller(c8h.getContext(), C8H.A19);
    }

    private float A00(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    private int A01(int i, int absDy, int containerSize, int i2) {
        C8F c8f = this;
        int iRound = 0;
        boolean z = false;
        int width = 0;
        int halfContainerSize = 0;
        float fA00 = 0.0f;
        int velocity = 0;
        int iAbs = Math.abs(i);
        int iAbs2 = Math.abs(absDy);
        char c = iAbs > iAbs2 ? (char) 2 : '\f';
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    velocity = (int) Math.sqrt((containerSize * containerSize) + (i2 * i2));
                    halfContainerSize = (int) Math.sqrt((i * i) + (absDy * absDy));
                    if (!z) {
                        c = 11;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8f = c8f;
                    width = c8f.A06.getWidth();
                    c = 5;
                    break;
                case 5:
                    c8f = c8f;
                    int i3 = width / 2;
                    fA00 = i3 + (i3 * c8f.A00(Math.min(1.0f, (1.0f * halfContainerSize) / width)));
                    if (velocity <= 0) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    iRound = Math.round(1000.0f * Math.abs(fA00 / velocity)) * 4;
                    c = 7;
                    break;
                case 7:
                    return Math.min(iRound, 2000);
                case '\b':
                    if (!z) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    iRound = (int) (((iAbs / width) + 1.0f) * 300.0f);
                    c = 7;
                    break;
                case '\n':
                    iAbs = iAbs2;
                    c = '\t';
                    break;
                case 11:
                    c8f = c8f;
                    width = c8f.A06.getHeight();
                    c = 5;
                    break;
                case '\f':
                    z = false;
                    c = 3;
                    break;
            }
        }
    }

    private final void A04() {
        this.A05 = false;
        this.A04 = true;
    }

    private final void A05() {
        this.A04 = false;
        if (this.A05) {
            A07();
        }
    }

    private final void A06(int i, int i2, int i3, int i4) {
        A0B(i, i2, A01(i, i2, i3, i4));
    }

    public final void A07() {
        C8F c8f = this;
        char c = c8f.A04 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8f = c8f;
                    c8f.A05 = true;
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c8f = c8f;
                    c8f.A06.removeCallbacks(c8f);
                    C02985s.A0C(c8f.A06, c8f);
                    c = 3;
                    break;
            }
        }
    }

    public final void A08() {
        this.A06.removeCallbacks(this);
        this.A01.abortAnimation();
    }

    public final void A09(int i, int i2) {
        this.A06.setScrollState(2);
        this.A03 = 0;
        this.A02 = 0;
        this.A01.fling(0, 0, i, i2, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
        A07();
    }

    public final void A0A(int i, int i2) {
        A06(i, i2, 0, 0);
    }

    public final void A0B(int i, int i2, int i3) {
        A0C(i, i2, i3, C8H.A19);
    }

    public final void A0C(int i, int i2, int i3, Interpolator interpolator) {
        C8F c8f = this;
        char c = c8f.A00 != interpolator ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c8f = c8f;
                    interpolator = interpolator;
                    c8f.A00 = interpolator;
                    c8f.A01 = new OverScroller(c8f.A06.getContext(), interpolator);
                    c = 3;
                    break;
                case 3:
                    c8f = c8f;
                    c8f.A06.setScrollState(2);
                    c8f.A03 = 0;
                    c8f.A02 = 0;
                    c8f.A01.startScroll(0, 0, i, i2, i3);
                    if (Build.VERSION.SDK_INT >= 23) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8f = c8f;
                    c8f.A01.computeScrollOffset();
                    c = 5;
                    break;
                case 5:
                    c8f.A07();
                    return;
            }
        }
    }

    public final void A0D(int i, int i2, Interpolator interpolator) {
        int iA01 = A01(i, i2, 0, 0);
        if (interpolator == null) {
            interpolator = C8H.A19;
        }
        A0C(i, i2, iA01, interpolator);
    }

    @Override // java.lang.Runnable
    public final void run() {
        C8F c8f = this;
        int i = 0;
        OverScroller overScroller = null;
        int[] iArr = null;
        int i2 = 0;
        int hresult = 0;
        boolean z = false;
        C7W c7w = null;
        int iA1m = 0;
        int i3 = 0;
        int adapterSize = 0;
        boolean fullyConsumedAny = false;
        int i4 = 0;
        boolean fullyConsumedVertical = false;
        int hresult2 = 0;
        int currVelocity = 0;
        int currY = 0;
        int vel = 0;
        int velX = 0;
        int velY = c8f.A06.A06 == null ? 2 : 4;
        while (true) {
            switch (velY) {
                case 2:
                    c8f = c8f;
                    c8f.A08();
                    velY = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c8f = c8f;
                    c8f.A04();
                    c8f.A06.A1C();
                    overScroller = c8f.A01;
                    c7w = c8f.A06.A06.A02;
                    if (!overScroller.computeScrollOffset()) {
                        velY = 63;
                        break;
                    } else {
                        velY = 5;
                        break;
                    }
                case 5:
                    c8f = c8f;
                    overScroller = overScroller;
                    iArr = c8f.A06.A16;
                    hresult2 = overScroller.getCurrX();
                    currY = overScroller.getCurrY();
                    i3 = hresult2 - c8f.A02;
                    i = currY - c8f.A03;
                    adapterSize = 0;
                    c8f.A02 = hresult2;
                    c8f.A03 = currY;
                    i4 = 0;
                    hresult = 0;
                    if (!c8f.A06.A1r(i3, i, iArr, null, 1)) {
                        velY = 7;
                        break;
                    } else {
                        velY = 6;
                        break;
                    }
                case 6:
                    iArr = iArr;
                    i3 -= iArr[0];
                    i -= iArr[1];
                    velY = 7;
                    break;
                case 7:
                    c8f = c8f;
                    if (c8f.A06.A04 == null) {
                        velY = 84;
                        break;
                    } else {
                        velY = 8;
                        break;
                    }
                case 8:
                    c8f = c8f;
                    c8f.A06.A1D();
                    c8f.A06.A1E();
                    C02804y.A01(A02(0, 9, 94));
                    c8f.A06.A1e(c8f.A06.A0s);
                    if (i3 == 0) {
                        velY = 83;
                        break;
                    } else {
                        velY = 9;
                        break;
                    }
                case 9:
                    c8f = c8f;
                    iA1m = c8f.A06.A06.A1m(i3, c8f.A06.A0r, c8f.A06.A0s);
                    i4 = i3 - iA1m;
                    velY = 10;
                    break;
                case 10:
                    if (i == 0) {
                        velY = 12;
                        break;
                    } else {
                        velY = 11;
                        break;
                    }
                case 11:
                    c8f = c8f;
                    adapterSize = c8f.A06.A06.A1n(i, c8f.A06.A0r, c8f.A06.A0s);
                    hresult = i - adapterSize;
                    velY = 12;
                    break;
                case 12:
                    c8f = c8f;
                    c7w = c7w;
                    C02804y.A00();
                    c8f.A06.A1I();
                    c8f.A06.A1F();
                    c8f.A06.A1k(false);
                    if (c7w == null) {
                        velY = 17;
                        break;
                    } else {
                        velY = 13;
                        break;
                    }
                case 13:
                    c7w = c7w;
                    if (!c7w.A0E()) {
                        velY = 14;
                        break;
                    } else {
                        velY = 17;
                        break;
                    }
                case 14:
                    c7w = c7w;
                    if (!c7w.A0F()) {
                        velY = 17;
                        break;
                    } else {
                        velY = 15;
                        break;
                    }
                case 15:
                    c8f = c8f;
                    velX = c8f.A06.A0s.A03();
                    if (velX != 0) {
                        velY = 80;
                        break;
                    } else {
                        velY = 16;
                        break;
                    }
                case 16:
                    c7w = c7w;
                    c7w.A09();
                    velY = 17;
                    break;
                case 17:
                    c8f = c8f;
                    if (!c8f.A06.A0v.isEmpty()) {
                        velY = 18;
                        break;
                    } else {
                        velY = 19;
                        break;
                    }
                case 18:
                    c8f = c8f;
                    c8f.A06.invalidate();
                    velY = 19;
                    break;
                case 19:
                    c8f = c8f;
                    if (c8f.A06.getOverScrollMode() == 2) {
                        velY = 21;
                        break;
                    } else {
                        velY = 20;
                        break;
                    }
                case 20:
                    c8f = c8f;
                    c8f.A06.A1S(i3, i);
                    velY = 21;
                    break;
                case 21:
                    c8f = c8f;
                    if (!c8f.A06.A1q(iA1m, adapterSize, i4, hresult, null, 1)) {
                        velY = 22;
                        break;
                    } else {
                        velY = 39;
                        break;
                    }
                case 22:
                    if (i4 != 0) {
                        velY = 24;
                        break;
                    } else {
                        velY = 23;
                        break;
                    }
                case 23:
                    if (hresult == 0) {
                        velY = 39;
                        break;
                    } else {
                        velY = 24;
                        break;
                    }
                case 24:
                    overScroller = overScroller;
                    currVelocity = (int) overScroller.getCurrVelocity();
                    vel = 0;
                    if (i4 == hresult2) {
                        velY = 27;
                        break;
                    } else {
                        velY = 25;
                        break;
                    }
                case 25:
                    if (i4 >= 0) {
                        velY = 77;
                        break;
                    } else {
                        velY = 26;
                        break;
                    }
                case 26:
                    vel = -currVelocity;
                    velY = 27;
                    break;
                case 27:
                    i2 = 0;
                    if (hresult == currY) {
                        velY = 30;
                        break;
                    } else {
                        velY = 28;
                        break;
                    }
                case 28:
                    if (hresult >= 0) {
                        velY = 74;
                        break;
                    } else {
                        velY = 29;
                        break;
                    }
                case 29:
                    i2 = -currVelocity;
                    velY = 30;
                    break;
                case 30:
                    c8f = c8f;
                    if (c8f.A06.getOverScrollMode() == 2) {
                        velY = 32;
                        break;
                    } else {
                        velY = 31;
                        break;
                    }
                case 31:
                    c8f = c8f;
                    c8f.A06.A1R(vel, i2);
                    velY = 32;
                    break;
                case 32:
                    if (vel != 0) {
                        velY = 35;
                        break;
                    } else {
                        velY = 33;
                        break;
                    }
                case 33:
                    if (i4 == hresult2) {
                        velY = 35;
                        break;
                    } else {
                        velY = 34;
                        break;
                    }
                case 34:
                    overScroller = overScroller;
                    if (overScroller.getFinalX() != 0) {
                        velY = 39;
                        break;
                    } else {
                        velY = 35;
                        break;
                    }
                case 35:
                    if (i2 != 0) {
                        velY = 38;
                        break;
                    } else {
                        velY = 36;
                        break;
                    }
                case 36:
                    if (hresult == currY) {
                        velY = 38;
                        break;
                    } else {
                        velY = 37;
                        break;
                    }
                case 37:
                    overScroller = overScroller;
                    if (overScroller.getFinalY() != 0) {
                        velY = 39;
                        break;
                    } else {
                        velY = 38;
                        break;
                    }
                case 38:
                    overScroller = overScroller;
                    overScroller.abortAnimation();
                    velY = 39;
                    break;
                case 39:
                    if (iA1m != 0) {
                        velY = 41;
                        break;
                    } else {
                        velY = 40;
                        break;
                    }
                case 40:
                    if (adapterSize == 0) {
                        velY = 42;
                        break;
                    } else {
                        velY = 41;
                        break;
                    }
                case 41:
                    c8f = c8f;
                    c8f.A06.A1U(iA1m, adapterSize);
                    velY = 42;
                    break;
                case 42:
                    c8f = c8f;
                    if (!c8f.A06.awakenScrollBars()) {
                        velY = 43;
                        break;
                    } else {
                        velY = 44;
                        break;
                    }
                case 43:
                    c8f = c8f;
                    c8f.A06.invalidate();
                    velY = 44;
                    break;
                case 44:
                    if (i == 0) {
                        velY = 73;
                        break;
                    } else {
                        velY = 45;
                        break;
                    }
                case 45:
                    c8f = c8f;
                    if (!c8f.A06.A06.A2A()) {
                        velY = 73;
                        break;
                    } else {
                        velY = 46;
                        break;
                    }
                case 46:
                    if (adapterSize != i) {
                        velY = 73;
                        break;
                    } else {
                        velY = 47;
                        break;
                    }
                case 47:
                    fullyConsumedAny = true;
                    velY = 48;
                    break;
                case 48:
                    if (i3 == 0) {
                        velY = 72;
                        break;
                    } else {
                        velY = 49;
                        break;
                    }
                case 49:
                    c8f = c8f;
                    if (!c8f.A06.A06.A29()) {
                        velY = 72;
                        break;
                    } else {
                        velY = 50;
                        break;
                    }
                case 50:
                    if (iA1m != i3) {
                        velY = 72;
                        break;
                    } else {
                        velY = 51;
                        break;
                    }
                case 51:
                    fullyConsumedVertical = true;
                    velY = 52;
                    break;
                case 52:
                    if (i3 != 0) {
                        velY = 54;
                        break;
                    } else {
                        velY = 53;
                        break;
                    }
                case 53:
                    if (i == 0) {
                        velY = 56;
                        break;
                    } else {
                        velY = 54;
                        break;
                    }
                case 54:
                    if (!fullyConsumedVertical) {
                        velY = 55;
                        break;
                    } else {
                        velY = 56;
                        break;
                    }
                case 55:
                    if (!fullyConsumedAny) {
                        velY = 71;
                        break;
                    } else {
                        velY = 56;
                        break;
                    }
                case 56:
                    z = true;
                    velY = 57;
                    break;
                case 57:
                    overScroller = overScroller;
                    if (!overScroller.isFinished()) {
                        velY = 58;
                        break;
                    } else {
                        velY = 60;
                        break;
                    }
                case 58:
                    if (!z) {
                        velY = 59;
                        break;
                    } else {
                        velY = 69;
                        break;
                    }
                case 59:
                    c8f = c8f;
                    if (!c8f.A06.A1o(1)) {
                        velY = 60;
                        break;
                    } else {
                        velY = 69;
                        break;
                    }
                case 60:
                    c8f = c8f;
                    c8f.A06.setScrollState(0);
                    if (!C8H.A1D) {
                        velY = 62;
                        break;
                    } else {
                        velY = 61;
                        break;
                    }
                case 61:
                    c8f = c8f;
                    c8f.A06.A02.A02();
                    velY = 62;
                    break;
                case 62:
                    c8f = c8f;
                    c8f.A06.A1Q(1);
                    velY = 63;
                    break;
                case 63:
                    c7w = c7w;
                    if (c7w == null) {
                        velY = 68;
                        break;
                    } else {
                        velY = 64;
                        break;
                    }
                case 64:
                    c7w = c7w;
                    if (!c7w.A0E()) {
                        velY = 66;
                        break;
                    } else {
                        velY = 65;
                        break;
                    }
                case 65:
                    c7w = c7w;
                    c7w.A04(0, 0);
                    velY = 66;
                    break;
                case 66:
                    c8f = c8f;
                    if (!c8f.A05) {
                        velY = 67;
                        break;
                    } else {
                        velY = 68;
                        break;
                    }
                case 67:
                    c7w = c7w;
                    c7w.A09();
                    velY = 68;
                    break;
                case 68:
                    c8f = c8f;
                    c8f.A05();
                    velY = 3;
                    break;
                case 69:
                    c8f = c8f;
                    c8f.A07();
                    if (c8f.A06.A03 == null) {
                        velY = 63;
                        break;
                    } else {
                        velY = 70;
                        break;
                    }
                case 70:
                    c8f = c8f;
                    c8f.A06.A03.A0B(c8f.A06, i3, i);
                    velY = 63;
                    break;
                case 71:
                    z = false;
                    velY = 57;
                    break;
                case 72:
                    fullyConsumedVertical = false;
                    velY = 52;
                    break;
                case 73:
                    fullyConsumedAny = false;
                    velY = 48;
                    break;
                case 74:
                    if (hresult <= 0) {
                        velY = 76;
                        break;
                    } else {
                        velY = 75;
                        break;
                    }
                case 75:
                    i2 = currVelocity;
                    velY = 30;
                    break;
                case 76:
                    i2 = 0;
                    velY = 30;
                    break;
                case 77:
                    if (i4 <= 0) {
                        velY = 79;
                        break;
                    } else {
                        velY = 78;
                        break;
                    }
                case 78:
                    vel = currVelocity;
                    velY = 27;
                    break;
                case 79:
                    vel = 0;
                    velY = 27;
                    break;
                case 80:
                    c7w = c7w;
                    if (c7w.A07() < velX) {
                        velY = 82;
                        break;
                    } else {
                        velY = 81;
                        break;
                    }
                case 81:
                    c7w = c7w;
                    int velY2 = velX - 1;
                    c7w.A0A(velY2);
                    int velY3 = i - hresult;
                    c7w.A04(i3 - i4, velY3);
                    velY = 17;
                    break;
                case 82:
                    c7w = c7w;
                    c7w.A04(i3 - i4, i - hresult);
                    velY = 17;
                    break;
                case 83:
                    iA1m = 0;
                    velY = 10;
                    break;
                case 84:
                    iA1m = 0;
                    velY = 17;
                    break;
            }
        }
    }
}
