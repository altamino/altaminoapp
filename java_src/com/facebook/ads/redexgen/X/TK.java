package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class TK implements View.OnTouchListener {
    public final /* synthetic */ TP A00;

    public TK(TP tp) {
        this.A00 = tp;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        char c;
        TK tk = this;
        switch (motionEvent.getActionMasked()) {
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
                    return true;
                case 3:
                    tk = tk;
                    motionEvent = motionEvent;
                    tk.A00.A00 = motionEvent.getY();
                    c = 2;
                    break;
                case 4:
                    tk = tk;
                    motionEvent = motionEvent;
                    if (tk.A00.A00 >= motionEvent.getY()) {
                        c = 2;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    tk = tk;
                    tk.A00.A0Q(false);
                    c = 2;
                    break;
            }
        }
    }
}
