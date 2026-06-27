package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import java.util.Deque;
import java.util.LinkedList;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class O6 {
    public final int A01;
    public final int A02;
    public final Deque<String> A04 = new LinkedList();
    public final Deque<String> A03 = new LinkedList();

    @Nullable
    public String A00 = null;

    public O6(int i, int i2) {
        this.A02 = i;
        this.A01 = i2;
    }

    public final Iterable<String> A00() {
        return this.A03;
    }

    public final Iterable<String> A01() {
        return this.A04;
    }

    @Nullable
    public final String A02() {
        return this.A00;
    }

    public final void A03() {
        O6 o6 = this;
        char c = o6.A00 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    o6 = o6;
                    o6.A04.addLast(o6.A00);
                    if (o6.A04.size() <= o6.A02) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    o6 = o6;
                    o6.A04.removeFirst();
                    c = 4;
                    break;
                case 4:
                    o6 = o6;
                    if (o6.A03.size() <= 0) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    o6 = o6;
                    o6.A00 = o6.A03.removeFirst();
                    c = 6;
                    break;
                case 6:
                    return;
                case 7:
                    o6 = o6;
                    o6.A00 = null;
                    c = 6;
                    break;
            }
        }
    }

    public final void A04(String str) {
        O6 o6 = this;
        o6.A03.addLast(str);
        char c = o6.A03.size() <= o6.A01 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    o6 = o6;
                    if (o6.A00 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    o6 = o6;
                    o6.A04.addLast(o6.A00);
                    c = 5;
                    break;
                case 5:
                    o6 = o6;
                    o6.A00 = o6.A03.removeFirst();
                    if (o6.A04.size() <= o6.A02) {
                        c = 2;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    o6 = o6;
                    o6.A04.removeFirst();
                    c = 2;
                    break;
            }
        }
    }
}
