package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Py, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0815Py implements InterfaceC03718p {
    public final /* synthetic */ Q9 A00;

    public C0815Py(Q9 q9) {
        this.A00 = q9;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03718p
    public final boolean A3t() {
        C0815Py c0815Py = this;
        boolean z = false;
        boolean z2 = true;
        char c = c0815Py.A00.A0E() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return z2;
                case 3:
                    c0815Py = c0815Py;
                    z = false;
                    if (c0815Py.A00.A01 == null) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0815Py = c0815Py;
                    if (!c0815Py.A00.A01.A0X()) {
                        c = 5;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 5:
                    c0815Py = c0815Py;
                    if (!c0815Py.A00.A01.A0U()) {
                        c = '\f';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    z = z2;
                    c = 7;
                    break;
                case 7:
                    if (!z) {
                        c = '\b';
                        break;
                    } else {
                        c = 2;
                        break;
                    }
                case '\b':
                    c0815Py = c0815Py;
                    if (!((AbstractC0810Pt) c0815Py.A00).A0B.A06()) {
                        c = 2;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c0815Py = c0815Py;
                    if (!c0815Py.A00.A0D()) {
                        c = '\r';
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c0815Py = c0815Py;
                    if (c0815Py.A00.A00 == null) {
                        c = '\r';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    c0815Py = c0815Py;
                    c0815Py.A00.A0B(c0815Py.A00.A00);
                    c = 2;
                    break;
                case '\f':
                    z = false;
                    c = 7;
                    break;
                case '\r':
                    z2 = false;
                    c = 2;
                    break;
            }
        }
    }
}
