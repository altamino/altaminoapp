package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Kq, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class ViewOnTouchListenerC0680Kq implements View.OnTouchListener {
    public final /* synthetic */ C0684Ku A00;

    public ViewOnTouchListenerC0680Kq(C0684Ku c0684Ku) {
        this.A00 = c0684Ku;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        ViewOnTouchListenerC0680Kq viewOnTouchListenerC0680Kq = this;
        char c = viewOnTouchListenerC0680Kq.A00.A04 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    motionEvent = motionEvent;
                    if (motionEvent.getAction() != 1) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    viewOnTouchListenerC0680Kq = viewOnTouchListenerC0680Kq;
                    viewOnTouchListenerC0680Kq.A00.A04.A0b();
                    c = 4;
                    break;
                case 4:
                    return true;
            }
        }
    }
}
