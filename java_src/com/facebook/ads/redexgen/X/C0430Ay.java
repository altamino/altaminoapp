package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ay, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0430Ay {
    private static double A0E;
    private static float A0F;
    private static long A0G;
    private static long A0H;
    private int A00;
    private int A01;
    private int A02;
    private int A03;
    private int A04;
    private InterfaceC0423Aq A05;
    private InterfaceC0421Ao A06;
    private InterfaceC0419Am A07;
    private EnumC0525Ep A08;
    private Class A09;
    private String A0A;
    private HashMap<Integer, Integer> A0B;
    private Map<Integer, String> A0C;
    private boolean A0D;

    private C0430Ay() {
    }

    public static float A01() {
        return A0F;
    }

    public static long A08() {
        return A0G;
    }

    public static long A09() {
        return A0H;
    }

    public final int A0L() {
        return this.A00;
    }

    public final int A0M() {
        return this.A01;
    }

    public final int A0N() {
        return this.A02;
    }

    public final int A0O() {
        return this.A03;
    }

    public final int A0P() {
        return this.A04;
    }

    public final InterfaceC0423Aq A0Q() {
        return this.A05;
    }

    public final InterfaceC0421Ao A0R() {
        return this.A06;
    }

    public final InterfaceC0419Am A0S() {
        return this.A07;
    }

    public final EnumC0525Ep A0T() {
        return this.A08;
    }

    public final Class A0U() {
        return this.A09;
    }

    @Nullable
    public final Integer A0V(int i) {
        C0430Ay c0430Ay = this;
        Integer num = null;
        char c = c0430Ay.A0B == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    num = null;
                    c = 3;
                    break;
                case 3:
                    return num;
                case 4:
                    c0430Ay = c0430Ay;
                    num = c0430Ay.A0B.get(Integer.valueOf(i));
                    c = 3;
                    break;
            }
        }
    }

    public final String A0W() {
        return this.A0A;
    }

    @SuppressLint({"PublicMethodReturnMutableCollection"})
    public final Map<Integer, String> A0X() {
        return this.A0C;
    }

    public final boolean A0Y() {
        return this.A0D;
    }
}
