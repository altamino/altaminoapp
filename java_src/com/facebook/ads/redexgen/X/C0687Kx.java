package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.Iterator;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Kx, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0687Kx extends AbstractC01861i {
    private static byte[] A01;
    public final /* synthetic */ L8 A00;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 22);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{8, 39, 50, 47, 48, 35, 102, 39, 34, 53, 102, 43, 39, 40, 39, 33, 35, 52, 102, 50, 46, 35, 47, 52, 102, 41, 49, 40, 102, 47, 43, 54, 52, 35, 53, 53, 47, 41, 40, 53, 104};
    }

    public C0687Kx(L8 l8) {
        this.A00 = l8;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01861i
    public final void A0B(AnonymousClass29 anonymousClass29) {
        C0687Kx c0687Kx = this;
        Iterator<L8> it = null;
        C0686Kw c0686Kw = null;
        c0687Kx.A00.A0X(anonymousClass29, true);
        char c = c0687Kx.A00.A0E != null ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass29 = anonymousClass29;
                    if (anonymousClass29.A0T() == null) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0687Kx = c0687Kx;
                    anonymousClass29 = anonymousClass29;
                    c0686Kw = new C0686Kw(c0687Kx);
                    it = anonymousClass29.A0T().iterator();
                    c = 4;
                    break;
                case 4:
                    it = it;
                    if (!it.hasNext()) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0686Kw = c0686Kw;
                    it = it;
                    it.next().A0Y(c0686Kw);
                    c = 4;
                    break;
                case 6:
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01861i
    public final void A0D() {
        if (this.A00.A0E == null) {
            return;
        }
        this.A00.A0E.A4j();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01861i
    public final void A0E() {
        throw new IllegalStateException(A00(0, 41, 80));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01861i
    public final void A0G(InterfaceC01851h interfaceC01851h) {
        if (this.A00.A08 == null) {
            return;
        }
        this.A00.A08.A0A();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01861i
    public final void A0H(LQ lq) {
        if (this.A00.A0E == null) {
            return;
        }
        this.A00.A0E.A5G(lq);
    }
}
