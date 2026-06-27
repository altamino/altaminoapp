package com.facebook.ads.redexgen.X;

import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import java.util.Arrays;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class L6 implements View.OnClickListener, View.OnLongClickListener, View.OnTouchListener {
    private static byte[] A01;
    public final /* synthetic */ L8 A00;

    static {
        A03();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 9);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A01 = new byte[]{-50, -17, -96, -12, -17, -11, -29, -24, -96, -28, -31, -12, -31, -96, -14, -27, -29, -17, -14, -28, -27, -28, -84, -96, -16, -20, -27, -31, -13, -27, -96, -27, -18, -13, -11, -14, -27, -96, -12, -17, -11, -29, -24, -96, -27, -10, -27, -18, -12, -13, -96, -14, -27, -31, -29, -24, -96, -12, -24, -27, -96, -31, -28, -96, -42, -23, -27, -9, -96, -30, -7, -96, -14, -27, -12, -11, -14, -18, -23, -18, -25, -96, -26, -31, -20, -13, -27, -96, -23, -26, -96, -7, -17, -11, -96, -23, -18, -12, -27, -14, -29, -27, -16, -12, -96, -12, -24, -27, -96, -27, -10, -27, -18, -12, -82, 117, -98, -101, -107, -99, -91, 82, -102, -109, -94, -94, -105, -96, -105, -106, 82, -90, -95, -95, 82, -104, -109, -91, -90, 96, -17, -11, -22, -98, -104, -93, 127, -94, 94, -95, -97, -84, -84, -83, -78, 94, -96, -93, 94, -95, -86, -89, -95, -87, -93, -94, 94, -96, -93, -92, -83, -80, -93, 94, -89, -78, 94, -89, -79, 94, -76, -89, -93, -75, -93, -94, 108, 114, 110, 109, -95, -112, -107, -111, -102, -113, -111, 122, -111, -96, -93, -101, -98, -105, 120, -101, -109};
    }

    private L6(L8 l8) {
        this.A00 = l8;
    }

    public /* synthetic */ L6(L8 l8, C0687Kx c0687Kx) {
        this(l8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> A01() {
        L6 l6 = this;
        Map<String, String> mapA07 = new SN().A04(l6.A00.A0L).A03(l6.A00.A0Y).A07();
        char c = l6.A00.A0G != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    l6 = l6;
                    mapA07 = mapA07;
                    mapA07.put(A00(140, 3, 120), String.valueOf(l6.A00.A0G.A04()));
                    c = 3;
                    break;
                case 3:
                    l6 = l6;
                    if (!l6.A00.A0Q) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    l6 = l6;
                    mapA07 = mapA07;
                    mapA07.put(A00(143, 3, 39), String.valueOf(l6.A00.A0Q));
                    c = 5;
                    break;
                case 5:
                    return mapA07;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A05(Map<String, String> map) {
        if (this.A00.A0U != null) {
            this.A00.A0U.A0Z(map);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        L6 l6 = this;
        int iA0M = 0;
        char c = !l6.A00.A0Y.A08() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    Log.e(A00(187, 20, 35), A00(0, 115, 119));
                    c = 3;
                    break;
                case 3:
                    l6 = l6;
                    iA0M = K1.A0M(l6.A00.A0V);
                    if (iA0M < 0) {
                        c = '\t';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    l6 = l6;
                    if (l6.A00.A0Y.A03() >= iA0M) {
                        c = '\t';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    l6 = l6;
                    if (!l6.A00.A0Y.A07()) {
                        c = 6;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case 6:
                    Log.e(A00(187, 20, 35), A00(146, 41, 53));
                    c = 7;
                    break;
                case 7:
                    return;
                case '\b':
                    Log.e(A00(187, 20, 35), A00(115, 25, 41));
                    c = 7;
                    break;
                case '\t':
                    l6 = l6;
                    if (!l6.A00.A0Y.A09(l6.A00.A0V)) {
                        c = '\f';
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    l6 = l6;
                    if (l6.A00.A0U == null) {
                        c = 7;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    l6 = l6;
                    l6.A00.A0U.A0a(l6.A01());
                    c = 7;
                    break;
                case '\f':
                    l6 = l6;
                    if (!K1.A1D(l6.A00.A0V)) {
                        c = 16;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    l6 = l6;
                    if (l6.A00.A0U == null) {
                        c = 15;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    l6 = l6;
                    l6.A00.A0U.A0d(l6.A01());
                    c = 15;
                    break;
                case 15:
                    l6 = l6;
                    C0745Ng.A00(new L4(l6), new L5(l6), NR.A00());
                    c = 7;
                    break;
                case 16:
                    l6 = l6;
                    l6.A05(l6.A01());
                    c = 7;
                    break;
            }
        }
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        L6 l6 = this;
        SL sl = null;
        boolean z = true;
        boolean z2 = false;
        char c = l6.A00.A02 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    l6 = l6;
                    if (l6.A00.A0J != null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z2 = false;
                    z = false;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    l6 = l6;
                    z2 = false;
                    l6.A00.A0J.setBounds(0, 0, l6.A00.A02.getWidth(), l6.A00.A02.getHeight());
                    sl = l6.A00.A0J;
                    if (!l6.A00.A0J.A0E()) {
                        c = 6;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 6:
                    z2 = z;
                    c = 7;
                    break;
                case 7:
                    sl = sl;
                    sl.A0D(z2);
                    c = 4;
                    break;
            }
        }
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        L6 l6 = this;
        boolean z = false;
        l6.A00.A0Y.A06(motionEvent, l6.A00.A02, view);
        char c = l6.A00.A01 != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    l6 = l6;
                    view = view;
                    motionEvent = motionEvent;
                    if (!l6.A00.A01.onTouch(view, motionEvent)) {
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
