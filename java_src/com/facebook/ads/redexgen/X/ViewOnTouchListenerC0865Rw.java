package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Rw, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class ViewOnTouchListenerC0865Rw implements View.OnTouchListener {
    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        char c;
        boolean z = false;
        switch (motionEvent.getAction()) {
            case 0:
                c = 3;
                break;
            case 1:
                c = 4;
                break;
            default:
                c = 2;
                break;
        }
        while (true) {
            switch (c) {
                case 2:
                    return z;
                case 3:
                    view = view;
                    OY.A0P(view, C0868Rz.A07);
                    c = 2;
                    break;
                case 4:
                    view = view;
                    z = false;
                    OY.A0P(view, 0);
                    c = 2;
                    break;
            }
        }
    }
}
