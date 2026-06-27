package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import java.util.concurrent.Executor;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class P1 {

    @Nullable
    private static P1 A02;
    private final P0 A00;
    private final P2 A01;

    private P1(Context context, Executor executor, JJ jj) {
        this.A01 = new P2(context);
        this.A00 = new P0(executor, jj, context);
    }

    private void A00() {
        this.A01.A03(this.A00);
    }

    public static void A01(Context context, Executor executor, JJ jj) {
        char c = !K1.A19(context) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    if (A02 != null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    context = context;
                    executor = executor;
                    jj = jj;
                    A02 = new P1(context, executor, jj);
                    A02.A00();
                    c = 2;
                    break;
                case 5:
                    jj = jj;
                    A02.A02(jj);
                    c = 2;
                    break;
            }
        }
    }

    private void A02(JJ jj) {
        this.A00.A07(jj);
    }
}
