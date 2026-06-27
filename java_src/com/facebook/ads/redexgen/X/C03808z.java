package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import com.facebook.ads.internal.api.BidderTokenProviderApi;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.8z, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C03808z implements BidderTokenProviderApi {
    private static byte[] A03;

    @Nullable
    private Context A00;
    private String A01;

    @VisibleForTesting
    public final C0763Ny A02 = new C0763Ny(300000000000L, new AnonymousClass27() { // from class: com.facebook.ads.redexgen.X.8y
        @Override // com.facebook.ads.redexgen.X.AnonymousClass27
        public final void A03() {
            this.A00.A02();
        }
    });

    static {
        A03();
    }

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 75);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A03 = new byte[]{77, 70, 87, 84, 76, 81, 72, 92, 87, 90, 83, 70, 43, 61, 43, 43, 49, 55, 54, 39, 44, 49, 53, 61, 100, 107, 100, 105, 106, 98};
    }

    private static InterfaceC0648Ji A00(Context context) {
        InterfaceC0648Ji interfaceC0648JiA01 = null;
        char c = K1.A10(context) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    interfaceC0648JiA01 = C0651Jl.A01(A01(24, 6, 110), A01(12, 12, 51), A01(0, 12, 72));
                    c = 3;
                    break;
                case 3:
                    return interfaceC0648JiA01;
                case 4:
                    interfaceC0648JiA01 = C0651Jl.A00();
                    c = 3;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A02() {
        Context context;
        synchronized (this) {
            context = this.A00;
        }
        if (context == null) {
            return;
        }
        String strA3l = Jn.A00().A02(context, true).A3l(A00(context));
        synchronized (this) {
            this.A01 = strA3l;
        }
    }

    public final synchronized String getBidderToken(Context context) {
        this.A00 = context.getApplicationContext();
        DynamicLoaderFactory.makeLoader(this.A00).getInitApi().maybeAttachCrashListener(this.A00);
        if (this.A01 == null) {
            A02();
            this.A02.A03().A03();
        }
        this.A02.A04();
        return this.A01;
    }
}
