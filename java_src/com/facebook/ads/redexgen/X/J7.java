package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class J7 implements View.OnTouchListener {
    public final /* synthetic */ J1 A00;

    public J7(J1 j1) {
        this.A00 = j1;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        J7 j7 = this;
        boolean z = false;
        char c = motionEvent.getAction() == 0 ? (char) 2 : '\b';
        while (true) {
            switch (c) {
                case 2:
                    j7 = j7;
                    if (!j7.A00.A02) {
                        c = 7;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    j7 = j7;
                    if (!TextUtils.isEmpty(j7.A00.A04)) {
                        c = 4;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 4:
                    j7 = j7;
                    C0784Ot.A08(new C0784Ot(), j7.A00.getContext(), Uri.parse(j7.A00.A04), j7.A00.A06);
                    c = 5;
                    break;
                case 5:
                    z = true;
                    c = 6;
                    break;
                case 6:
                    return z;
                case 7:
                    j7 = j7;
                    j7.A00.A06();
                    c = 5;
                    break;
                case '\b':
                    z = false;
                    c = 6;
                    break;
            }
        }
    }
}
