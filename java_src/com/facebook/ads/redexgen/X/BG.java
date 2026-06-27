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
public class BG extends Handler {
    public final /* synthetic */ BH A00;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BG(BH bh, Looper looper) {
        super(looper);
        this.A00 = bh;
    }

    @Override // android.os.Handler
    @SuppressLint({"CatchGeneralException"})
    public final void handleMessage(Message message) {
        try {
            switch (BF.values()[message.what]) {
                case A02:
                    MotionEvent motionEvent = (MotionEvent) message.obj;
                    if (motionEvent == null) {
                        return;
                    }
                    this.A00.A02.A00(motionEvent);
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
