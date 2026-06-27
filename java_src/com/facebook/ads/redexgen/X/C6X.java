package com.facebook.ads.redexgen.X;

import android.graphics.Rect;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.narvii.model.User;
import com.tonyodev.fetch.FetchService;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.6X, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C6X {
    private static byte[] A02;
    public static final C6L A03;

    @RestrictTo({EnumC01630f.A04})
    public int A00 = -1;
    private final AccessibilityNodeInfo A01;

    private static String A08(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 111);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A09() {
        A02 = new byte[]{60, 62, 41, 52, 50, 51, 34, 46, 56, 41, 34, 46, 56, 49, 56, 62, 41, 52, 50, 51, 84, 79, 9, 0, 12, 26, 28, 10, 11, 85, 79, 102, 100, 115, 110, 104, 105, 120, 114, 105, 108, 105, 104, 112, 105, 121, 98, 49, 39, 46, 39, 33, 54, 39, 38, 120, 98, 113, 106, 41, 37, 36, 62, 47, 36, 62, 14, 47, 57, 41, 56, 35, 58, 62, 35, 37, 36, 112, 106, 44, 46, 57, 36, 34, 35, 50, 61, 63, 40, 59, 36, 34, 56, 62, 50, 37, 57, 32, 33, 50, 40, 33, 40, 32, 40, 35, 57, 14, 12, 27, 6, 0, 1, 16, 28, 12, 29, 0, 3, 3, 16, 9, 0, 29, 24, 14, 29, 11, 69, 71, 80, 77, 75, 74, 91, 87, 71, 86, 75, 72, 72, 91, 70, 69, 71, 79, 83, 69, 86, 64, 16, 18, 5, 24, 30, 31, 14, 2, 20, 29, 20, 18, 5, 91, 64, 2, 15, 21, 14, 4, 19, 41, 14, 48, 1, 18, 5, 14, 20, 90, 64, 24, 3, 64, 75, 70, 64, 72, 70, 71, 25, 3, 98, 121, 41, 56, 42, 42, 46, 54, 43, 61, 99, 121, 20, 15, 89, 70, 74, 88, 102, 75, 21, 15, 101, 103, 112, 109, 107, 106, 123, 106, 97, 124, 112, 123, 108, 112, 105, 104, 123, 97, 104, 97, 105, 97, 106, 112, 95, 68, 20, 5, 7, 15, 5, 3, 1, 42, 5, 9, 1, 94, 68, 104, 115, 48, 63, 50, 32, 32, 29, 50, 62, 54, 105, 115, 101, 103, 112, 109, 107, 106, 123, 103, 104, 109, 103, 111, 95, 68, 63, 73, 82, 30, 29, 28, 21, 49, 30, 27, 17, 25, 19, 16, 30, 23, 72, 82, 42, 49, 114, 121, 116, 114, 122, 112, 115, 125, 116, 43, 49, 71, 69, 82, 79, 73, 72, 89, 69, 74, 67, 71, 84, 89, 85, 67, 74, 67, 69, 82, 79, 73, 72, 90, 88, 79, 82, 84, 85, 68, 88, 78, 79, 29, 31, 8, 21, 19, 18, 3, 29, 31, 31, 25, 15, 15, 21, 30, 21, 16, 21, 8, 5, 3, 26, 19, 31, 9, 15, 84, 79, 9, 0, 12, 26, 28, 14, 13, 3, 10, 85, 79, 21, 23, 0, 29, 27, 26, 11, 4, 21, 7, 0, 17, 64, 66, 85, 72, 78, 79, 94, 71, 78, 66, 84, 82, 34, 57, 123, 118, 108, 119, 125, 106, 80, 119, 74, 122, 107, 124, 124, 119, 35, 57, 27, 0, 84, 69, 88, 84, 26, 0, 45, 54, 101, 117, 100, 121, 122, 122, 119, 116, 122, 115, 44, 54, 9, 11, 28, 1, 7, 6, 23, 11, 7, 24, 17, 122, 120, 111, 114, 116, 117, 100, 117, 126, 99, 111, 100, 122, 111, 100, 118, 116, 109, 126, 118, 126, 117, 111, 100, 124, 105, 122, 117, 110, 119, 122, 105, 114, 111, 98, 116, 118, 97, 124, 122, 123, 106, 118, 121, 112, 116, 103, 106, 116, 118, 118, 112, 102, 102, 124, 119, 124, 121, 124, 97, 108, 106, 115, 122, 118, 96, 102, 94, 69, 0, 11, 4, 7, 9, 0, 1, 95, 69, 86, 84, 67, 94, 88, 89, 72, 84, 91, 82, 86, 69, 72, 81, 88, 84, 66, 68, 52, 56, 68, 58, 56, 47, 50, 52, 53, 36, 55, 52, 53, 60, 36, 56, 55, 50, 56, 48, 98, 96, 119, 106, 108, 109, 124, 115, 113, 102, 117, 106, 108, 118, 112, 124, 98, 119, 124, 110, 108, 117, 102, 110, 102, 109, 119, 124, 100, 113, 98, 109, 118, 111, 98, 113, 106, 119, 122, 65, 90, 25, 22, 19, 25, 17, 27, 24, 22, 31, 64, 90};
    }

    static {
        A09();
        if (Build.VERSION.SDK_INT >= 24) {
            A03 = new C6S() { // from class: com.facebook.ads.redexgen.X.6T
            };
            return;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            A03 = new C6S();
            return;
        }
        if (Build.VERSION.SDK_INT >= 22) {
            A03 = new C6R();
            return;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            A03 = new C6Q();
            return;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            A03 = new C6P();
            return;
        }
        if (Build.VERSION.SDK_INT >= 18) {
            A03 = new C6O();
            return;
        }
        if (Build.VERSION.SDK_INT >= 17) {
            A03 = new C6N();
        } else if (Build.VERSION.SDK_INT >= 16) {
            A03 = new C6M();
        } else {
            A03 = new C6L();
        }
    }

    private C6X(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.A01 = accessibilityNodeInfo;
    }

    private final int A00() {
        return this.A01.getActions();
    }

    public static C6X A01(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        return new C6X(accessibilityNodeInfo);
    }

    private final CharSequence A02() {
        return this.A01.getClassName();
    }

    private final CharSequence A03() {
        return this.A01.getContentDescription();
    }

    private final CharSequence A04() {
        return this.A01.getPackageName();
    }

    private final CharSequence A05() {
        return this.A01.getText();
    }

    private final String A06() {
        return A03.A02(this.A01);
    }

    private static String A07(int i) {
        char c;
        String strA08 = null;
        switch (i) {
            case 1:
                c = 21;
                break;
            case 2:
                c = 20;
                break;
            case 4:
                c = 19;
                break;
            case 8:
                c = 18;
                break;
            case 16:
                c = 17;
                break;
            case 32:
                c = 16;
                break;
            case 64:
                c = 15;
                break;
            case 128:
                c = 14;
                break;
            case 256:
                c = '\r';
                break;
            case 512:
                c = '\f';
                break;
            case 1024:
                c = 11;
                break;
            case 2048:
                c = '\n';
                break;
            case 4096:
                c = '\t';
                break;
            case 8192:
                c = '\b';
                break;
            case 16384:
                c = 6;
                break;
            case 32768:
                c = 5;
                break;
            case 65536:
                c = 7;
                break;
            case 131072:
                c = 4;
                break;
            default:
                c = 2;
                break;
        }
        while (true) {
            switch (c) {
                case 2:
                    strA08 = A08(31, 14, 72);
                    c = 3;
                    break;
                case 3:
                    return strA08;
                case 4:
                    strA08 = A08(0, 20, 18);
                    c = 3;
                    break;
                case 5:
                    strA08 = A08(382, 12, 59);
                    c = 3;
                    break;
                case 6:
                    strA08 = A08(446, 11, 39);
                    c = 3;
                    break;
                case 7:
                    strA08 = A08(333, 10, 116);
                    c = 3;
                    break;
                case '\b':
                    strA08 = A08(128, 22, 107);
                    c = 3;
                    break;
                case '\t':
                    strA08 = A08(107, 21, 32);
                    c = 3;
                    break;
                case '\n':
                    strA08 = A08(79, 28, 2);
                    c = 3;
                    break;
                case 11:
                    strA08 = A08(214, 24, 75);
                    c = 3;
                    break;
                case '\f':
                    strA08 = A08(573, 39, 76);
                    c = 3;
                    break;
                case '\r':
                    strA08 = A08(457, 35, 84);
                    c = 3;
                    break;
                case 14:
                    strA08 = A08(492, 32, 90);
                    c = 3;
                    break;
                case 15:
                    strA08 = A08(343, 26, 51);
                    c = 3;
                    break;
                case 16:
                    strA08 = A08(556, 17, 20);
                    c = 3;
                    break;
                case 17:
                    strA08 = A08(266, 12, 75);
                    c = 3;
                    break;
                case 18:
                    strA08 = A08(FetchService.ACTION_PAUSE, 22, 105);
                    c = 3;
                    break;
                case 19:
                    strA08 = A08(150, 13, 62);
                    c = 3;
                    break;
                case 20:
                    strA08 = A08(535, 18, 120);
                    c = 3;
                    break;
                case 21:
                    strA08 = A08(394, 12, 110);
                    c = 3;
                    break;
            }
        }
    }

    private final void A0A(Rect rect) {
        this.A01.getBoundsInParent(rect);
    }

    private final void A0B(Rect rect) {
        this.A01.getBoundsInScreen(rect);
    }

    private final boolean A0C() {
        return this.A01.isCheckable();
    }

    private final boolean A0D() {
        return this.A01.isChecked();
    }

    private final boolean A0E() {
        return this.A01.isClickable();
    }

    private final boolean A0F() {
        return this.A01.isEnabled();
    }

    private final boolean A0G() {
        return this.A01.isFocusable();
    }

    private final boolean A0H() {
        return this.A01.isFocused();
    }

    private final boolean A0I() {
        return this.A01.isLongClickable();
    }

    private final boolean A0J() {
        return this.A01.isPassword();
    }

    private final boolean A0K() {
        return this.A01.isScrollable();
    }

    private final boolean A0L() {
        return this.A01.isSelected();
    }

    public final AccessibilityNodeInfo A0M() {
        return this.A01;
    }

    public final void A0N(int i) {
        this.A01.addAction(i);
    }

    public final void A0O(CharSequence charSequence) {
        this.A01.setClassName(charSequence);
    }

    public final void A0P(Object obj) {
        A03.A03(this.A01, ((C6U) obj).A00);
    }

    public final void A0Q(Object obj) {
        A03.A04(this.A01, ((C6V) obj).A00);
    }

    public final void A0R(boolean z) {
        this.A01.setScrollable(z);
    }

    public final boolean equals(Object obj) {
        C6X other = this;
        C6X c6x = null;
        boolean z = true;
        char c = other == obj ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return z;
                case 3:
                    obj = obj;
                    if (obj != null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    z = false;
                    c = 2;
                    break;
                case 5:
                    other = other;
                    obj = obj;
                    if (other.getClass() == obj.getClass()) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    z = false;
                    c = 2;
                    break;
                case 7:
                    other = other;
                    obj = obj;
                    c6x = (C6X) obj;
                    if (other.A01 != null) {
                        c = '\n';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c6x = c6x;
                    if (c6x.A01 == null) {
                        c = 2;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    z = false;
                    c = 2;
                    break;
                case '\n':
                    other = other;
                    c6x = c6x;
                    if (!other.A01.equals(c6x.A01)) {
                        c = 11;
                        break;
                    } else {
                        c = 2;
                        break;
                    }
                case 11:
                    z = false;
                    c = 2;
                    break;
            }
        }
    }

    public final int hashCode() {
        C6X c6x = this;
        int iHashCode = 0;
        char c = c6x.A01 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    iHashCode = 0;
                    c = 3;
                    break;
                case 3:
                    return iHashCode;
                case 4:
                    c6x = c6x;
                    iHashCode = c6x.A01.hashCode();
                    c = 3;
                    break;
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        A0A(rect);
        sb.append(A08(163, 18, 15) + rect);
        A0B(rect);
        sb.append(A08(406, 18, 118) + rect);
        sb.append(A08(238, 15, 11)).append(A04());
        sb.append(A08(User.USER_ROLE_NEWS_FEED, 13, 60)).append(A02());
        sb.append(A08(424, 8, 79)).append(A05());
        sb.append(A08(57, 22, 37)).append(A03());
        sb.append(A08(204, 10, 64)).append(A06());
        sb.append(A08(298, 13, 126)).append(A0C());
        sb.append(A08(181, 11, 76)).append(A0D());
        sb.append(A08(369, 13, 0)).append(A0G());
        sb.append(A08(20, 11, 0)).append(A0H());
        sb.append(A08(45, 12, 45)).append(A0L());
        sb.append(A08(612, 13, 21)).append(A0E());
        sb.append(A08(281, 17, 29)).append(A0I());
        sb.append(A08(524, 11, 10)).append(A0F());
        sb.append(A08(PsExtractor.AUDIO_STREAM, 12, 54)).append(A0J());
        sb.append(A08(432, 14, 121) + A0K());
        sb.append(A08(278, 3, 11));
        int iA00 = A00();
        int actionBits = 2;
        while (true) {
            switch (actionBits) {
                case 2:
                    if (iA00 == 0) {
                        actionBits = 5;
                        break;
                    } else {
                        actionBits = 3;
                        break;
                    }
                case 3:
                    sb = sb;
                    int actionBits2 = Integer.numberOfTrailingZeros(iA00);
                    int i = 1 << actionBits2;
                    int actionBits3 = i ^ (-1);
                    iA00 &= actionBits3;
                    sb.append(A07(i));
                    if (iA00 == 0) {
                        actionBits = 2;
                        break;
                    } else {
                        actionBits = 4;
                        break;
                    }
                case 4:
                    sb = sb;
                    sb.append(A08(553, 2, 119));
                    actionBits = 2;
                    break;
                case 5:
                    StringBuilder sb2 = sb;
                    sb2.append(A08(555, 1, 118));
                    return sb2.toString();
            }
        }
    }
}
