package com.facebook.ads.redexgen.X;

import android.support.annotation.RequiresApi;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Sd, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class RunnableC0872Sd implements Runnable {
    public final /* synthetic */ SZ A00;

    public RunnableC0872Sd(SZ sz) {
        this.A00 = sz;
    }

    @Override // java.lang.Runnable
    @RequiresApi(api = 16)
    public final void run() {
        RunnableC0872Sd runnableC0872Sd = this;
        char c = runnableC0872Sd.A00.isPressed() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    runnableC0872Sd = runnableC0872Sd;
                    runnableC0872Sd.A00.postDelayed(runnableC0872Sd, runnableC0872Sd.A00.A05);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    runnableC0872Sd = runnableC0872Sd;
                    runnableC0872Sd.A00.setPressed(true);
                    runnableC0872Sd.A00.postOnAnimationDelayed(runnableC0872Sd.A00.A09, 250L);
                    c = 3;
                    break;
            }
        }
    }
}
