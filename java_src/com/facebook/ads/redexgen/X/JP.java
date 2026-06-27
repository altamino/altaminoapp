package com.facebook.ads.redexgen.X;

import android.content.Context;
import com.facebook.ads.AudienceNetworkAds;
import com.facebook.ads.internal.settings.MultithreadedBundleWrapper;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class JP extends AnonymousClass27 {
    private static byte[] A03;
    public final /* synthetic */ Context A00;
    public final /* synthetic */ AudienceNetworkAds.InitListener A01;
    public final /* synthetic */ MultithreadedBundleWrapper A02;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 93);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A03 = new byte[]{43, 28, 19, 88, 11, 13, 27, 27, 29, 11, 11, 30, 13, 20, 20, 1, 88, 17, 22, 17, 12, 17, 25, 20, 17, 2, 29, 28, 89};
    }

    public JP(Context context, MultithreadedBundleWrapper multithreadedBundleWrapper, AudienceNetworkAds.InitListener initListener) {
        this.A00 = context;
        this.A02 = multithreadedBundleWrapper;
        this.A01 = initListener;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass27
    public final void A03() {
        JP jp = this;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    try {
                        jp = jp;
                        C0645Jf.A07(jp.A00);
                        if (!JT.A05.get()) {
                            C0655Jq.A03(jp.A00, jp.A02);
                        }
                    } catch (Throwable th) {
                        P7.A0F(th);
                    }
                    JT.A09(jp.A00);
                    if (jp.A01 == null) {
                        c = '\r';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    jp = jp;
                    JT.A0E(jp.A01, new JS(true, A00(0, 29, 37)));
                    c = '\r';
                    break;
                case '\r':
                    return;
            }
        }
    }
}
