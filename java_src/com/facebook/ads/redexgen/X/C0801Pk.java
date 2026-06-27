package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Pk, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0801Pk extends C7P {
    private float A00;
    private int A01;
    private int A02;
    private C0800Pj A03;
    private int[] A04;
    private final Context A05;
    private final U0 A06;
    private final U1 A07;

    public C0801Pk(Context context, U1 u1, U0 u0) {
        super(context);
        this.A02 = 0;
        this.A00 = 50.0f;
        this.A05 = context;
        this.A07 = u1;
        this.A06 = u0;
        this.A01 = -1;
        this.A03 = new C0800Pj(this, this.A05);
    }

    @Override // com.facebook.ads.redexgen.X.C7N
    public final void A1O(AnonymousClass85 anonymousClass85, C8D c8d, int i, int i2) {
        AnonymousClass85 anonymousClass852 = anonymousClass85;
        C8D c8d2 = c8d;
        C0801Pk c0801Pk = this;
        int widthMode = 0;
        int widthSize = 0;
        int[] iArrA02 = null;
        int iA0Z = 0;
        int i3 = 0;
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        char c = mode == 1073741824 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c0801Pk = c0801Pk;
                    if (c0801Pk.A2F() == 1) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    if (mode2 != 1073741824) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0801Pk = c0801Pk;
                    if (c0801Pk.A2F() != 0) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0801Pk = c0801Pk;
                    anonymousClass852 = anonymousClass852;
                    c8d2 = c8d2;
                    super.A1O(anonymousClass852, c8d2, i, i2);
                    c = 6;
                    break;
                case 6:
                    return;
                case 7:
                    c0801Pk = c0801Pk;
                    widthMode = View.MeasureSpec.getSize(i);
                    widthSize = View.MeasureSpec.getSize(i2);
                    if (!c0801Pk.A06.A01(c0801Pk.A01)) {
                        c = 14;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c0801Pk = c0801Pk;
                    iArrA02 = c0801Pk.A06.A02(c0801Pk.A01);
                    c = '\t';
                    break;
                case '\t':
                    if (mode != 1073741824) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    iArrA02 = iArrA02;
                    iArrA02[0] = widthMode;
                    c = 11;
                    break;
                case 11:
                    if (mode2 != 1073741824) {
                        c = '\r';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    iArrA02 = iArrA02;
                    iArrA02[1] = widthSize;
                    c = '\r';
                    break;
                case '\r':
                    c0801Pk = c0801Pk;
                    iArrA02 = iArrA02;
                    c0801Pk.A17(iArrA02[0], iArrA02[1]);
                    c = 6;
                    break;
                case 14:
                    c8d2 = c8d2;
                    iArrA02 = new int[]{0, 0};
                    if (c8d2.A03() < 1) {
                        c = '\t';
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    c0801Pk = c0801Pk;
                    if (c0801Pk.A0Z() <= 0) {
                        c = 25;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    iA0Z = 1;
                    c = 17;
                    break;
                case 17:
                    i3 = 0;
                    c = 18;
                    break;
                case 18:
                    if (i3 >= iA0Z) {
                        c = 26;
                        break;
                    } else {
                        c = 19;
                        break;
                    }
                case 19:
                    c0801Pk = c0801Pk;
                    c0801Pk.A04 = c0801Pk.A07.A00(c0801Pk.A1v(i3), View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
                    if (c0801Pk.A2F() != 0) {
                        c = 23;
                        break;
                    } else {
                        c = 20;
                        break;
                    }
                case 20:
                    c0801Pk = c0801Pk;
                    iArrA02 = iArrA02;
                    iArrA02[0] = iArrA02[0] + c0801Pk.A04[0];
                    if (i3 != 0) {
                        c = 22;
                        break;
                    } else {
                        c = 21;
                        break;
                    }
                case 21:
                    c0801Pk = c0801Pk;
                    iArrA02 = iArrA02;
                    iArrA02[1] = c0801Pk.A04[1] + c0801Pk.A0j() + c0801Pk.A0g();
                    c = 22;
                    break;
                case 22:
                    i3++;
                    c = 18;
                    break;
                case 23:
                    c0801Pk = c0801Pk;
                    iArrA02 = iArrA02;
                    iArrA02[1] = iArrA02[1] + c0801Pk.A04[1];
                    if (i3 != 0) {
                        c = 22;
                        break;
                    } else {
                        c = 24;
                        break;
                    }
                case 24:
                    c0801Pk = c0801Pk;
                    iArrA02 = iArrA02;
                    iArrA02[0] = c0801Pk.A04[0] + c0801Pk.A0h() + c0801Pk.A0i();
                    c = 22;
                    break;
                case 25:
                    c0801Pk = c0801Pk;
                    iA0Z = c0801Pk.A0Z();
                    c = 17;
                    break;
                case 26:
                    c0801Pk = c0801Pk;
                    if (c0801Pk.A01 == -1) {
                        c = '\t';
                        break;
                    } else {
                        c = 27;
                        break;
                    }
                case 27:
                    c0801Pk = c0801Pk;
                    iArrA02 = iArrA02;
                    c0801Pk.A06.A00(c0801Pk.A01, iArrA02);
                    c = '\t';
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C7P, com.facebook.ads.redexgen.X.C7N
    public final void A1y(int i) {
        super.A2K(i, this.A02);
    }

    @Override // com.facebook.ads.redexgen.X.C7P, com.facebook.ads.redexgen.X.C7N
    public final void A26(C8H c8h, C8D c8d, int i) {
        this.A03.A0A(i);
        A1Q(this.A03);
    }

    public final void A2P(double d) {
        if (d <= 0.0d) {
            d = 1.0d;
        }
        this.A00 = (float) (50.0d / d);
        this.A03 = new C0800Pj(this, this.A05);
    }

    public final void A2Q(int i) {
        this.A01 = i;
    }

    public final void A2R(int i) {
        this.A02 = i;
    }
}
