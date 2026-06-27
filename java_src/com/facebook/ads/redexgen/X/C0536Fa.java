package com.facebook.ads.redexgen.X;

import android.os.Message;
import android.view.MotionEvent;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.Nullable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Fa, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0536Fa {

    @Nullable
    private static C0536Fa A03;
    private static final AtomicBoolean A04 = new AtomicBoolean();
    private final FZ A00;
    private final C0537Fb A01;
    private final C0544Fi A02;

    private C0536Fa(C0539Fd c0539Fd, C0537Fb c0537Fb, C0544Fi c0544Fi) {
        this.A01 = c0537Fb;
        this.A02 = c0544Fi;
        A04.set(this.A02.A0p());
        this.A00 = new FZ(FE.A00().A03().getLooper(), c0539Fd);
    }

    public static synchronized C0536Fa A00(C0539Fd c0539Fd, C0537Fb c0537Fb, C0544Fi c0544Fi) {
        if (A03 == null) {
            A03 = new C0536Fa(c0539Fd, c0537Fb, c0544Fi);
        }
        return A03;
    }

    public final synchronized void A01() {
        A04.set(this.A02.A0p());
        if (this.A02.A0d()) {
            this.A01.A04();
        }
    }

    public final synchronized void A02() {
        A04.set(false);
        this.A01.A05();
    }

    public final boolean A03(MotionEvent motionEvent) {
        C0536Fa c0536Fa = this;
        boolean zSendMessage = false;
        char c = !A04.get() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    zSendMessage = false;
                    c = 3;
                    break;
                case 3:
                    return zSendMessage;
                case 4:
                    c0536Fa = c0536Fa;
                    motionEvent = motionEvent;
                    Message message = new Message();
                    message.what = FY.A02.ordinal();
                    message.obj = motionEvent;
                    zSendMessage = c0536Fa.A00.sendMessage(message);
                    c = 3;
                    break;
            }
        }
    }
}
