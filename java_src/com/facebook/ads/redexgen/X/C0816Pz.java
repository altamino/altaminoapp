package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Pz, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0816Pz extends C9X {
    private static byte[] A01;
    public final /* synthetic */ Q9 A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 96);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{33, 62, 51, 50, 56, 30, 57, 35, 50, 37, 36, 35, 62, 35, 54, 59, 18, 33, 50, 57, 35};
    }

    public C0816Pz(Q9 q9) {
        this.A00 = q9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC01971t
    /* renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final void A03(C0667Kc c0667Kc) {
        C0816Pz c0816Pz = this;
        char c = c0816Pz.A00.getAudienceNetworkListener() != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c0816Pz = c0816Pz;
                    c0667Kc = c0667Kc;
                    c0816Pz.A00.getAudienceNetworkListener().A2g(A00(0, 21, 55), c0667Kc);
                    c = 3;
                    break;
                case 3:
                    c0816Pz = c0816Pz;
                    if (c0816Pz.A00.A01 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0816Pz = c0816Pz;
                    c0667Kc = c0667Kc;
                    c0816Pz.A00.A01.A03(c0667Kc);
                    c = 5;
                    break;
                case 5:
                    c0816Pz = c0816Pz;
                    if (!c0816Pz.A00.A04) {
                        c = 6;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 6:
                    c0816Pz = c0816Pz;
                    c0816Pz.A00.A0F.A0N();
                    c0816Pz.A00.A0F.A0J();
                    c0816Pz.A00.A04 = true;
                    c = 7;
                    break;
                case 7:
                    c0816Pz = c0816Pz;
                    if (c0816Pz.A00.A00 == null) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c0816Pz = c0816Pz;
                    c0816Pz.A00.A00.finish();
                    c = '\t';
                    break;
                case '\t':
                    return;
            }
        }
    }
}
