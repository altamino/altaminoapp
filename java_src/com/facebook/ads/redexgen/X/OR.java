package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class OR implements Executor {
    public static final OR A01 = new OR();
    private final Handler A00 = new Handler(Looper.getMainLooper());

    private OR() {
    }

    public static void A00(Runnable runnable) {
        char c = Looper.myLooper() == Looper.getMainLooper() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    runnable = runnable;
                    runnable.run();
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    runnable = runnable;
                    A01.execute(runnable);
                    c = 3;
                    break;
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.A00.post(runnable);
    }
}
