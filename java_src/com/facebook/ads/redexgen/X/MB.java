package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import io.agora.rtc.Constants;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class MB implements AnonymousClass22<Bundle> {
    private static byte[] A0C;
    private int A00;
    private int A01;

    @Nullable
    private String A02;

    @Nullable
    private String A03;
    private boolean A04;
    private final Context A05;
    private final C02574b A06;
    private final KM A07;
    private final QJ A08;
    private final M3 A09;
    private final String A0A;

    @Nullable
    private final Map<String, String> A0B;

    static {
        A0O();
    }

    private static String A0G(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 59);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A0O() {
        A0C = new byte[]{10, 11, 1, -11, 12, 43, 33, 34, 22, 45, 0, -11, 7, 8, -42, 3, 9, 2, -8, -11, 6, 13, -24, -3, 1, -7, -31, -25, -17, -31, -26, -36, -25, -17, -18, -16, 1, -10, -4, -5, 36, 37, 15, -58, -39, -48, -47, -51, -62, -38, -58, -45, 13, 3, 4, -42, -40, -53, -42, -54, -58, -61, -60, -70, 8, -2, -13, -40, -36, -47, -43, -51, -50, -60, -41, -43, -64, -50, -44, 8, 15, 37, 31, 23, -19, -18, -42, -37, -88, -99, -81, -80, -116, -82, -85, -93, -82, -95, -81, -81, -112, -91, -87, -95, -119, -113, 0, -10, -12, 7, -14, 0, 6, -17, -13, -51, -62, -58, -66, -98, -79, -90, -86, -94, -100, -86, -80, -68, -74, -67, 9, 1, -50, -49, -73, -54, -53, -58, -48, -45, -64, -28, -48, -37, -40, -29, -24, -68, -48, -35, -48, -42, -44, -31, -26, -28, -39, -35, -43, -49, -35, -29};
    }

    public MB(Context context, KM km, QJ qj, List<AbstractC02021y> list, String str) {
        this(context, km, qj, list, str, null);
    }

    private MB(Context context, KM km, QJ qj, List<AbstractC02021y> list, String str, @Nullable Bundle bundle) {
        this(context, km, qj, list, str, bundle, null);
    }

    public MB(Context context, KM km, QJ qj, List<AbstractC02021y> list, String str, @Nullable Bundle bundle, @Nullable Map<String, String> map) {
        this.A04 = true;
        this.A01 = 0;
        this.A00 = 0;
        this.A02 = null;
        this.A03 = null;
        this.A05 = context;
        this.A07 = km;
        this.A08 = qj;
        this.A0A = str;
        this.A0B = map;
        list.add(new M9(this, 0.5d, -1.0d, 2.0d, true));
        list.add(new M7(this, 1.0E-7d, -1.0d, 0.001d, false));
        if (bundle != null) {
            this.A06 = new C02574b(qj.getView(), list, bundle.getBundle(A0G(138, 16, 52)));
            this.A01 = bundle.getInt(A0G(88, 18, 1));
            this.A00 = bundle.getInt(A0G(10, 18, 89));
        } else {
            this.A06 = new C02574b(qj.getView(), list);
        }
        this.A09 = new M3(new Handler(), this);
    }

    private final float A0E() {
        return OS.A00(this.A05) * this.A08.getVolume();
    }

    private Map<String, String> A0I(int i) {
        MB mb = this;
        boolean z = false;
        boolean z2 = true;
        HashMap<String, String> map = new HashMap<>();
        char c = mb.A08.getVideoStartReason() == EnumC0697Lh.A03 ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    z = z2;
                    c = 3;
                    break;
                case 3:
                    mb = mb;
                    if (!mb.A08.A3x()) {
                        c = 4;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 4:
                    MB mb2 = mb;
                    HashMap<String, String> map2 = map;
                    OS.A03(map2, z, z2);
                    mb2.A0R(map2);
                    mb2.A0Q(map2);
                    mb2.A0T(map2, i);
                    mb2.A0S(map2);
                    mb2.A0P(map2);
                    return map2;
                case 5:
                    z2 = false;
                    c = 4;
                    break;
                case 6:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> A0J(M5 m5) {
        return A0K(m5, this.A08.getCurrentPositionInMillis());
    }

    private Map<String, String> A0K(M5 m5, int i) {
        Map<String, String> mapA0I = A0I(i);
        mapA0I.put(A0G(34, 6, 82), String.valueOf(m5.A00));
        return mapA0I;
    }

    private void A0M() {
        this.A07.A4b(this.A0A, A0J(M5.A04));
    }

    private void A0N() {
        this.A07.A4b(this.A0A, A0J(M5.A0A));
    }

    private void A0P(HashMap<String, String> map) {
        if (this.A0B != null) {
            map.putAll(this.A0B);
        }
    }

    private void A0Q(Map<String, String> map) {
        MB mb = this;
        C02594d c02594dA02 = mb.A06.A02();
        C02584c c02584cA00 = c02594dA02.A00();
        map.put(A0G(40, 3, 115), String.valueOf(c02584cA00.A00()));
        map.put(A0G(61, 3, 18), String.valueOf(c02584cA00.A05()));
        map.put(A0G(0, 5, 89), String.valueOf(c02584cA00.A02()));
        map.put(A0G(Constants.ERR_PUBLISH_STREAM_INTERNAL_SERVER_ERROR, 8, 53), String.valueOf(c02584cA00.A01() * 1000.0d));
        map.put(A0G(72, 7, 38), String.valueOf(c02584cA00.A03() * 1000.0d));
        char c = mb.A02 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    mb = mb;
                    map = map;
                    map.put(A0G(84, 4, 60), mb.A02);
                    c = 3;
                    break;
                case 3:
                    mb = mb;
                    if (mb.A03 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    mb = mb;
                    map = map;
                    map.put(A0G(132, 6, 29), mb.A03);
                    c = 5;
                    break;
                case 5:
                    Map<String, String> map2 = map;
                    C02584c c02584cA01 = c02594dA02.A01();
                    map2.put(A0G(64, 3, 87), String.valueOf(c02584cA01.A00()));
                    map2.put(A0G(52, 3, 92), String.valueOf(c02584cA01.A05()));
                    map2.put(A0G(5, 5, 122), String.valueOf(c02584cA01.A02()));
                    map2.put(A0G(119, 8, 2), String.valueOf(c02584cA01.A01() * 1000.0d));
                    map2.put(A0G(106, 7, 88), String.valueOf(c02584cA01.A03() * 1000.0d));
                    return;
            }
        }
    }

    private void A0R(Map<String, String> map) {
        map.put(A0G(43, 9, 38), String.valueOf(this.A08.A3w()));
        map.put(A0G(55, 4, 43), Long.toString(this.A08.getInitialBufferTime()));
    }

    private void A0S(Map<String, String> map) {
        Rect rect = new Rect();
        this.A08.getGlobalVisibleRect(rect);
        map.put(A0G(113, 2, 68), String.valueOf(rect.top));
        map.put(A0G(59, 2, 31), String.valueOf(rect.left));
        map.put(A0G(130, 2, 94), String.valueOf(this.A08.getMeasuredHeight()));
        map.put(A0G(79, 2, 93), String.valueOf(this.A08.getMeasuredWidth()));
        WindowManager windowManager = (WindowManager) this.A05.getSystemService(A0G(28, 6, 61));
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        map.put(A0G(81, 3, 116), String.valueOf(displayMetrics.heightPixels));
        map.put(A0G(127, 3, 11), String.valueOf(displayMetrics.widthPixels));
    }

    private void A0T(Map<String, String> map, int i) {
        map.put(A0G(67, 5, 45), String.valueOf(this.A00 / 1000.0f));
        map.put(A0G(115, 4, 30), String.valueOf(i / 1000.0f));
    }

    public final int A0U() {
        return this.A01;
    }

    public final void A0V() {
        this.A06.A03();
        this.A07.A4b(this.A0A, A0J(M5.A05));
    }

    public final void A0W() {
        this.A07.A4b(this.A0A, A0J(M5.A07));
    }

    public final void A0X() {
        this.A07.A4b(this.A0A, A0J(M5.A08));
    }

    public final void A0Y() {
        MB mb = this;
        char c = ((double) mb.A0E()) < 0.05d ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    mb = mb;
                    if (!mb.A04) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    mb = mb;
                    mb.A0M();
                    mb.A04 = false;
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    mb = mb;
                    if (!mb.A04) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 6:
                    mb = mb;
                    mb.A0N();
                    mb.A04 = true;
                    c = 4;
                    break;
            }
        }
    }

    public final void A0Z() {
        this.A05.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this.A09);
    }

    public final void A0a() {
        this.A05.getContentResolver().unregisterContentObserver(this.A09);
    }

    public final void A0b(int i) {
        A0e(i, false, false);
    }

    public final void A0c(int i) {
        A0e(i, true, false);
        this.A00 = 0;
        this.A01 = 0;
        this.A06.A04();
        this.A06.A03();
    }

    public final void A0d(int i, int i2) {
        A0e(i, true, false);
        this.A00 = i2;
        this.A01 = i2;
        this.A06.A04();
        this.A06.A03();
    }

    public final void A0e(int i, boolean z, boolean z2) {
        MB mb = this;
        char c = ((double) i) > 0.0d ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    mb = mb;
                    if (i >= mb.A01) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return;
                case 4:
                    mb = mb;
                    if (i <= mb.A01) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    mb = mb;
                    mb.A06.A05((i - mb.A01) / 1000.0f, mb.A0E());
                    mb.A01 = i;
                    if (!z2) {
                        c = 6;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 6:
                    mb = mb;
                    if (i - mb.A00 < 5000) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    mb = mb;
                    mb.A07.A4b(mb.A0A, mb.A0K(M5.A09, i));
                    mb.A00 = mb.A01;
                    mb.A06.A04();
                    c = 3;
                    break;
                case '\b':
                    if (!z) {
                        c = 3;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    mb = mb;
                    mb.A07.A4b(mb.A0A, mb.A0K(M5.A09, i));
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass22
    public final Bundle getSaveInstanceState() {
        A0d(A0U(), A0U());
        Bundle bundle = new Bundle();
        bundle.putInt(A0G(88, 18, 1), this.A01);
        bundle.putInt(A0G(10, 18, 89), this.A00);
        bundle.putBundle(A0G(138, 16, 52), this.A06.getSaveInstanceState());
        return bundle;
    }
}
