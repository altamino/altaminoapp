package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.8P, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C8P {
    public C8N A00 = new C8N();
    public final InterfaceC03527w A01;

    public C8P(InterfaceC03527w interfaceC03527w) {
        this.A01 = interfaceC03527w;
    }

    public final View A00(int i, int childEnd, int childStart, int end) {
        C8P c8p = this;
        View viewA3J = null;
        int start = 0;
        int i2 = 0;
        View view = null;
        int iA3c = c8p.A01.A3c();
        int iA3b = c8p.A01.A3b();
        char c = childEnd > i ? (char) 2 : '\r';
        while (true) {
            switch (c) {
                case 2:
                    i2 = 1;
                    c = 3;
                    break;
                case 3:
                    view = null;
                    start = i;
                    c = 4;
                    break;
                case 4:
                    if (start == childEnd) {
                        c = '\f';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c8p = c8p;
                    viewA3J = c8p.A01.A3J(start);
                    c8p.A00.A03(iA3c, iA3b, c8p.A01.A3M(viewA3J), c8p.A01.A3L(viewA3J));
                    if (childStart == 0) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c8p = c8p;
                    c8p.A00.A01();
                    c8p.A00.A02(childStart);
                    if (!c8p.A00.A04()) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    return viewA3J;
                case '\b':
                    if (end == 0) {
                        c = 11;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c8p = c8p;
                    c8p.A00.A01();
                    c8p.A00.A02(end);
                    if (!c8p.A00.A04()) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    viewA3J = viewA3J;
                    view = viewA3J;
                    c = 11;
                    break;
                case 11:
                    start += i2;
                    c = 4;
                    break;
                case '\f':
                    viewA3J = view;
                    c = 7;
                    break;
                case '\r':
                    i2 = -1;
                    c = 3;
                    break;
            }
        }
    }
}
