package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Build;
import android.support.annotation.Nullable;
import android.view.InputDevice;
import android.view.MotionEvent;
import android.view.View;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class OP {
    private static byte[] A0I;
    private static final String A0J;

    @Nullable
    private View A0F;

    @Nullable
    private View A0G;
    private boolean A0H;
    private int A04 = -1;
    private int A05 = -1;
    private int A06 = -1;
    private int A03 = -1;
    private long A0C = -1;
    private int A09 = -1;
    private long A0E = -1;
    private long A0D = -1;
    private int A0A = -1;
    private int A0B = -1;
    private int A07 = -1;
    private int A08 = -1;
    private float A00 = -1.0f;
    private float A02 = -1.0f;
    private float A01 = -1.0f;

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0I, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 76);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A0I = new byte[]{82, 93, 88, 82, 90, 105, 24, 11, 14, 3, 31, 25, 50, 88, 87, 82, 88, 80, 98, 21, 11, 6, 22, 10, 13, 30, 27, 22, 10, 12, 38, 15, 8, 29, 14, 8, 40, 21, 17, 25, 64, 73, 84, 69, 67, 63, 50, 62, 48, 63, 35, 118, 113, 100, 119, 113, 92, 50, 57, 51, 3, 62, 58, 50, 38, 41, 44, 38, 46, 32, 33, 19, 44, 32, 50, 17, 36, 34, 18, 29, 24, 18, 26, 53, 20, 29, 16, 8, 37, 24, 28, 20, 107, 108, 121, 106, 108, 64, 105, 108, 88, 103, 123, 97, 124, 97, 103, 102, 80, 72, 67, 73, 117, 57, 50, 56, 5, 64, 69, 113, 78, 82, 72, 85, 72, 78, 79, 120};
    }

    static {
        A02();
        A0J = OP.class.getSimpleName();
    }

    private EnumC0759Nu A00() {
        OP op = this;
        Object tag = null;
        EnumC0759Nu enumC0759Nu = null;
        char c = op.A0G != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    op = op;
                    if (op.A0F != null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    enumC0759Nu = EnumC0759Nu.A0I;
                    c = 4;
                    break;
                case 4:
                    return enumC0759Nu;
                case 5:
                    op = op;
                    if (op.A0G == op.A0F) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    enumC0759Nu = EnumC0759Nu.A0G;
                    c = 4;
                    break;
                case 7:
                    if (Build.VERSION.SDK_INT >= 4) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    enumC0759Nu = EnumC0759Nu.A0F;
                    c = 4;
                    break;
                case '\t':
                    op = op;
                    tag = op.A0G.getTag(EnumC0759Nu.A02);
                    if (tag != null) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    enumC0759Nu = EnumC0759Nu.A0H;
                    c = 4;
                    break;
                case 11:
                    tag = tag;
                    if (!(tag instanceof EnumC0759Nu)) {
                        c = '\f';
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\f':
                    enumC0759Nu = EnumC0759Nu.A0J;
                    c = 4;
                    break;
                case '\r':
                    tag = tag;
                    enumC0759Nu = (EnumC0759Nu) tag;
                    c = 4;
                    break;
            }
        }
    }

    public final long A03() {
        OP op = this;
        long jCurrentTimeMillis = 0;
        char c = op.A07() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    op = op;
                    jCurrentTimeMillis = System.currentTimeMillis() - op.A0C;
                    c = 3;
                    break;
                case 3:
                    return jCurrentTimeMillis;
                case 4:
                    jCurrentTimeMillis = -1;
                    c = 3;
                    break;
            }
        }
    }

    public final Map<String, String> A04() {
        OP op = this;
        HashMap map = null;
        String strValueOf = null;
        long j = 0;
        char c = !op.A0H ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    map = null;
                    c = 3;
                    break;
                case 3:
                    return map;
                case 4:
                    op = op;
                    strValueOf = String.valueOf((op.A02 * op.A01) / 2.0f);
                    if (op.A0C <= 0) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    op = op;
                    if (op.A0D <= op.A0C) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    op = op;
                    j = op.A0D - op.A0C;
                    c = 7;
                    break;
                case 7:
                    op = op;
                    strValueOf = strValueOf;
                    map = new HashMap();
                    map.put(A01(98, 11, 68), String.valueOf(op.A04));
                    map.put(A01(117, 11, 109), String.valueOf(op.A05));
                    map.put(A01(19, 5, 46), String.valueOf(op.A06));
                    map.put(A01(45, 6, 27), String.valueOf(op.A03));
                    map.put(A01(78, 14, 61), String.valueOf(j));
                    map.put(A01(31, 9, 48), String.valueOf(op.A0E));
                    map.put(A01(57, 7, 27), String.valueOf(op.A0D));
                    map.put(A01(92, 6, 84), String.valueOf(op.A0A));
                    map.put(A01(51, 6, 73), String.valueOf(op.A0B));
                    map.put(A01(0, 6, 125), String.valueOf(op.A07));
                    map.put(A01(13, 6, 119), String.valueOf(op.A08));
                    map.put(A01(109, 4, 97), String.valueOf(op.A07));
                    map.put(A01(113, 4, 16), String.valueOf(op.A08));
                    map.put(A01(40, 5, 106), String.valueOf(op.A00));
                    map.put(A01(6, 7, 38), strValueOf);
                    map.put(A01(24, 7, 51), strValueOf);
                    map.put(A01(64, 14, 9), String.valueOf(op.A00().A05()));
                    c = 3;
                    break;
                case '\b':
                    j = -1;
                    c = 7;
                    break;
            }
        }
    }

    public final void A05() {
        this.A0C = System.currentTimeMillis();
    }

    public final void A06(MotionEvent motionEvent, View view, View view2) {
        OP op = this;
        int[] iArr = null;
        InputDevice.MotionRange xr = null;
        InputDevice device = null;
        InputDevice.MotionRange motionRange = null;
        int[] iArr2 = null;
        char c = !op.A0H ? (char) 2 : '\b';
        while (true) {
            switch (c) {
                case 2:
                    op = op;
                    motionEvent = motionEvent;
                    op.A0H = true;
                    device = motionEvent.getDevice();
                    if (device == null) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    device = device;
                    motionRange = device.getMotionRange(0);
                    xr = device.getMotionRange(1);
                    if (motionRange == null) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    xr = xr;
                    if (xr == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    op = op;
                    motionRange = motionRange;
                    xr = xr;
                    op.A01 = Math.min(motionRange.getRange(), xr.getRange());
                    c = 6;
                    break;
                case 6:
                    op = op;
                    if (op.A01 > 0.0f) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    op = op;
                    view = view;
                    op.A01 = Math.min(view.getMeasuredWidth(), view.getMeasuredHeight());
                    c = '\b';
                    break;
                case '\b':
                    motionEvent = motionEvent;
                    view = view;
                    view2 = view2;
                    iArr = new int[2];
                    view.getLocationInWindow(iArr);
                    iArr2 = new int[2];
                    view2.getLocationInWindow(iArr2);
                    switch (motionEvent.getAction()) {
                        case 0:
                            c = '\f';
                            break;
                        case 1:
                            c = '\n';
                            break;
                        case 2:
                            c = 11;
                            break;
                        case 3:
                            c = '\n';
                            break;
                        default:
                            c = '\t';
                            break;
                    }
                case '\t':
                    return;
                case '\n':
                    op = op;
                    motionEvent = motionEvent;
                    view2 = view2;
                    iArr = iArr;
                    iArr2 = iArr2;
                    op.A0D = System.currentTimeMillis();
                    op.A07 = (int) (((((int) (motionEvent.getX() + 0.5f)) + iArr2[0]) - iArr[0]) / OY.A01);
                    op.A08 = (int) (((((int) (motionEvent.getY() + 0.5f)) + iArr2[1]) - iArr[1]) / OY.A01);
                    op.A0F = view2;
                    c = '\t';
                    break;
                case 11:
                    op = op;
                    motionEvent = motionEvent;
                    op.A00 -= op.A00 / op.A09;
                    op.A00 += motionEvent.getPressure() / op.A09;
                    op.A02 -= op.A02 / op.A09;
                    op.A02 += motionEvent.getSize() / op.A09;
                    op.A09++;
                    c = '\t';
                    break;
                case '\f':
                    op = op;
                    motionEvent = motionEvent;
                    view = view;
                    view2 = view2;
                    iArr = iArr;
                    iArr2 = iArr2;
                    op.A04 = (int) (iArr[0] / OY.A01);
                    op.A05 = (int) (iArr[1] / OY.A01);
                    op.A06 = (int) (view.getWidth() / OY.A01);
                    op.A03 = (int) (view.getHeight() / OY.A01);
                    op.A09 = 1;
                    op.A0E = System.currentTimeMillis();
                    op.A0A = (int) (((((int) (motionEvent.getX() + 0.5f)) + iArr2[0]) - iArr[0]) / OY.A01);
                    op.A0B = (int) (((((int) (motionEvent.getY() + 0.5f)) + iArr2[1]) - iArr[1]) / OY.A01);
                    op.A00 = motionEvent.getPressure();
                    op.A02 = motionEvent.getSize();
                    op.A0G = view2;
                    c = '\t';
                    break;
            }
        }
    }

    public final boolean A07() {
        boolean z = false;
        char c = this.A0C != -1 ? (char) 2 : (char) 4;
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

    public final boolean A08() {
        return this.A0H;
    }

    public final boolean A09(Context context) {
        OP op = this;
        boolean z = false;
        int iA0B = K1.A0B(context);
        char c = iA0B >= 0 ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    op = op;
                    if (op.A03() >= iA0B) {
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
}
