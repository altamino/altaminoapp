package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import android.support.v8.renderscript.ScriptIntrinsicBLAS;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.85, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class AnonymousClass85 {
    private static byte[] A09;
    public AnonymousClass84 A01;
    private C8E A04;
    public final /* synthetic */ C8H A08;
    public final ArrayList<C8G> A05 = new ArrayList<>();
    public ArrayList<C8G> A02 = null;
    public final ArrayList<C8G> A06 = new ArrayList<>();
    private final List<C8G> A07 = Collections.unmodifiableList(this.A05);
    private int A03 = 2;
    public int A00 = 2;

    static {
        A05();
    }

    private static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 12);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A05() {
        A09 = new byte[]{61, 121, -110, -107, 69, -119, -118, -103, -122, -120, -115, -118, -119, 69, -101, -114, -118, -100, 69, -104, -115, -108, -102, -111, -119, 69, -121, -118, 69, -105, -118, -110, -108, -101, -118, -119, 69, -117, -105, -108, -110, 69, 119, -118, -120, -98, -120, -111, -118, -105, 123, -114, -118, -100, 69, -121, -118, -117, -108, -105, -118, 69, -114, -103, 69, -120, -122, -109, 69, -121, -118, 69, -105, -118, -120, -98, -120, -111, -118, -119, 95, 69, 111, -108, -119, -107, -108, -103, -113, -103, -102, -117, -108, -119, -97, 70, -118, -117, -102, -117, -119, -102, -117, -118, 84, 70, 111, -108, -100, -121, -110, -113, -118, 70, -100, -113, -117, -99, 70, -114, -107, -110, -118, -117, -104, 70, -121, -118, -121, -106, -102, -117, -104, 70, -106, -107, -103, -113, -102, -113, -107, -108, 95, -90, -99, -99, -86, -100, -85, 113, -110, -121, -97, -107, -101, -102, 70, -113, -108, -118, -117, -98, 70, -103, -114, -107, -101, -110, -118, 70, -108, -107, -102, 70, -120, -117, 70, 83, 87, 70, -121, -116, -102, -117, -104, 70, -101, -108, -114, -113, -118, -113, -108, -115, 70, -121, 70, -100, -113, -117, -99, 96, -81, -44, -36, -57, -46, -49, -54, -122, -49, -38, -53, -45, -122, -42, -43, -39, -49, -38, -49, -43, -44, -122, -84, -79, -53, -16, -27, -15, -16, -11, -21, -11, -10, -25, -16, -27, -5, -94, -26, -25, -10, -25, -27, -10, -25, -26, -80, -94, -53, -16, -8, -29, -18, -21, -26, -94, -21, -10, -25, -17, -94, -14, -15, -11, -21, -10, -21, -15, -16, -94, 113, -127, -112, 127, -114, -114, -125, -126, 62, -115, -112, 62, 127, -110, -110, 127, -127, -122, -125, -126, 62, -108, -121, -125, -107, -111, 62, -117, 127, -105, 62, -116, -115, -110, 62, -128, -125, 62, -112, -125, -127, -105, -127, -118, -125, -126, 76, 62, -121, -111, 113, -127, -112, 127, -114, 88, -74, -73, -92, -73, -88, 125, -92, -94, -79, -109, -90, -94, -76, -125, -84, -81, -115, -84, -80, -90, -79, -90, -84, -85, 126, -85, -95, -111, -74, -83, -94, 93, -81, -94, -79, -78, -81, -85, -94, -95, 93, -98, 93, -77, -90, -94, -76, 93, -76, -91, -90, -96, -91, 93, -95, -84, -94, -80, 93, -85, -84, -79, 93, -91, -98, -77, -94, 93, -98, 93, -109, -90, -94, -76, -123, -84, -87, -95, -94, -81, 97, 127, -122, 118, 123, 116, 45, -127, 124, 45, 127, 114, 112, -122, 112, 121, 114, 45, 110, 123, 45, 118, 116, 123, 124, 127, 114, 113, 45, -125, 118, 114, -124, 45, 117, 124, 121, 113, 114, 127, 59, 45, 102, 124, -126, 45, -128, 117, 124, -126, 121, 113, 45, 115, 118, 127, -128, -127, 45, 112, 110, 121, 121, 45, -128, -127, 124, 125, 86, 116, 123, 124, 127, 118, 123, 116, 99, 118, 114, -124, 53, -125, 118, 114, -124, 54, 45, 111, 114, 115, 124, 127, 114, 45, 112, 110, 121, 121, 118, 123, 116, 45, 127, 114, 112, -122, 112, 121, 114, 59, -85, -80, -94, -53, -10, -25, -17, -94, -27, -15, -9, -16, -10, -68, 71, -112, -102, 104, -101, -101, -120, -118, -113, -116, -117, 97, -119, -89, -78, -78, -85, -86, 102, -71, -87, -72, -89, -74, 102, -68, -81, -85, -67, 102, -67, -81, -70, -82, 102, -89, -76, 102, -81, -76, -68, -89, -78, -81, -86, 102, -68, -81, -85, -67, 116, 102, -113, -76, -68, -89, -78, -81, -86, 102, -68, -81, -85, -67, -71, 102, -87, -89, -76, -76, -75, -70, 102, -88, -85, 102, -72, -85, -69, -71, -85, -86, 102, -84, -72, -75, -77, 102, -71, -87, -72, -89, -74, 114, 102, -70, -82, -85, -65, 102, -71, -82, -75, -69, -78, -86, 102, -72, -85, -88, -75, -69, -76, -86, 102, -84, -72, -75, -77, 102, -72, -85, -87, -65, -87, -78, -85, -72, 102, -74, -75, -75, -78, 116, -44, -46, -31, -61, -42, -46, -28, -77, -36, -33, -67, -36, -32, -42, -31, -42, -36, -37, -82, -37, -47, -63, -26, -35, -46, -115, -33, -46, -31, -30, -33, -37, -46, -47, -115, -50, -115, -29, -42, -46, -28, -115, -31, -43, -50, -31, -115, -42, -32, -115, -42, -44, -37, -36, -33, -46, -47, -101, -115, -58, -36, -30, -115, -38, -30, -32, -31, -115, -48, -50, -39, -39, -115, -32, -31, -36, -35, -74, -44, -37, -36, -33, -42, -37, -44, -115, -49, -46, -45, -36, -33, -46, -115, -33, -46, -31, -30, -33, -37, -42, -37, -44, -115, -31, -43, -42, -32, -115, -29, -42, -46, -28, -101};
    }

    public AnonymousClass85(C8H c8h) {
        this.A08 = c8h;
    }

    private final View A00(int i, boolean z) {
        return A0I(i, z, Long.MAX_VALUE).A0H;
    }

    private final C8G A01(int i) {
        AnonymousClass85 anonymousClass85 = this;
        long jA05 = 0;
        C8G c8g = null;
        int iA0D = 0;
        int size = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = anonymousClass85.A02 != null ? 2 : 3;
        while (true) {
            switch (i4) {
                case 2:
                    anonymousClass85 = anonymousClass85;
                    size = anonymousClass85.A02.size();
                    if (size != 0) {
                        i4 = 5;
                        break;
                    } else {
                        i4 = 3;
                        break;
                    }
                case 3:
                    c8g = null;
                    i4 = 4;
                    break;
                case 4:
                    return c8g;
                case 5:
                    i2 = 0;
                    i4 = 6;
                    break;
                case 6:
                    if (i2 >= size) {
                        i4 = 11;
                        break;
                    } else {
                        i4 = 7;
                        break;
                    }
                case 7:
                    anonymousClass85 = anonymousClass85;
                    c8g = anonymousClass85.A02.get(i2);
                    if (!c8g.A0i()) {
                        i4 = 8;
                        break;
                    } else {
                        i4 = 10;
                        break;
                    }
                case 8:
                    c8g = c8g;
                    int i5 = c8g.A0I();
                    if (i5 != i) {
                        i4 = 10;
                        break;
                    } else {
                        i4 = 9;
                        break;
                    }
                case 9:
                    c8g = c8g;
                    c8g.A0T(32);
                    i4 = 4;
                    break;
                case 10:
                    i2++;
                    i4 = 6;
                    break;
                case 11:
                    anonymousClass85 = anonymousClass85;
                    if (!anonymousClass85.A08.A04.A0G()) {
                        i4 = 20;
                        break;
                    } else {
                        i4 = 12;
                        break;
                    }
                case 12:
                    anonymousClass85 = anonymousClass85;
                    iA0D = anonymousClass85.A08.A00.A0D(i);
                    if (iA0D <= 0) {
                        i4 = 20;
                        break;
                    } else {
                        i4 = 13;
                        break;
                    }
                case 13:
                    anonymousClass85 = anonymousClass85;
                    int i6 = anonymousClass85.A08.A04.A03();
                    if (iA0D >= i6) {
                        i4 = 20;
                        break;
                    } else {
                        i4 = 14;
                        break;
                    }
                case 14:
                    anonymousClass85 = anonymousClass85;
                    jA05 = anonymousClass85.A08.A04.A05(iA0D);
                    i3 = 0;
                    i4 = 15;
                    break;
                case 15:
                    if (i3 >= size) {
                        i4 = 20;
                        break;
                    } else {
                        i4 = 16;
                        break;
                    }
                case 16:
                    anonymousClass85 = anonymousClass85;
                    c8g = anonymousClass85.A02.get(i3);
                    if (!c8g.A0i()) {
                        i4 = 17;
                        break;
                    } else {
                        i4 = 19;
                        break;
                    }
                case 17:
                    c8g = c8g;
                    if (c8g.A0K() != jA05) {
                        i4 = 19;
                        break;
                    } else {
                        i4 = 18;
                        break;
                    }
                case 18:
                    c8g = c8g;
                    c8g.A0T(32);
                    i4 = 4;
                    break;
                case 19:
                    i3++;
                    i4 = 15;
                    break;
                case 20:
                    c8g = null;
                    i4 = 4;
                    break;
            }
        }
    }

    private final C8G A02(int i, boolean z) {
        AnonymousClass85 anonymousClass85 = this;
        int i2 = 0;
        C8G c8g = null;
        View viewA08 = null;
        C8G c8gA05 = null;
        int iA07 = 0;
        int size = 0;
        int size2 = anonymousClass85.A05.size();
        int i3 = 0;
        int scrapCount = 2;
        while (true) {
            switch (scrapCount) {
                case 2:
                    if (i3 >= size2) {
                        scrapCount = 11;
                        break;
                    } else {
                        scrapCount = 3;
                        break;
                    }
                case 3:
                    anonymousClass85 = anonymousClass85;
                    c8g = anonymousClass85.A05.get(i3);
                    if (!c8g.A0i()) {
                        scrapCount = 4;
                        break;
                    } else {
                        scrapCount = 10;
                        break;
                    }
                case 4:
                    c8g = c8g;
                    if (c8g.A0I() != i) {
                        scrapCount = 10;
                        break;
                    } else {
                        scrapCount = 5;
                        break;
                    }
                case 5:
                    c8g = c8g;
                    if (!c8g.A0b()) {
                        scrapCount = 6;
                        break;
                    } else {
                        scrapCount = 10;
                        break;
                    }
                case 6:
                    anonymousClass85 = anonymousClass85;
                    if (!anonymousClass85.A08.A0s.A09) {
                        scrapCount = 7;
                        break;
                    } else {
                        scrapCount = 8;
                        break;
                    }
                case 7:
                    c8g = c8g;
                    if (!c8g.A0c()) {
                        scrapCount = 8;
                        break;
                    } else {
                        scrapCount = 10;
                        break;
                    }
                case 8:
                    c8g = c8g;
                    c8g.A0T(32);
                    scrapCount = 9;
                    break;
                case 9:
                    return c8g;
                case 10:
                    i3++;
                    scrapCount = 2;
                    break;
                case 11:
                    if (!z) {
                        scrapCount = 12;
                        break;
                    } else {
                        scrapCount = 16;
                        break;
                    }
                case 12:
                    anonymousClass85 = anonymousClass85;
                    viewA08 = anonymousClass85.A08.A01.A08(i);
                    if (viewA08 == null) {
                        scrapCount = 16;
                        break;
                    } else {
                        scrapCount = 13;
                        break;
                    }
                case 13:
                    anonymousClass85 = anonymousClass85;
                    viewA08 = viewA08;
                    c8gA05 = C8H.A05(viewA08);
                    anonymousClass85.A08.A01.A0G(viewA08);
                    iA07 = anonymousClass85.A08.A01.A07(viewA08);
                    if (iA07 != -1) {
                        scrapCount = 15;
                        break;
                    } else {
                        scrapCount = 14;
                        break;
                    }
                case 14:
                    throw new IllegalStateException(A04(150, 52, 26) + c8gA05 + anonymousClass85.A08.A1B());
                case 15:
                    anonymousClass85 = anonymousClass85;
                    viewA08 = viewA08;
                    c8gA05 = c8gA05;
                    anonymousClass85.A08.A01.A0C(iA07);
                    anonymousClass85.A0W(viewA08);
                    c8gA05.A0T(8224);
                    c8g = c8gA05;
                    scrapCount = 9;
                    break;
                case 16:
                    anonymousClass85 = anonymousClass85;
                    size = anonymousClass85.A06.size();
                    i2 = 0;
                    scrapCount = 17;
                    break;
                case 17:
                    if (i2 >= size) {
                        scrapCount = 23;
                        break;
                    } else {
                        scrapCount = 18;
                        break;
                    }
                case 18:
                    anonymousClass85 = anonymousClass85;
                    c8g = anonymousClass85.A06.get(i2);
                    if (!c8g.A0b()) {
                        scrapCount = 19;
                        break;
                    } else {
                        scrapCount = 22;
                        break;
                    }
                case 19:
                    c8g = c8g;
                    int layoutIndex = c8g.A0I();
                    if (layoutIndex != i) {
                        scrapCount = 22;
                        break;
                    } else {
                        scrapCount = 20;
                        break;
                    }
                case 20:
                    if (!z) {
                        scrapCount = 21;
                        break;
                    } else {
                        scrapCount = 9;
                        break;
                    }
                case 21:
                    anonymousClass85 = anonymousClass85;
                    anonymousClass85.A06.remove(i2);
                    scrapCount = 9;
                    break;
                case 22:
                    i2++;
                    scrapCount = 17;
                    break;
                case 23:
                    c8g = null;
                    scrapCount = 9;
                    break;
            }
        }
    }

    private final C8G A03(long j, int i, boolean z) {
        AnonymousClass85 anonymousClass85 = this;
        C8G c8g = null;
        int size = 0;
        int size2 = anonymousClass85.A05.size() - 1;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (size2 < 0) {
                        c = '\r';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    anonymousClass85 = anonymousClass85;
                    c8g = anonymousClass85.A05.get(size2);
                    if (c8g.A0K() != j) {
                        c = '\f';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8g = c8g;
                    if (!c8g.A0i()) {
                        c = 5;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case 5:
                    c8g = c8g;
                    if (i != c8g.A0H()) {
                        c = '\n';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c8g = c8g;
                    c8g.A0T(32);
                    if (!c8g.A0c()) {
                        c = '\t';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    anonymousClass85 = anonymousClass85;
                    if (!anonymousClass85.A08.A0s.A07()) {
                        c = '\b';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\b':
                    c8g = c8g;
                    c8g.A0U(2, 14);
                    c = '\t';
                    break;
                case '\t':
                    return c8g;
                case '\n':
                    if (!z) {
                        c = 11;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case 11:
                    anonymousClass85 = anonymousClass85;
                    c8g = c8g;
                    anonymousClass85.A05.remove(size2);
                    anonymousClass85.A08.removeDetachedView(c8g.A0H, false);
                    anonymousClass85.A0V(c8g.A0H);
                    c = '\f';
                    break;
                case '\f':
                    size2--;
                    c = 2;
                    break;
                case '\r':
                    anonymousClass85 = anonymousClass85;
                    size = anonymousClass85.A06.size() - 1;
                    c = 14;
                    break;
                case 14:
                    if (size < 0) {
                        c = 22;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    anonymousClass85 = anonymousClass85;
                    c8g = anonymousClass85.A06.get(size);
                    if (c8g.A0K() != j) {
                        c = 21;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    c8g = c8g;
                    if (i != c8g.A0H()) {
                        c = 19;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    if (!z) {
                        c = 18;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case 18:
                    anonymousClass85 = anonymousClass85;
                    anonymousClass85.A06.remove(size);
                    c = '\t';
                    break;
                case 19:
                    if (!z) {
                        c = 20;
                        break;
                    } else {
                        c = 21;
                        break;
                    }
                case 20:
                    anonymousClass85 = anonymousClass85;
                    c8g = null;
                    anonymousClass85.A07(size);
                    c = '\t';
                    break;
                case 21:
                    size--;
                    c = 14;
                    break;
                case 22:
                    c8g = null;
                    c = '\t';
                    break;
            }
        }
    }

    private final void A06() {
        AnonymousClass85 anonymousClass85 = this;
        int size = anonymousClass85.A06.size() - 1;
        int i = 2;
        while (true) {
            switch (i) {
                case 2:
                    if (size < 0) {
                        i = 4;
                        break;
                    } else {
                        i = 3;
                        break;
                    }
                case 3:
                    anonymousClass85 = anonymousClass85;
                    anonymousClass85.A07(size);
                    size--;
                    i = 2;
                    break;
                case 4:
                    anonymousClass85 = anonymousClass85;
                    anonymousClass85.A06.clear();
                    if (!C8H.A1D) {
                        i = 6;
                        break;
                    } else {
                        i = 5;
                        break;
                    }
                case 5:
                    anonymousClass85 = anonymousClass85;
                    anonymousClass85.A08.A02.A02();
                    i = 6;
                    break;
                case 6:
                    return;
            }
        }
    }

    private final void A07(int i) {
        A0d(this.A06.get(i), true);
        this.A06.remove(i);
    }

    private void A08(ViewGroup viewGroup, boolean z) {
        AnonymousClass85 anonymousClass85 = this;
        View childAt = null;
        int childCount = viewGroup.getChildCount() - 1;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (childCount < 0) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    viewGroup = viewGroup;
                    childAt = viewGroup.getChildAt(childCount);
                    if (!(childAt instanceof ViewGroup)) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    anonymousClass85 = anonymousClass85;
                    childAt = childAt;
                    anonymousClass85.A08((ViewGroup) childAt, true);
                    c = 5;
                    break;
                case 5:
                    childCount--;
                    c = 2;
                    break;
                case 6:
                    if (!z) {
                        c = 7;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case 7:
                    return;
                case '\b':
                    viewGroup = viewGroup;
                    if (viewGroup.getVisibility() != 4) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    viewGroup = viewGroup;
                    viewGroup.setVisibility(0);
                    viewGroup.setVisibility(4);
                    c = 7;
                    break;
                case '\n':
                    viewGroup = viewGroup;
                    int visibility = viewGroup.getVisibility();
                    viewGroup.setVisibility(4);
                    viewGroup.setVisibility(visibility);
                    c = 7;
                    break;
            }
        }
    }

    private void A09(C8G c8g) {
        AnonymousClass85 anonymousClass85 = this;
        View view = null;
        char c = anonymousClass85.A08.A1l() ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    c8g = c8g;
                    view = c8g.A0H;
                    if (C02985s.A00(view) != 0) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    view = view;
                    C02985s.A09(view, 1);
                    c = 4;
                    break;
                case 4:
                    view = view;
                    if (!C02985s.A0E(view)) {
                        c = 5;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 5:
                    anonymousClass85 = anonymousClass85;
                    c8g = c8g;
                    view = view;
                    c8g.A0T(16384);
                    C02985s.A0A(view, anonymousClass85.A08.A09.A0A());
                    c = 6;
                    break;
                case 6:
                    return;
            }
        }
    }

    private void A0A(C8G c8g) {
        if (c8g.A0H instanceof ViewGroup) {
            A08((ViewGroup) c8g.A0H, false);
        }
    }

    private final void A0B(C8G c8g) {
        AnonymousClass85 anonymousClass85 = this;
        char c = anonymousClass85.A08.A07 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass85 = anonymousClass85;
                    c8g = c8g;
                    anonymousClass85.A08.A07.onViewRecycled(c8g);
                    c = 3;
                    break;
                case 3:
                    anonymousClass85 = anonymousClass85;
                    if (anonymousClass85.A08.A04 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    anonymousClass85 = anonymousClass85;
                    c8g = c8g;
                    anonymousClass85.A08.A04.A0C(c8g);
                    c = 5;
                    break;
                case 5:
                    anonymousClass85 = anonymousClass85;
                    if (anonymousClass85.A08.A0s == null) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    anonymousClass85 = anonymousClass85;
                    c8g = c8g;
                    anonymousClass85.A08.A0t.A0B(c8g);
                    c = 7;
                    break;
                case 7:
                    return;
            }
        }
    }

    private final boolean A0C(C8G c8g) {
        AnonymousClass85 anonymousClass85 = this;
        boolean zA07 = true;
        char c = c8g.A0c() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass85 = anonymousClass85;
                    zA07 = anonymousClass85.A08.A0s.A07();
                    c = 3;
                    break;
                case 3:
                    return zA07;
                case 4:
                    c8g = c8g;
                    if (c8g.A03 < 0) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    anonymousClass85 = anonymousClass85;
                    c8g = c8g;
                    if (c8g.A03 < anonymousClass85.A08.A04.A03()) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    throw new IndexOutOfBoundsException(A04(82, 60, 26) + c8g + anonymousClass85.A08.A1B());
                case 7:
                    anonymousClass85 = anonymousClass85;
                    if (!anonymousClass85.A08.A0s.A07()) {
                        c = '\b';
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\b':
                    anonymousClass85 = anonymousClass85;
                    c8g = c8g;
                    if (anonymousClass85.A08.A04.A04(c8g.A03) == c8g.A0H()) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    zA07 = false;
                    c = 3;
                    break;
                case '\n':
                    anonymousClass85 = anonymousClass85;
                    if (!anonymousClass85.A08.A04.A0G()) {
                        c = 3;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    anonymousClass85 = anonymousClass85;
                    c8g = c8g;
                    if (c8g.A0K() == anonymousClass85.A08.A04.A05(c8g.A03)) {
                        c = 3;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    zA07 = false;
                    c = 3;
                    break;
            }
        }
    }

    private boolean A0D(C8G c8g, int i, int i2, long j) {
        AnonymousClass85 anonymousClass85 = this;
        boolean z = false;
        c8g.A08 = anonymousClass85.A08;
        int iA0H = c8g.A0H();
        long nanoTime = anonymousClass85.A08.getNanoTime();
        char c = j != Long.MAX_VALUE ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass85 = anonymousClass85;
                    if (!anonymousClass85.A01.A0A(iA0H, nanoTime, j)) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 3:
                    z = false;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    anonymousClass85 = anonymousClass85;
                    c8g = c8g;
                    anonymousClass85.A08.A04.A0D(c8g, i);
                    long endBindNs = anonymousClass85.A08.getNanoTime();
                    anonymousClass85.A01.A05(c8g.A0H(), endBindNs - nanoTime);
                    anonymousClass85.A09(c8g);
                    if (!anonymousClass85.A08.A0s.A07()) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c8g = c8g;
                    c8g.A04 = i2;
                    c = 7;
                    break;
                case 7:
                    z = true;
                    c = 4;
                    break;
            }
        }
    }

    public final int A0E() {
        return this.A05.size();
    }

    public final View A0F(int i) {
        return this.A05.get(i).A0H;
    }

    public final View A0G(int i) {
        return A00(i, false);
    }

    public final AnonymousClass84 A0H() {
        if (this.A01 == null) {
            this.A01 = new AnonymousClass84();
        }
        return this.A01;
    }

    @Nullable
    public final C8G A0I(int i, boolean z, long j) {
        AnonymousClass85 anonymousClass85 = this;
        C8H c8hA07 = null;
        int iA0D = 0;
        int iA04 = 0;
        View viewA00 = null;
        C8G c8g = null;
        long nanoTime = 0;
        C8G c8gA02 = null;
        boolean z2 = false;
        C7L c7l = null;
        boolean zA0D = false;
        boolean z3 = false;
        C8G c8g2 = null;
        ViewGroup.LayoutParams layoutParams = null;
        char c = i >= 0 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass85 = anonymousClass85;
                    if (i < anonymousClass85.A08.A0s.A03()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    AnonymousClass85 anonymousClass852 = anonymousClass85;
                    throw new IndexOutOfBoundsException(A04(202, 22, 90) + i + A04(0, 1, 9) + i + A04(518, 14, 118) + anonymousClass852.A08.A0s.A03() + anonymousClass852.A08.A1B());
                case 4:
                    anonymousClass85 = anonymousClass85;
                    z2 = false;
                    c8gA02 = null;
                    if (!anonymousClass85.A08.A0s.A07()) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    anonymousClass85 = anonymousClass85;
                    c8gA02 = anonymousClass85.A01(i);
                    if (c8gA02 == null) {
                        c = 22;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    z2 = true;
                    c = 7;
                    break;
                case 7:
                    if (c8gA02 != null) {
                        c = 15;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    anonymousClass85 = anonymousClass85;
                    c8gA02 = anonymousClass85.A02(i, z);
                    if (c8gA02 == null) {
                        c = 15;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    anonymousClass85 = anonymousClass85;
                    c8gA02 = c8gA02;
                    if (!anonymousClass85.A0C(c8gA02)) {
                        c = '\n';
                        break;
                    } else {
                        c = 21;
                        break;
                    }
                case '\n':
                    if (!z) {
                        c = 11;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 11:
                    c8gA02 = c8gA02;
                    c8gA02.A0T(4);
                    if (!c8gA02.A0d()) {
                        c = 19;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    anonymousClass85 = anonymousClass85;
                    c8gA02 = c8gA02;
                    anonymousClass85.A08.removeDetachedView(c8gA02.A0H, false);
                    c8gA02.A0S();
                    c = '\r';
                    break;
                case '\r':
                    anonymousClass85 = anonymousClass85;
                    c8gA02 = c8gA02;
                    anonymousClass85.A0b(c8gA02);
                    c = 14;
                    break;
                case 14:
                    c8gA02 = null;
                    c = 15;
                    break;
                case 15:
                    if (c8gA02 != null) {
                        c = '%';
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    anonymousClass85 = anonymousClass85;
                    iA0D = anonymousClass85.A08.A00.A0D(i);
                    if (iA0D < 0) {
                        c = 18;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    anonymousClass85 = anonymousClass85;
                    if (iA0D < anonymousClass85.A08.A04.A03()) {
                        c = 23;
                        break;
                    } else {
                        c = 18;
                        break;
                    }
                case 18:
                    AnonymousClass85 anonymousClass853 = anonymousClass85;
                    throw new IndexOutOfBoundsException(A04(226, 46, 118) + i + A04(ScriptIntrinsicBLAS.RIGHT, 8, 43) + iA0D + A04(224, 2, 119) + A04(328, 6, 55) + anonymousClass853.A08.A0s.A03() + anonymousClass853.A08.A1B());
                case 19:
                    c8gA02 = c8gA02;
                    if (!c8gA02.A0i()) {
                        c = '\r';
                        break;
                    } else {
                        c = 20;
                        break;
                    }
                case 20:
                    c8gA02 = c8gA02;
                    c8gA02.A0O();
                    c = '\r';
                    break;
                case 21:
                    z2 = true;
                    c = 15;
                    break;
                case 22:
                    z2 = false;
                    c = 7;
                    break;
                case 23:
                    anonymousClass85 = anonymousClass85;
                    iA04 = anonymousClass85.A08.A04.A04(iA0D);
                    if (!anonymousClass85.A08.A04.A0G()) {
                        c = 26;
                        break;
                    } else {
                        c = 24;
                        break;
                    }
                case 24:
                    anonymousClass85 = anonymousClass85;
                    c8gA02 = anonymousClass85.A03(anonymousClass85.A08.A04.A05(iA0D), iA04, z);
                    if (c8gA02 == null) {
                        c = 26;
                        break;
                    } else {
                        c = 25;
                        break;
                    }
                case 25:
                    c8gA02 = c8gA02;
                    c8gA02.A03 = iA0D;
                    z2 = true;
                    c = 26;
                    break;
                case 26:
                    if (c8gA02 != null) {
                        c = '3';
                        break;
                    } else {
                        c = 27;
                        break;
                    }
                case 27:
                    anonymousClass85 = anonymousClass85;
                    if (anonymousClass85.A04 == null) {
                        c = '3';
                        break;
                    } else {
                        c = 28;
                        break;
                    }
                case 28:
                    anonymousClass85 = anonymousClass85;
                    viewA00 = anonymousClass85.A04.A00(anonymousClass85, i, iA04);
                    if (viewA00 == null) {
                        c = '3';
                        break;
                    } else {
                        c = 29;
                        break;
                    }
                case 29:
                    anonymousClass85 = anonymousClass85;
                    viewA00 = viewA00;
                    c8gA02 = anonymousClass85.A08.A1A(viewA00);
                    if (c8gA02 != null) {
                        c = 31;
                        break;
                    } else {
                        c = 30;
                        break;
                    }
                case 30:
                    throw new IllegalArgumentException(A04(334, 74, 49) + anonymousClass85.A08.A1B());
                case 31:
                    c8gA02 = c8gA02;
                    if (!c8gA02.A0h()) {
                        c = '3';
                        break;
                    } else {
                        c = ' ';
                        break;
                    }
                case ' ':
                    throw new IllegalArgumentException(A04(666, 113, 97) + anonymousClass85.A08.A1B());
                case '!':
                    anonymousClass85 = anonymousClass85;
                    c8gA02 = anonymousClass85.A08.A04.A06(anonymousClass85.A08, iA04);
                    if (!C8H.A1D) {
                        c = '$';
                        break;
                    } else {
                        c = '\"';
                        break;
                    }
                case '\"':
                    c8gA02 = c8gA02;
                    c8hA07 = C8H.A07(c8gA02.A0H);
                    if (c8hA07 == null) {
                        c = '$';
                        break;
                    } else {
                        c = '#';
                        break;
                    }
                case '#':
                    c8gA02 = c8gA02;
                    c8hA07 = c8hA07;
                    c8gA02.A09 = new WeakReference<>(c8hA07);
                    c = '$';
                    break;
                case '$':
                    anonymousClass85 = anonymousClass85;
                    anonymousClass85.A01.A06(iA04, anonymousClass85.A08.getNanoTime() - nanoTime);
                    c = '%';
                    break;
                case '%':
                    if (!z2) {
                        c = '*';
                        break;
                    } else {
                        c = '&';
                        break;
                    }
                case '&':
                    anonymousClass85 = anonymousClass85;
                    if (!anonymousClass85.A08.A0s.A07()) {
                        c = '\'';
                        break;
                    } else {
                        c = '*';
                        break;
                    }
                case '\'':
                    if (!c8gA02.A0k(8192)) {
                        c = '*';
                        break;
                    } else {
                        c = '(';
                        break;
                    }
                case '(':
                    anonymousClass85 = anonymousClass85;
                    c8gA02.A0U(0, 8192);
                    if (!anonymousClass85.A08.A0s.A0C) {
                        c = '*';
                        break;
                    } else {
                        c = ')';
                        break;
                    }
                case ')':
                    anonymousClass85 = anonymousClass85;
                    anonymousClass85.A08.A1f(c8gA02, anonymousClass85.A08.A05.A08(anonymousClass85.A08.A0s, c8gA02, C7B.A00(c8gA02) | 4096, c8gA02.A0L()));
                    c = '*';
                    break;
                case '*':
                    anonymousClass85 = anonymousClass85;
                    zA0D = false;
                    if (!anonymousClass85.A08.A0s.A07()) {
                        c = 'A';
                        break;
                    } else {
                        c = '+';
                        break;
                    }
                case '+':
                    if (!c8gA02.A0a()) {
                        c = 'A';
                        break;
                    } else {
                        c = ',';
                        break;
                    }
                case ',':
                    c8gA02.A04 = i;
                    c = '-';
                    break;
                case '-':
                    layoutParams = c8gA02.A0H.getLayoutParams();
                    if (layoutParams != null) {
                        c = '>';
                        break;
                    } else {
                        c = '.';
                        break;
                    }
                case '.':
                    anonymousClass85 = anonymousClass85;
                    c7l = (C7L) anonymousClass85.A08.generateDefaultLayoutParams();
                    c8gA02.A0H.setLayoutParams(c7l);
                    c = '/';
                    break;
                case '/':
                    c7l = c7l;
                    c7l.A00 = c8gA02;
                    if (!z2) {
                        c = '=';
                        break;
                    } else {
                        c = '0';
                        break;
                    }
                case '0':
                    if (!zA0D) {
                        c = '=';
                        break;
                    } else {
                        c = '1';
                        break;
                    }
                case '1':
                    z3 = true;
                    c = '2';
                    break;
                case '2':
                    c7l = c7l;
                    c7l.A02 = z3;
                    c8g = c8gA02;
                    c = ';';
                    break;
                case '3':
                    if (c8gA02 != null) {
                        c = '7';
                        break;
                    } else {
                        c = '4';
                        break;
                    }
                case '4':
                    anonymousClass85 = anonymousClass85;
                    c8gA02 = anonymousClass85.A0H().A03(iA04);
                    if (c8gA02 == null) {
                        c = '7';
                        break;
                    } else {
                        c = '5';
                        break;
                    }
                case '5':
                    c8gA02 = c8gA02;
                    c8gA02.A0Q();
                    if (!C8H.A1B) {
                        c = '7';
                        break;
                    } else {
                        c = '6';
                        break;
                    }
                case '6':
                    anonymousClass85 = anonymousClass85;
                    c8gA02 = c8gA02;
                    anonymousClass85.A0A(c8gA02);
                    c = '7';
                    break;
                case '7':
                    c8g2 = c8gA02;
                    if (c8g2 != null) {
                        c = '<';
                        break;
                    } else {
                        c = '8';
                        break;
                    }
                case '8':
                    anonymousClass85 = anonymousClass85;
                    nanoTime = anonymousClass85.A08.getNanoTime();
                    if (j == Long.MAX_VALUE) {
                        c = '!';
                        break;
                    } else {
                        c = '9';
                        break;
                    }
                case '9':
                    anonymousClass85 = anonymousClass85;
                    if (!anonymousClass85.A01.A0B(iA04, nanoTime, j)) {
                        c = ':';
                        break;
                    } else {
                        c = '!';
                        break;
                    }
                case ':':
                    c8g = null;
                    c = ';';
                    break;
                case ';':
                    return c8g;
                case '<':
                    c8gA02 = c8g2;
                    c = '%';
                    break;
                case '=':
                    z3 = false;
                    c = '2';
                    break;
                case '>':
                    anonymousClass85 = anonymousClass85;
                    layoutParams = layoutParams;
                    if (!anonymousClass85.A08.checkLayoutParams(layoutParams)) {
                        c = '?';
                        break;
                    } else {
                        c = '@';
                        break;
                    }
                case '?':
                    anonymousClass85 = anonymousClass85;
                    layoutParams = layoutParams;
                    c7l = (C7L) anonymousClass85.A08.generateLayoutParams(layoutParams);
                    c8gA02.A0H.setLayoutParams(c7l);
                    c = '/';
                    break;
                case '@':
                    layoutParams = layoutParams;
                    c7l = (C7L) layoutParams;
                    c = '/';
                    break;
                case 'A':
                    if (!c8gA02.A0a()) {
                        c = 'D';
                        break;
                    } else {
                        c = 'B';
                        break;
                    }
                case 'B':
                    if (!c8gA02.A0g()) {
                        c = 'C';
                        break;
                    } else {
                        c = 'D';
                        break;
                    }
                case 'C':
                    if (!c8gA02.A0b()) {
                        c = '-';
                        break;
                    } else {
                        c = 'D';
                        break;
                    }
                case 'D':
                    anonymousClass85 = anonymousClass85;
                    zA0D = anonymousClass85.A0D(c8gA02, anonymousClass85.A08.A00.A0D(i), i, j);
                    c = '-';
                    break;
            }
        }
    }

    public final List<C8G> A0J() {
        return this.A07;
    }

    public final void A0K() {
        AnonymousClass85 anonymousClass85 = this;
        int size = 0;
        int scrapCount = 0;
        int size2 = 0;
        int i = 0;
        int size3 = anonymousClass85.A06.size();
        int i2 = 0;
        int changedScrapCount = 2;
        while (true) {
            switch (changedScrapCount) {
                case 2:
                    if (i2 >= size3) {
                        changedScrapCount = 4;
                        break;
                    } else {
                        changedScrapCount = 3;
                        break;
                    }
                case 3:
                    anonymousClass85 = anonymousClass85;
                    C8G holder = anonymousClass85.A06.get(i2);
                    holder.A0M();
                    i2++;
                    changedScrapCount = 2;
                    break;
                case 4:
                    anonymousClass85 = anonymousClass85;
                    size = anonymousClass85.A05.size();
                    scrapCount = 0;
                    changedScrapCount = 5;
                    break;
                case 5:
                    if (scrapCount >= size) {
                        changedScrapCount = 7;
                        break;
                    } else {
                        changedScrapCount = 6;
                        break;
                    }
                case 6:
                    anonymousClass85 = anonymousClass85;
                    anonymousClass85.A05.get(scrapCount).A0M();
                    scrapCount++;
                    changedScrapCount = 5;
                    break;
                case 7:
                    anonymousClass85 = anonymousClass85;
                    if (anonymousClass85.A02 == null) {
                        changedScrapCount = 11;
                        break;
                    } else {
                        changedScrapCount = 8;
                        break;
                    }
                case 8:
                    anonymousClass85 = anonymousClass85;
                    size2 = anonymousClass85.A02.size();
                    i = 0;
                    changedScrapCount = 9;
                    break;
                case 9:
                    if (i >= size2) {
                        changedScrapCount = 11;
                        break;
                    } else {
                        changedScrapCount = 10;
                        break;
                    }
                case 10:
                    anonymousClass85 = anonymousClass85;
                    anonymousClass85.A02.get(i).A0M();
                    i++;
                    changedScrapCount = 9;
                    break;
                case 11:
                    return;
            }
        }
    }

    public final void A0L() {
        this.A05.clear();
        if (this.A02 != null) {
            this.A02.clear();
        }
    }

    public final void A0M() {
        AnonymousClass85 anonymousClass85 = this;
        C7L layoutParams = null;
        int size = anonymousClass85.A06.size();
        int i = 0;
        int i2 = 2;
        while (true) {
            switch (i2) {
                case 2:
                    if (i >= size) {
                        i2 = 6;
                        break;
                    } else {
                        i2 = 3;
                        break;
                    }
                case 3:
                    anonymousClass85 = anonymousClass85;
                    C8G holder = anonymousClass85.A06.get(i);
                    layoutParams = (C7L) holder.A0H.getLayoutParams();
                    if (layoutParams == null) {
                        i2 = 5;
                        break;
                    } else {
                        i2 = 4;
                        break;
                    }
                case 4:
                    layoutParams = layoutParams;
                    layoutParams.A01 = true;
                    i2 = 5;
                    break;
                case 5:
                    i++;
                    i2 = 2;
                    break;
                case 6:
                    return;
            }
        }
    }

    public final void A0N() {
        AnonymousClass85 anonymousClass85 = this;
        int size = 0;
        int i = 0;
        C8G c8g = null;
        char c = anonymousClass85.A08.A04 != null ? (char) 2 : '\b';
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass85 = anonymousClass85;
                    if (!anonymousClass85.A08.A04.A0G()) {
                        c = '\b';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    anonymousClass85 = anonymousClass85;
                    size = anonymousClass85.A06.size();
                    i = 0;
                    c = 4;
                    break;
                case 4:
                    if (i >= size) {
                        c = '\t';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    anonymousClass85 = anonymousClass85;
                    c8g = anonymousClass85.A06.get(i);
                    if (c8g == null) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c8g = c8g;
                    c8g.A0T(6);
                    c8g.A0Y(null);
                    c = 7;
                    break;
                case 7:
                    i++;
                    c = 4;
                    break;
                case '\b':
                    anonymousClass85 = anonymousClass85;
                    anonymousClass85.A06();
                    c = '\t';
                    break;
                case '\t':
                    return;
            }
        }
    }

    public final void A0O() {
        AnonymousClass85 anonymousClass85 = this;
        int i = 0;
        int size = 0;
        char c = anonymousClass85.A08.A06 != null ? (char) 2 : (char) 7;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass85 = anonymousClass85;
                    i = anonymousClass85.A08.A06.A00;
                    c = 3;
                    break;
                case 3:
                    anonymousClass85 = anonymousClass85;
                    anonymousClass85.A00 = anonymousClass85.A03 + i;
                    size = anonymousClass85.A06.size() - 1;
                    c = 4;
                    break;
                case 4:
                    if (size < 0) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    anonymousClass85 = anonymousClass85;
                    if (anonymousClass85.A06.size() <= anonymousClass85.A00) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    anonymousClass85 = anonymousClass85;
                    anonymousClass85.A07(size);
                    size--;
                    c = 4;
                    break;
                case 7:
                    i = 0;
                    c = 3;
                    break;
                case '\b':
                    return;
            }
        }
    }

    public final void A0P() {
        this.A05.clear();
        A06();
    }

    public final void A0Q(int i) {
        this.A03 = i;
        A0O();
    }

    public final void A0R(int i, int i2) {
        AnonymousClass85 anonymousClass85 = this;
        C8G c8g = null;
        int size = anonymousClass85.A06.size();
        int i3 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i3 >= size) {
                        c = 7;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    anonymousClass85 = anonymousClass85;
                    c8g = anonymousClass85.A06.get(i3);
                    if (c8g == null) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8g = c8g;
                    if (c8g.A03 < i) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c8g = c8g;
                    c8g.A0W(i2, true);
                    c = 6;
                    break;
                case 6:
                    i3++;
                    c = 2;
                    break;
                case 7:
                    return;
            }
        }
    }

    public final void A0S(int end, int i) {
        AnonymousClass85 anonymousClass85 = this;
        C8G c8g = null;
        int start = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        char c = end < i ? (char) 2 : '\f';
        while (true) {
            switch (c) {
                case 2:
                    i3 = end;
                    i4 = i;
                    i5 = -1;
                    c = 3;
                    break;
                case 3:
                    anonymousClass85 = anonymousClass85;
                    start = anonymousClass85.A06.size();
                    i2 = 0;
                    c = 4;
                    break;
                case 4:
                    if (i2 >= start) {
                        c = '\r';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    anonymousClass85 = anonymousClass85;
                    c8g = anonymousClass85.A06.get(i2);
                    if (c8g == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c8g = c8g;
                    if (c8g.A03 < i3) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c8g = c8g;
                    if (c8g.A03 <= i4) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    i2++;
                    c = 4;
                    break;
                case '\t':
                    c8g = c8g;
                    if (c8g.A03 != end) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c8g = c8g;
                    c8g.A0W(i - end, false);
                    c = '\b';
                    break;
                case 11:
                    c8g = c8g;
                    c8g.A0W(i5, false);
                    c = '\b';
                    break;
                case '\f':
                    i3 = i;
                    i4 = end;
                    i5 = 1;
                    c = 3;
                    break;
                case '\r':
                    return;
            }
        }
    }

    public final void A0T(int i, int i2) {
        AnonymousClass85 anonymousClass85 = this;
        C8G c8g = null;
        int i3 = 0;
        int i4 = i + i2;
        int size = anonymousClass85.A06.size() - 1;
        int pos = 2;
        while (true) {
            switch (pos) {
                case 2:
                    if (size < 0) {
                        pos = 8;
                        break;
                    } else {
                        pos = 3;
                        break;
                    }
                case 3:
                    anonymousClass85 = anonymousClass85;
                    c8g = anonymousClass85.A06.get(size);
                    if (c8g != null) {
                        pos = 5;
                        break;
                    } else {
                        pos = 4;
                        break;
                    }
                case 4:
                    size--;
                    pos = 2;
                    break;
                case 5:
                    c8g = c8g;
                    i3 = c8g.A03;
                    if (i3 < i) {
                        pos = 4;
                        break;
                    } else {
                        pos = 6;
                        break;
                    }
                case 6:
                    if (i3 >= i4) {
                        pos = 4;
                        break;
                    } else {
                        pos = 7;
                        break;
                    }
                case 7:
                    anonymousClass85 = anonymousClass85;
                    c8g = c8g;
                    c8g.A0T(2);
                    anonymousClass85.A07(size);
                    pos = 4;
                    break;
                case 8:
                    return;
            }
        }
    }

    public final void A0U(int i, int i2, boolean z) {
        AnonymousClass85 anonymousClass85 = this;
        C8G c8g = null;
        int i3 = i + i2;
        int size = anonymousClass85.A06.size() - 1;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (size < 0) {
                        c = '\t';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    anonymousClass85 = anonymousClass85;
                    c8g = anonymousClass85.A06.get(size);
                    if (c8g == null) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8g = c8g;
                    if (c8g.A03 < i3) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c8g = c8g;
                    c8g.A0W(-i2, z);
                    c = 6;
                    break;
                case 6:
                    size--;
                    c = 2;
                    break;
                case 7:
                    c8g = c8g;
                    if (c8g.A03 < i) {
                        c = 6;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    anonymousClass85 = anonymousClass85;
                    c8g = c8g;
                    c8g.A0T(8);
                    anonymousClass85.A07(size);
                    c = 6;
                    break;
                case '\t':
                    return;
            }
        }
    }

    public final void A0V(View view) {
        C8G c8gA05 = C8H.A05(view);
        c8gA05.A0F = null;
        c8gA05.A0G = false;
        c8gA05.A0O();
        A0b(c8gA05);
    }

    public final void A0W(View view) {
        AnonymousClass85 anonymousClass85 = this;
        C8G c8gA05 = C8H.A05(view);
        char c = !c8gA05.A0k(12) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8gA05 = c8gA05;
                    if (!c8gA05.A0f()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    anonymousClass85 = anonymousClass85;
                    c8gA05 = c8gA05;
                    if (!anonymousClass85.A08.A1t(c8gA05)) {
                        c = '\b';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8gA05 = c8gA05;
                    if (!c8gA05.A0b()) {
                        c = 11;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c8gA05 = c8gA05;
                    if (!c8gA05.A0c()) {
                        c = 6;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 6:
                    anonymousClass85 = anonymousClass85;
                    if (!anonymousClass85.A08.A04.A0G()) {
                        c = 7;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 7:
                    throw new IllegalArgumentException(A04(544, 122, 58) + anonymousClass85.A08.A1B());
                case '\b':
                    anonymousClass85 = anonymousClass85;
                    if (anonymousClass85.A02 != null) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    anonymousClass85 = anonymousClass85;
                    anonymousClass85.A02 = new ArrayList<>();
                    c = '\n';
                    break;
                case '\n':
                    anonymousClass85 = anonymousClass85;
                    c8gA05 = c8gA05;
                    c8gA05.A0X(anonymousClass85, true);
                    anonymousClass85.A02.add(c8gA05);
                    c = '\f';
                    break;
                case 11:
                    anonymousClass85 = anonymousClass85;
                    c8gA05 = c8gA05;
                    c8gA05.A0X(anonymousClass85, false);
                    anonymousClass85.A05.add(c8gA05);
                    c = '\f';
                    break;
                case '\f':
                    return;
            }
        }
    }

    public final void A0X(View view) {
        AnonymousClass85 anonymousClass85 = this;
        C8G c8gA05 = C8H.A05(view);
        char c = c8gA05.A0e() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass85 = anonymousClass85;
                    view = view;
                    anonymousClass85.A08.removeDetachedView(view, false);
                    c = 3;
                    break;
                case 3:
                    c8gA05 = c8gA05;
                    if (!c8gA05.A0d()) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8gA05 = c8gA05;
                    c8gA05.A0S();
                    c = 5;
                    break;
                case 5:
                    anonymousClass85.A0b(c8gA05);
                    return;
                case 6:
                    c8gA05 = c8gA05;
                    if (!c8gA05.A0i()) {
                        c = 5;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c8gA05 = c8gA05;
                    c8gA05.A0O();
                    c = 5;
                    break;
            }
        }
    }

    public final void A0Y(AbstractC02102g abstractC02102g, AbstractC02102g abstractC02102g2, boolean z) {
        A0P();
        A0H().A08(abstractC02102g, abstractC02102g2, z);
    }

    public final void A0Z(AnonymousClass84 anonymousClass84) {
        AnonymousClass85 anonymousClass85 = this;
        char c = anonymousClass85.A01 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass85 = anonymousClass85;
                    anonymousClass85.A01.A04();
                    c = 3;
                    break;
                case 3:
                    anonymousClass85 = anonymousClass85;
                    anonymousClass84 = anonymousClass84;
                    anonymousClass85.A01 = anonymousClass84;
                    if (anonymousClass84 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    anonymousClass85 = anonymousClass85;
                    anonymousClass85.A01.A07(anonymousClass85.A08.getAdapter());
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }

    public final void A0a(C8E c8e) {
        this.A04 = c8e;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00d7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A0b(com.facebook.ads.redexgen.X.C8G r8) {
        /*
            Method dump skipped, instructions count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass85.A0b(com.facebook.ads.redexgen.X.8G):void");
    }

    public final void A0c(C8G c8g) {
        AnonymousClass85 anonymousClass85 = this;
        char c = c8g.A0G ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass85 = anonymousClass85;
                    c8g = c8g;
                    anonymousClass85.A02.remove(c8g);
                    c = 3;
                    break;
                case 3:
                    C8G c8g2 = c8g;
                    c8g2.A0F = null;
                    c8g2.A0G = false;
                    c8g2.A0O();
                    return;
                case 4:
                    anonymousClass85 = anonymousClass85;
                    c8g = c8g;
                    anonymousClass85.A05.remove(c8g);
                    c = 3;
                    break;
            }
        }
    }

    public final void A0d(C8G c8g, boolean z) {
        AnonymousClass85 anonymousClass85 = this;
        C8H c8h = null;
        C8H.A0m(c8g);
        char c = c8g.A0k(16384) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c8g = c8g;
                    c8h = null;
                    c8g.A0U(0, 16384);
                    C02985s.A0A(c8g.A0H, null);
                    c = 3;
                    break;
                case 3:
                    if (!z) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    anonymousClass85 = anonymousClass85;
                    c8g = c8g;
                    anonymousClass85.A0B(c8g);
                    c = 5;
                    break;
                case 5:
                    C8G c8g2 = c8g;
                    c8g2.A08 = c8h;
                    anonymousClass85.A0H().A09(c8g2);
                    return;
            }
        }
    }
}
