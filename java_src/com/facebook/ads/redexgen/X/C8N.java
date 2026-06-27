package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.8N, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public class C8N {
    public int A00 = 0;
    public int A01;
    public int A02;
    public int A03;
    public int A04;

    private final int A00(int i, int i2) {
        int i3 = 0;
        char c = i > i2 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    i3 = 1;
                    c = 3;
                    break;
                case 3:
                    return i3;
                case 4:
                    if (i != i2) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    i3 = 2;
                    c = 3;
                    break;
                case 6:
                    i3 = 4;
                    c = 3;
                    break;
            }
        }
    }

    public final void A01() {
        this.A00 = 0;
    }

    public final void A02(int i) {
        this.A00 |= i;
    }

    public final void A03(int i, int i2, int i3, int i4) {
        this.A04 = i;
        this.A03 = i2;
        this.A02 = i3;
        this.A01 = i4;
    }

    public final boolean A04() {
        C8N c8n = this;
        boolean z = false;
        char c = (c8n.A00 & 7) != 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8n = c8n;
                    if ((c8n.A00 & (c8n.A00(c8n.A02, c8n.A04) << 0)) != 0) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return z;
                case 4:
                    c8n = c8n;
                    if ((c8n.A00 & 112) == 0) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c8n = c8n;
                    if ((c8n.A00 & (c8n.A00(c8n.A02, c8n.A03) << 4)) == 0) {
                        c = 3;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c8n = c8n;
                    if ((c8n.A00 & 1792) == 0) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c8n = c8n;
                    if ((c8n.A00 & (c8n.A00(c8n.A01, c8n.A04) << 8)) == 0) {
                        c = 3;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c8n = c8n;
                    if ((c8n.A00 & 28672) == 0) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c8n = c8n;
                    if ((c8n.A00 & (c8n.A00(c8n.A01, c8n.A03) << 12)) == 0) {
                        c = 3;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    z = true;
                    c = 3;
                    break;
            }
        }
    }
}
