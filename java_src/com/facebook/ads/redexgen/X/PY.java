package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.view.View;
import java.lang.ref.WeakReference;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class PY implements View.OnClickListener, View.OnTouchListener {
    public final WeakReference<C0839Qw> A00;
    public final WeakReference<C0793Pc> A01;

    public PY(C0793Pc c0793Pc, C0839Qw c0839Qw) {
        this.A01 = new WeakReference<>(c0793Pc);
        this.A00 = new WeakReference<>(c0839Qw);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        PY py = this;
        char c = py.A01.get() != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    py = py;
                    if (py.A00.get() == null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    py = py;
                    if (!py.A00.get().A0I()) {
                        c = 4;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 4:
                    py = py;
                    py.A01.get().A06(py.A00.get().getAdDataBundle());
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.A01.get() != null) {
            this.A01.get().getTouchDataRecorder().A06(motionEvent, this.A01.get(), view);
            return false;
        }
        return false;
    }
}
