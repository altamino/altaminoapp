package com.facebook.ads.redexgen.X;

import android.util.Base64;
import com.facebook.ads.internal.protocol.AdErrorType;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ll, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0701Ll extends AnonymousClass27 {
    private static byte[] A03;
    public final /* synthetic */ C0700Lk A00;
    public final /* synthetic */ C0710Lw A01;
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 55);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A03 = new byte[]{73, 107, 121, 100, 103, 104, 104, 99, 116, 121, 109, 99, 127};
    }

    public C0701Ll(C0710Lw c0710Lw, C0700Lk c0700Lk, boolean z) {
        this.A01 = c0710Lw;
        this.A00 = c0700Lk;
        this.A02 = z;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass27
    public final void A03() {
        boolean shouldCheckSystemHttpAgent = true;
        JE.A08(this.A01.A05);
        AQ.A06(this.A01.A05);
        if (this.A00.A06().A09()) {
            try {
                this.A00.A06().A07(AQ.A00().A02());
            } catch (LR e) {
                this.A01.A0J(LQ.A03(e));
            }
            this.A01.A0T(this.A00.A06().A06(), 0L);
            return;
        }
        this.A01.A04 = this.A00.A09(Jn.A00().A02(this.A01.A05, true).A3T());
        if (this.A02 && C0710Lw.A08 != null) {
            C0710Lw.A08.provideHttpsParams(this.A01, this.A01.A04);
        }
        try {
            this.A01.A04.put(A00(1, 12, 17), new String(Base64.encode((this.A01.A05.getPackageName() + A00(0, 1, 94) + this.A01.A05.getPackageManager().getInstallerPackageName(this.A01.A05.getPackageName())).getBytes(), 2)));
        } catch (Exception unused) {
        }
        try {
            if (this.A00.A05() != LW.A04 && this.A00.A05() != LW.A06 && this.A00.A05() != LW.A05 && this.A00.A05() != null) {
                shouldCheckSystemHttpAgent = false;
            }
            if (K1.A16(this.A01.A05)) {
                C0780Op.A06(shouldCheckSystemHttpAgent, this.A01.A05).A6Y(this.A01.A07, new C3U().A05(this.A01.A04).A07(), this.A01.A08(OO.A00()));
                return;
            }
            this.A01.A02 = C0780Op.A02(this.A01.A05, shouldCheckSystemHttpAgent);
            this.A01.A02.A0R(this.A01.A07, this.A01.A02.A0M().A05(this.A01.A04), this.A01.A06(OO.A00()));
        } catch (Exception e2) {
            this.A01.A0J(LQ.A02(AdErrorType.AD_REQUEST_FAILED, e2.getMessage()));
        }
    }
}
