package com.facebook.ads.redexgen.X;

import com.google.android.exoplayer2.DefaultRenderersFactory;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Qn, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0830Qn extends Q1 {
    private static byte[] A01;
    public final /* synthetic */ C0836Qt A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 44);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-43, -19, -33, -35, -19, -41};
    }

    public C0830Qn(C0836Qt c0836Qt) {
        this.A00 = c0836Qt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC01971t
    /* renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final void A03(K0 k0) {
        C0830Qn c0830Qn = this;
        int remainingSecondsForReward = 0;
        int duration = 0;
        int i = 0;
        char c = c0830Qn.A00.A08 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c0830Qn = c0830Qn;
                    k0 = k0;
                    remainingSecondsForReward = k0.A00();
                    duration = c0830Qn.A00.A08.getDuration() - remainingSecondsForReward;
                    if (!K1.A1A(c0830Qn.A00.A02)) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0830Qn = c0830Qn;
                    if (c0830Qn.A00.A08.getState() != EnumC03216q.A02) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0830Qn = c0830Qn;
                    c0830Qn.A00.A0O.postDelayed(new C0829Qm(c0830Qn, remainingSecondsForReward), DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
                    c = 6;
                    break;
                case 6:
                    c0830Qn = c0830Qn;
                    if (!c0830Qn.A00.A0h) {
                        c = 17;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    if (duration > 3000) {
                        c = '\n';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c0830Qn = c0830Qn;
                    if (!c0830Qn.A00.A0A.A0J()) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c0830Qn = c0830Qn;
                    c0830Qn.A00.A0A.A0F();
                    c = '\n';
                    break;
                case '\n':
                    c0830Qn = c0830Qn;
                    if (c0830Qn.A00.A01 <= 0) {
                        c = 14;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    c0830Qn = c0830Qn;
                    float f = remainingSecondsForReward / (c0830Qn.A00.A01 * 1000.0f);
                    c0830Qn.A00.A05.setProgress(100.0f * f);
                    if (f < 1.0f) {
                        c = 14;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    c0830Qn = c0830Qn;
                    if (!c0830Qn.A00.A0I) {
                        c = '\r';
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case '\r':
                    c0830Qn = c0830Qn;
                    c0830Qn.A00.A05.setToolbarActionMode(1);
                    c = 14;
                    break;
                case 14:
                    c0830Qn = c0830Qn;
                    if (c0830Qn.A00.A05 == null) {
                        c = 2;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    c0830Qn = c0830Qn;
                    i = c0830Qn.A00.A0L - (remainingSecondsForReward / 1000);
                    if (i <= 0) {
                        c = 21;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    c0830Qn = c0830Qn;
                    c0830Qn.A00.A05.setToolbarActionMessage(c0830Qn.A00.A0R.A0O().A00().replace(A00(0, 6, 78), String.valueOf(i)));
                    c = 2;
                    break;
                case 17:
                    c0830Qn = c0830Qn;
                    if (c0830Qn.A00.A0B == null) {
                        c = '\n';
                        break;
                    } else {
                        c = 18;
                        break;
                    }
                case 18:
                    c0830Qn = c0830Qn;
                    if (!c0830Qn.A00.A0B.A0G()) {
                        c = '\n';
                        break;
                    } else {
                        c = 19;
                        break;
                    }
                case 19:
                    if (duration > 3000) {
                        c = '\n';
                        break;
                    } else {
                        c = 20;
                        break;
                    }
                case 20:
                    c0830Qn = c0830Qn;
                    c0830Qn.A00.A0B.A0F();
                    c = '\n';
                    break;
                case 21:
                    c0830Qn = c0830Qn;
                    c0830Qn.A00.A05.setToolbarActionMessage(A00(6, 0, 24));
                    c = 2;
                    break;
            }
        }
    }
}
