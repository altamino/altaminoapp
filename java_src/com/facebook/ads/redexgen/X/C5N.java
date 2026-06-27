package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.5N, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C5N {
    private C5N() {
    }

    public static boolean A00(MotionEvent motionEvent, int i) {
        boolean z = false;
        char c = (motionEvent.getSource() & i) == i ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }
}
