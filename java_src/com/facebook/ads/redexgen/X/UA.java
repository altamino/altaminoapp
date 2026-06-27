package com.facebook.ads.redexgen.X;

import android.graphics.Rect;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class UA extends AnonymousClass82 {
    private static byte[] A0G;

    @Nullable
    private UC A02;
    private List<UB> A03;
    private boolean A07;
    private final int A08;
    private final C7P A09;
    private final C7W A0A;
    private final C6K A0E;
    private final Set<Integer> A0F = new HashSet();
    private boolean A06 = true;
    private boolean A04 = true;
    private boolean A05 = true;
    private int A01 = -1;
    private float A00 = 0.0f;
    private final InterfaceC0899Te A0D = new U7(this);
    private final InterfaceC0897Tc A0B = new U8(this);
    private final InterfaceC0898Td A0C = new U9(this);

    static {
        A08();
    }

    private static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0G, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 13);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A08() {
        A0G = new byte[]{-117, -107, -95, -120, -117, -108, -107, -106, -95, -104, -117, -122, -121, -111, -95, -110, -125, -108, -125, -113, -110, -90, -91, -96, -80, -95, -99, -110, -86, -80, -106, -97, -110, -109, -99, -106, -107, -80, -95, -110, -93, -110, -98, -123, 126, 123, -124, 124, 116, -114, 123, 116, -123, 116, 123, -114, 127, 112, -127, 112, 124};
    }

    public UA(PS ps, int i, List<UB> list, C6K c6k, @Nullable Bundle bundle) {
        this.A09 = ps.getLayoutManager();
        this.A08 = i;
        this.A03 = list;
        this.A0E = c6k;
        this.A0A = new C7X(ps.getContext());
        ps.A1c(this);
        A0H(bundle);
    }

    @Nullable
    private TT A02(int i, int i2) {
        return A03(i, i2, true);
    }

    @Nullable
    private TT A03(int i, int i2, boolean isCompletelyVisible) {
        UA ua = this;
        TT tt = null;
        boolean zA0O = false;
        TT tt2 = null;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i > i2) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    ua = ua;
                    tt = (TT) ua.A09.A1v(i);
                    if (!tt.A0e()) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    tt2 = null;
                    c = 5;
                    break;
                case 5:
                    return tt2;
                case 6:
                    tt = tt;
                    zA0O = A0O(tt);
                    if (tt2 != null) {
                        c = '\r';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    tt = tt;
                    if (!tt.A0f()) {
                        c = '\r';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    if (!zA0O) {
                        c = '\r';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    ua = ua;
                    if (!ua.A0F.contains(Integer.valueOf(i))) {
                        c = '\n';
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\n':
                    if (!isCompletelyVisible) {
                        c = '\f';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    tt = tt;
                    if (!A0Q(tt)) {
                        c = '\r';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    tt = tt;
                    tt2 = tt;
                    c = '\r';
                    break;
                case '\r':
                    tt = tt;
                    if (!tt.A0f()) {
                        c = 16;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    if (!zA0O) {
                        c = 15;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 15:
                    ua = ua;
                    ua.A0G(i, false);
                    c = 16;
                    break;
                case 16:
                    i++;
                    c = 2;
                    break;
            }
        }
    }

    private void A06() {
        UA ua = this;
        TT ttA02 = null;
        char c = !ua.A05 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    ua = ua;
                    int lastVisibleItem = ua.A09.A2D();
                    ttA02 = ua.A02(lastVisibleItem, ua.A09.A2E());
                    if (ttA02 == null) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    ttA02 = ttA02;
                    ttA02.A0a();
                    c = 2;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A07() {
        UA ua = this;
        int iA2C = ua.A09.A2C();
        char c = iA2C != -1 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    ua = ua;
                    if (iA2C >= ua.A03.size() - 1) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    ua = ua;
                    ua.A0C(iA2C + 1);
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    private void A09(int i) {
        TT tt = (TT) this.A09.A1v(i);
        if (!A0O(tt)) {
            A0J(tt, false);
        }
    }

    private void A0A(int i) {
        UA ua = this;
        InterfaceC0899Te interfaceC0899Te = null;
        float f = 0.0f;
        TT tt = (TT) ua.A09.A1v(i);
        char c = A0O(tt) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    ua = ua;
                    tt = tt;
                    ua.A0J(tt, true);
                    c = 3;
                    break;
                case 3:
                    ua = ua;
                    tt = tt;
                    if (!ua.A0P(tt)) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    ua = ua;
                    tt = tt;
                    UB ub = ua.A03.get(((Integer) tt.getTag(-1593835536)).intValue());
                    interfaceC0899Te = ua.A0D;
                    if (!ub.A03().A03().A08()) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    f = 0.0f;
                    c = 6;
                    break;
                case 6:
                    interfaceC0899Te = interfaceC0899Te;
                    interfaceC0899Te.setVolume(f);
                    c = 7;
                    break;
                case 7:
                    return;
                case '\b':
                    f = 1.0f;
                    c = 6;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0B(int i) {
        TT ttA03 = A03(i + 1, this.A09.A2E(), false);
        if (ttA03 != null) {
            ttA03.A0a();
            A0C(((Integer) ttA03.getTag(-1593835536)).intValue());
        }
    }

    private void A0C(int i) {
        this.A0A.A0A(i);
        this.A09.A1Q(this.A0A);
    }

    private void A0D(int i, int i2) {
        A09(i);
        A09(i2);
    }

    private void A0E(int i, int i2) {
        UA ua = this;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i > i2) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    ua = ua;
                    ua.A0A(i);
                    i++;
                    c = 2;
                    break;
                case 4:
                    return;
            }
        }
    }

    private void A0F(int i, int i2, int i3) {
        UA ua = this;
        int iA2C = 0;
        int i4 = 0;
        char c = ua.A0N() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    ua = ua;
                    if (ua.A02 != null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return;
                case 4:
                    ua = ua;
                    iA2C = ua.A09.A2C();
                    if (iA2C == -1) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    i4 = iA2C;
                    c = 6;
                    break;
                case 6:
                    ua = ua;
                    ua.A02.A6k(i4);
                    c = 3;
                    break;
                case 7:
                    if (i3 >= 0) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    i4 = i;
                    c = 6;
                    break;
                case '\t':
                    i4 = i2;
                    c = 6;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0G(int i, boolean z) {
        UA ua = this;
        char c = z ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    ua = ua;
                    ua.A0F.add(Integer.valueOf(i));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    ua = ua;
                    ua.A0F.remove(Integer.valueOf(i));
                    c = 3;
                    break;
            }
        }
    }

    private void A0H(@Nullable Bundle bundle) {
        if (bundle == null) {
            return;
        }
        this.A00 = bundle.getFloat(A05(43, 18, 34), 0.0f);
        this.A05 = bundle.getBoolean(A05(20, 23, 68), true);
        this.A06 = bundle.getBoolean(A05(0, 20, 53), true);
    }

    private static void A0I(View view, boolean z) {
        float f = 0.0f;
        char c = z ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    f = 1.0f;
                    c = 3;
                    break;
                case 3:
                    view.setAlpha(f);
                    return;
                case 4:
                    f = 0.5f;
                    c = 3;
                    break;
            }
        }
    }

    private void A0J(TT tt, boolean z) {
        char c = A0N() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    tt = tt;
                    A0I(tt, z);
                    c = 3;
                    break;
                case 3:
                    if (!z) {
                        c = 4;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 4:
                    tt = tt;
                    if (!tt.A0e()) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    tt = tt;
                    tt.A0Z();
                    c = 6;
                    break;
                case 6:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0N() {
        return this.A08 == 1;
    }

    private static boolean A0O(View view) {
        boolean z = false;
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        char c = ((float) rect.width()) / ((float) view.getWidth()) >= 0.15f ? (char) 2 : (char) 4;
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

    private boolean A0P(TT tt) {
        UA ua = this;
        boolean z = false;
        char c = ua.A06 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    tt = tt;
                    if (!tt.A0f()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    ua = ua;
                    ua.A06 = false;
                    z = true;
                    c = 4;
                    break;
                case 4:
                    return z;
            }
        }
    }

    private static boolean A0Q(TT tt) {
        boolean z = false;
        char c = ((int) (tt.getX() + ((float) tt.getWidth()))) <= ((int) (((float) tt.getWidth()) * 1.3f)) ? (char) 2 : (char) 4;
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

    @Override // com.facebook.ads.redexgen.X.AnonymousClass82
    public final void A0U(C8H c8h, int i) {
        super.A0U(c8h, i);
        if (i == 0) {
            this.A07 = true;
            A06();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass82
    public final void A0V(C8H c8h, int i, int i2) {
        super.A0V(c8h, i, i2);
        this.A07 = false;
        if (this.A04) {
            this.A07 = true;
            A06();
            this.A04 = false;
        }
        int iA2D = this.A09.A2D();
        int iA2E = this.A09.A2E();
        A0D(iA2D, iA2E);
        A0E(iA2D, iA2E);
        A0F(iA2D, iA2E, i);
    }

    public final InterfaceC0897Tc A0W() {
        return this.A0B;
    }

    public final InterfaceC0898Td A0X() {
        return this.A0C;
    }

    public final InterfaceC0899Te A0Y() {
        return this.A0D;
    }

    public final void A0Z() {
        UA ua = this;
        TT tt = null;
        ua.A01 = -1;
        int iA2D = ua.A09.A2D();
        int iA2E = ua.A09.A2E();
        int firstPos = 2;
        while (true) {
            switch (firstPos) {
                case 2:
                    if (iA2D > iA2E) {
                        firstPos = 7;
                        break;
                    } else {
                        firstPos = 3;
                        break;
                    }
                case 3:
                    if (iA2D < 0) {
                        firstPos = 7;
                        break;
                    } else {
                        firstPos = 4;
                        break;
                    }
                case 4:
                    ua = ua;
                    tt = (TT) ua.A09.A1v(iA2D);
                    if (tt == null) {
                        firstPos = 8;
                        break;
                    } else {
                        firstPos = 5;
                        break;
                    }
                case 5:
                    tt = tt;
                    if (!tt.A0e()) {
                        firstPos = 8;
                        break;
                    } else {
                        firstPos = 6;
                        break;
                    }
                case 6:
                    ua = ua;
                    tt = tt;
                    ua.A01 = iA2D;
                    tt.A0Z();
                    firstPos = 7;
                    break;
                case 7:
                    return;
                case 8:
                    iA2D++;
                    firstPos = 2;
                    break;
            }
        }
    }

    public final void A0a() {
        TT tt = (TT) this.A09.A1v(this.A01);
        if (this.A01 >= 0) {
            tt.A0a();
        }
    }

    public final void A0b(Bundle bundle) {
        bundle.putFloat(A05(43, 18, 34), this.A00);
        bundle.putBoolean(A05(20, 23, 68), this.A05);
        bundle.putBoolean(A05(0, 20, 53), this.A06);
    }

    public final void A0c(UC uc) {
        this.A02 = uc;
    }
}
