package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdErrorType;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ky, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0688Ky implements AnonymousClass20 {
    private static byte[] A03;
    public final /* synthetic */ AnonymousClass29 A00;
    public final /* synthetic */ L8 A01;
    public final /* synthetic */ boolean A02;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 38);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A03 = new byte[]{6, 33, 41, 44, 37, 36, 96, 52, 47, 96, 36, 47, 55, 46, 44, 47, 33, 36, 96, 33, 96, 45, 37, 36, 41, 33, 110};
    }

    public C0688Ky(L8 l8, AnonymousClass29 anonymousClass29, boolean z) {
        this.A01 = l8;
        this.A00 = anonymousClass29;
        this.A02 = z;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass20
    public final void A50() {
        C0688Ky c0688Ky = this;
        char c = c0688Ky.A01.A0U != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c0688Ky = c0688Ky;
                    c0688Ky.A01.A0U.A0U();
                    c0688Ky.A01.A0U = null;
                    c = 3;
                    break;
                case 3:
                    c0688Ky = c0688Ky;
                    if (c0688Ky.A01.A0E == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0688Ky = c0688Ky;
                    c0688Ky.A01.A0E.A5G(LQ.A02(AdErrorType.CACHE_FAILURE_ERROR, A00(0, 27, 102)));
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass20
    public final void A57() {
        C0688Ky c0688Ky = this;
        c0688Ky.A01.A0U = c0688Ky.A00;
        char c = c0688Ky.A01.A0E != null ? (char) 2 : (char) 7;
        while (true) {
            switch (c) {
                case 2:
                    c0688Ky = c0688Ky;
                    if (!c0688Ky.A01.A0C.equals(EnumC0685Kv.A04)) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0688Ky = c0688Ky;
                    if (!c0688Ky.A01.A0h()) {
                        c = 4;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 4:
                    c0688Ky = c0688Ky;
                    c0688Ky.A01.A0E.A5k();
                    c = 5;
                    break;
                case 5:
                    c0688Ky = c0688Ky;
                    if (!c0688Ky.A02) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c0688Ky = c0688Ky;
                    c0688Ky.A01.A0E.A4m();
                    c = 7;
                    break;
                case 7:
                    return;
            }
        }
    }
}
