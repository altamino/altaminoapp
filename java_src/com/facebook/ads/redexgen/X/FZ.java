package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.MotionEvent;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class FZ extends Handler {
    private final C0539Fd A00;

    public FZ(Looper looper, C0539Fd c0539Fd) {
        super(looper);
        this.A00 = c0539Fd;
    }

    @Override // android.os.Handler
    @SuppressLint({"CatchGeneralException"})
    public final void handleMessage(Message message) {
        try {
            switch (FY.values()[message.what]) {
                case A02:
                    MotionEvent motionEvent = (MotionEvent) message.obj;
                    if (motionEvent != null) {
                        this.A00.A05(motionEvent);
                        return;
                    }
                    return;
                default:
                    return;
            }
        } catch (Throwable th) {
            BC.A03(th);
        }
        BC.A03(th);
    }
}
