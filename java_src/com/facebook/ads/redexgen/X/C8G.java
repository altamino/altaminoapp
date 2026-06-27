package com.facebook.ads.redexgen.X;

import android.support.annotation.VisibleForTesting;
import android.util.Log;
import android.view.View;
import com.narvii.account.ThirdPartyAccountBaseFragment;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.8G, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public abstract class C8G {
    private static byte[] A0I;
    private static final List<Object> A0J;
    public C8H A08;
    public WeakReference<C8H> A09;
    private int A0C;
    public final View A0H;
    public int A03 = -1;
    public int A01 = -1;
    public long A05 = -1;
    public int A00 = -1;
    public int A04 = -1;
    public C8G A06 = null;
    public C8G A07 = null;
    public List<Object> A0A = null;
    public List<Object> A0B = null;
    private int A0D = 0;
    private AnonymousClass85 A0F = null;
    private boolean A0G = false;
    private int A0E = 0;

    @VisibleForTesting
    public int A02 = -1;

    private static String A02(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 103);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A0I = new byte[]{-36, 47, 31, 46, 29, 44, -36, 2, 82, 81, 85, 75, 86, 75, 81, 80, 31, 35, 54, 50, 68, 21, 60, 57, 49, 50, 63, 72, -95, -107, -27, -63, -27, -28, -24, -81, -68, 5, 10, 18, -3, 8, 5, 0, 59, 65, 84, 84, 65, 67, 72, 69, 68, 51, 67, 82, 65, 80, 61, -87, -3, -10, -7, -51, -18, -3, -22, -20, -15, -18, -19, 51, 61, 28, 47, 45, 67, 45, 54, 43, 44, 54, 47, -22, 46, 47, 45, 60, 47, 55, 47, 56, 62, 47, 46, -22, 44, 47, 54, 57, 65, -22, -6, 4, -22, 63, 56, 55, 43, 62, 45, 50, 47, 46, -22, 58, 43, 51, 60, -22, 57, 48, -22, 61, 47, 62, 19, 61, 28, 47, 45, 67, 43, 44, 54, 47, -14, -13, -22, 45, 43, 54, 54, 61, -22, 48, 57, 60, -22, -29, -18, -33, -25, -48, -29, -33, -15, -102, -25, -37, -13, -102, -24, -23, -18, -102, -36, -33, -102, -24, -17, -26, -26, 6, 79, 74, 35, -62, -74, 5, 2, -6, -26, 5, 9, -45, 6, 52, 60, 65, 58, 71, 64, 62, 44, 60, 75, 58, 73, 54, -65, 13, 14, 19, -65, 17, 4, 2, 24, 2, 11, 0, 1, 11, 4, -57, -101, -16, -23, -35, -22, -16, -23, -33, -8, 77, 70, 60, 61, 62, 65, 70, 61, 60, -8, 57, 60, 57, 72, 76, 61, 74, -8, 72, 71, 75, 65, 76, 65, 71, 70, -6, 72, 73, -6, 74, 59, 76, 63, 72, 78, -30, 55, 50, 38, 35, 54, 39, -28, -68, 14, 1, 9, 11, 18, 1, 0, -33, 40, 38, 45, 46, 49, 36, 35, 45, 64, 60, 78};
    }

    static {
        A04();
        A0J = Collections.EMPTY_LIST;
    }

    public C8G(View view) {
        if (view == null) {
            throw new IllegalArgumentException(A02(149, 24, 19));
        }
        this.A0H = view;
    }

    private void A03() {
        if (this.A0A == null) {
            this.A0A = new ArrayList();
            this.A0B = Collections.unmodifiableList(this.A0A);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A07(C8H c8h) {
        this.A0E = C02985s.A00(this.A0H);
        c8h.A1u(this, 4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A08(C8H c8h) {
        c8h.A1u(this, this.A0E);
        this.A0E = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A09() {
        C8G c8g = this;
        boolean z = false;
        char c = (c8g.A0C & 16) == 0 ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c8g = c8g;
                    if (!C02985s.A0F(c8g.A0H)) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0A() {
        boolean z = false;
        char c = (this.A0C & 16) != 0 ? (char) 2 : (char) 4;
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

    private final boolean A0B() {
        C8G c8g = this;
        boolean z = false;
        char c = (c8g.A0C & 512) == 0 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c8g = c8g;
                    if (!c8g.A0b()) {
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

    public final int A0G() {
        C8G c8g = this;
        int iA16 = 0;
        char c = c8g.A08 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    iA16 = -1;
                    c = 3;
                    break;
                case 3:
                    return iA16;
                case 4:
                    c8g = c8g;
                    iA16 = c8g.A08.A16(c8g);
                    c = 3;
                    break;
            }
        }
    }

    public final int A0H() {
        return this.A00;
    }

    public final int A0I() {
        C8G c8g = this;
        int i = 0;
        char c = c8g.A04 == -1 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8g = c8g;
                    i = c8g.A03;
                    c = 3;
                    break;
                case 3:
                    return i;
                case 4:
                    c8g = c8g;
                    i = c8g.A04;
                    c = 3;
                    break;
            }
        }
    }

    public final int A0J() {
        return this.A01;
    }

    public final long A0K() {
        return this.A05;
    }

    public final List<Object> A0L() {
        C8G c8g = this;
        List<Object> list = null;
        char c = (c8g.A0C & 1024) == 0 ? (char) 2 : (char) 7;
        while (true) {
            switch (c) {
                case 2:
                    c8g = c8g;
                    if (c8g.A0A == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c8g = c8g;
                    if (c8g.A0A.size() != 0) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    list = A0J;
                    c = 5;
                    break;
                case 5:
                    return list;
                case 6:
                    c8g = c8g;
                    list = c8g.A0B;
                    c = 5;
                    break;
                case 7:
                    list = A0J;
                    c = 5;
                    break;
            }
        }
    }

    public final void A0M() {
        this.A01 = -1;
        this.A04 = -1;
    }

    public final void A0N() {
        if (this.A0A != null) {
            this.A0A.clear();
        }
        this.A0C &= -1025;
    }

    public final void A0O() {
        this.A0C &= -33;
    }

    public final void A0P() {
        this.A0C &= -257;
    }

    public final void A0Q() {
        this.A0C = 0;
        this.A03 = -1;
        this.A01 = -1;
        this.A05 = -1L;
        this.A04 = -1;
        this.A0D = 0;
        this.A06 = null;
        this.A07 = null;
        A0N();
        this.A0E = 0;
        this.A02 = -1;
        C8H.A0m(this);
    }

    public final void A0R() {
        if (this.A01 == -1) {
            this.A01 = this.A03;
        }
    }

    public final void A0S() {
        this.A0F.A0c(this);
    }

    public final void A0T(int i) {
        this.A0C |= i;
    }

    public final void A0U(int i, int i2) {
        this.A0C = (this.A0C & (i2 ^ (-1))) | (i & i2);
    }

    public final void A0V(int i, int i2, boolean z) {
        A0T(8);
        A0W(i2, z);
        this.A03 = i;
    }

    public final void A0W(int i, boolean z) {
        C8G c8g = this;
        char c = c8g.A01 == -1 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c8g = c8g;
                    c8g.A01 = c8g.A03;
                    c = 3;
                    break;
                case 3:
                    c8g = c8g;
                    if (c8g.A04 != -1) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8g = c8g;
                    c8g.A04 = c8g.A03;
                    c = 5;
                    break;
                case 5:
                    if (!z) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c8g = c8g;
                    c8g.A04 += i;
                    c = 7;
                    break;
                case 7:
                    c8g = c8g;
                    c8g.A03 += i;
                    if (c8g.A0H.getLayoutParams() == null) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c8g = c8g;
                    ((C7L) c8g.A0H.getLayoutParams()).A01 = true;
                    c = '\t';
                    break;
                case '\t':
                    return;
            }
        }
    }

    public final void A0X(AnonymousClass85 anonymousClass85, boolean z) {
        this.A0F = anonymousClass85;
        this.A0G = z;
    }

    public final void A0Y(Object obj) {
        C8G c8g = this;
        char c = obj == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8g = c8g;
                    c8g.A0T(1024);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c8g = c8g;
                    if ((c8g.A0C & 1024) != 0) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c8g = c8g;
                    obj = obj;
                    c8g.A03();
                    c8g.A0A.add(obj);
                    c = 3;
                    break;
            }
        }
    }

    public final void A0Z(boolean z) {
        C8G c8g = this;
        int i = 0;
        char c = z ? (char) 2 : '\f';
        while (true) {
            switch (c) {
                case 2:
                    c8g = c8g;
                    i = c8g.A0D - 1;
                    c = 3;
                    break;
                case 3:
                    c8g = c8g;
                    c8g.A0D = i;
                    if (c8g.A0D >= 0) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8g = c8g;
                    c8g.A0D = 0;
                    Log.e(A02(285, 4, 112), A02(71, 78, 99) + c8g);
                    c = 5;
                    break;
                case 5:
                    return;
                case 6:
                    if (!z) {
                        c = 7;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case 7:
                    c8g = c8g;
                    if (c8g.A0D != 1) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c8g = c8g;
                    c8g.A0C |= 16;
                    c = 5;
                    break;
                case '\t':
                    if (!z) {
                        c = 5;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c8g = c8g;
                    if (c8g.A0D != 0) {
                        c = 5;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    c8g = c8g;
                    c8g.A0C &= -17;
                    c = 5;
                    break;
                case '\f':
                    c8g = c8g;
                    i = c8g.A0D + 1;
                    c = 3;
                    break;
            }
        }
    }

    public final boolean A0a() {
        boolean z = false;
        char c = (this.A0C & 1) != 0 ? (char) 2 : (char) 4;
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

    public final boolean A0b() {
        boolean z = false;
        char c = (this.A0C & 4) != 0 ? (char) 2 : (char) 4;
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

    public final boolean A0c() {
        boolean z = false;
        char c = (this.A0C & 8) != 0 ? (char) 2 : (char) 4;
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

    public final boolean A0d() {
        boolean z = false;
        char c = this.A0F != null ? (char) 2 : (char) 4;
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

    public final boolean A0e() {
        boolean z = false;
        char c = (this.A0C & 256) != 0 ? (char) 2 : (char) 4;
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

    public final boolean A0f() {
        boolean z = false;
        char c = (this.A0C & 2) != 0 ? (char) 2 : (char) 4;
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

    public final boolean A0g() {
        boolean z = false;
        char c = (this.A0C & 2) != 0 ? (char) 2 : (char) 4;
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

    public final boolean A0h() {
        boolean z = false;
        char c = (this.A0C & 128) != 0 ? (char) 2 : (char) 4;
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

    public final boolean A0i() {
        boolean z = false;
        char c = (this.A0C & 32) != 0 ? (char) 2 : (char) 4;
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

    public final boolean A0j() {
        C8G c8g = this;
        boolean z = false;
        char c = (c8g.A0C & 16) == 0 ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c8g = c8g;
                    if (!C02985s.A0F(c8g.A0H)) {
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

    public final boolean A0k(int i) {
        boolean z = false;
        char c = (this.A0C & i) != 0 ? (char) 2 : (char) 4;
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

    public final String toString() {
        C8G c8g = this;
        StringBuilder sbAppend = null;
        String strA02 = null;
        StringBuilder sb = new StringBuilder(A02(17, 11, 102) + Integer.toHexString(c8g.hashCode()) + A02(7, 10, 123) + c8g.A03 + A02(173, 4, 127) + c8g.A05 + A02(177, 9, 47) + c8g.A01 + A02(28, 8, 14) + c8g.A04);
        char c = c8g.A0d() ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c8g = c8g;
                    sb = sb;
                    sbAppend = sb.append(A02(0, 7, 85));
                    if (!c8g.A0G) {
                        c = 24;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    strA02 = A02(187, 13, 114);
                    c = 4;
                    break;
                case 4:
                    sbAppend = sbAppend;
                    strA02 = strA02;
                    sbAppend.append(strA02);
                    c = 5;
                    break;
                case 5:
                    c8g = c8g;
                    if (!c8g.A0b()) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    sb = sb;
                    sb.append(A02(36, 8, 53));
                    c = 7;
                    break;
                case 7:
                    c8g = c8g;
                    if (!c8g.A0a()) {
                        c = '\b';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\b':
                    sb = sb;
                    sb.append(A02(216, 8, 20));
                    c = '\t';
                    break;
                case '\t':
                    c8g = c8g;
                    if (!c8g.A0g()) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    sb = sb;
                    sb.append(A02(261, 7, 91));
                    c = 11;
                    break;
                case 11:
                    c8g = c8g;
                    if (!c8g.A0c()) {
                        c = '\r';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    sb = sb;
                    sb.append(A02(269, 8, 53));
                    c = '\r';
                    break;
                case '\r':
                    c8g = c8g;
                    if (!c8g.A0h()) {
                        c = 15;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    sb = sb;
                    sb.append(A02(277, 8, 88));
                    c = 15;
                    break;
                case 15:
                    c8g = c8g;
                    if (!c8g.A0e()) {
                        c = 17;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    sb = sb;
                    sb.append(A02(59, 12, 34));
                    c = 17;
                    break;
                case 17:
                    c8g = c8g;
                    if (!c8g.A0j()) {
                        c = 18;
                        break;
                    } else {
                        c = 19;
                        break;
                    }
                case 18:
                    c8g = c8g;
                    sb = sb;
                    sb.append(A02(200, 16, 56) + c8g.A0D + A02(186, 1, 118));
                    c = 19;
                    break;
                case 19:
                    c8g = c8g;
                    if (!c8g.A0B()) {
                        c = 21;
                        break;
                    } else {
                        c = 20;
                        break;
                    }
                case 20:
                    sb = sb;
                    sb.append(A02(224, 27, 113));
                    c = 21;
                    break;
                case 21:
                    c8g = c8g;
                    if (c8g.A0H.getParent() != null) {
                        c = 23;
                        break;
                    } else {
                        c = 22;
                        break;
                    }
                case 22:
                    sb = sb;
                    sb.append(A02(ThirdPartyAccountBaseFragment.API_ERR_EMAIL_NO_PASSWORD, 10, 115));
                    c = 23;
                    break;
                case 23:
                    StringBuilder sb2 = sb;
                    sb2.append(A02(268, 1, 0));
                    return sb2.toString();
                case 24:
                    strA02 = A02(44, 15, 121);
                    c = 4;
                    break;
            }
        }
    }
}
