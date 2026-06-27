package com.facebook.ads.redexgen.X;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.7B, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public abstract class C7B {
    private InterfaceC03497s A04 = null;
    private ArrayList<InterfaceC03487r> A05 = new ArrayList<>();
    private long A00 = 120;
    private long A03 = 120;
    private long A02 = 250;
    private long A01 = 250;

    public abstract void A0C();

    public abstract void A0D();

    public abstract void A0E(C8G c8g);

    public abstract boolean A0F();

    public abstract boolean A0I(@NonNull C8G c8g, @Nullable C03507t c03507t, @NonNull C03507t c03507t2);

    public abstract boolean A0J(@NonNull C8G c8g, @NonNull C03507t c03507t, @Nullable C03507t c03507t2);

    public abstract boolean A0K(@NonNull C8G c8g, @NonNull C03507t c03507t, @NonNull C03507t c03507t2);

    public abstract boolean A0L(@NonNull C8G c8g, @NonNull C8G c8g2, @NonNull C03507t c03507t, @NonNull C03507t c03507t2);

    public static int A00(C8G c8g) {
        int oldPos = 0;
        int iA0G = 0;
        int iA0J = 0;
        int i = c8g.A0C & 14;
        int pos = c8g.A0b() ? 2 : 4;
        while (true) {
            switch (pos) {
                case 2:
                    oldPos = 4;
                    pos = 3;
                    break;
                case 3:
                    return oldPos;
                case 4:
                    int pos2 = i & 4;
                    if (pos2 != 0) {
                        pos = 9;
                        break;
                    } else {
                        pos = 5;
                        break;
                    }
                case 5:
                    c8g = c8g;
                    iA0J = c8g.A0J();
                    iA0G = c8g.A0G();
                    if (iA0J == -1) {
                        pos = 9;
                        break;
                    } else {
                        pos = 6;
                        break;
                    }
                case 6:
                    if (iA0G == -1) {
                        pos = 9;
                        break;
                    } else {
                        pos = 7;
                        break;
                    }
                case 7:
                    if (iA0J == iA0G) {
                        pos = 9;
                        break;
                    } else {
                        pos = 8;
                        break;
                    }
                case 8:
                    i |= 2048;
                    pos = 9;
                    break;
                case 9:
                    oldPos = i;
                    pos = 3;
                    break;
            }
        }
    }

    private final C03507t A01() {
        return new C03507t();
    }

    private final void A02(C8G c8g) {
    }

    public final long A03() {
        return this.A00;
    }

    public final long A04() {
        return this.A01;
    }

    public final long A05() {
        return this.A02;
    }

    public final long A06() {
        return this.A03;
    }

    @NonNull
    public final C03507t A07(@NonNull C8D c8d, @NonNull C8G c8g) {
        return A01().A01(c8g);
    }

    @NonNull
    public final C03507t A08(@NonNull C8D c8d, @NonNull C8G c8g, int i, @NonNull List<Object> list) {
        return A01().A01(c8g);
    }

    public final void A09() {
        C7B c7b = this;
        int size = c7b.A05.size();
        int i = 0;
        int i2 = 2;
        while (true) {
            switch (i2) {
                case 2:
                    if (i >= size) {
                        i2 = 4;
                        break;
                    } else {
                        i2 = 3;
                        break;
                    }
                case 3:
                    c7b = c7b;
                    c7b.A05.get(i).onAnimationsFinished();
                    i++;
                    i2 = 2;
                    break;
                case 4:
                    c7b.A05.clear();
                    return;
            }
        }
    }

    public final void A0A(InterfaceC03497s interfaceC03497s) {
        this.A04 = interfaceC03497s;
    }

    public final void A0B(C8G c8g) {
        A02(c8g);
        if (this.A04 != null) {
            this.A04.A4s(c8g);
        }
    }

    public boolean A0G(@NonNull C8G c8g, @NonNull List<Object> list) {
        return A0H(c8g);
    }

    public boolean A0H(@NonNull C8G c8g) {
        return true;
    }
}
