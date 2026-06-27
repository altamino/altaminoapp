package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class OJ implements View.OnSystemUiVisibilityChangeListener {
    private int A00;

    @Nullable
    private Window A01;
    private final View A03;
    private OI A02 = OI.A02;
    private final Runnable A04 = new OG(this);

    public OJ(View view) {
        this.A03 = view;
        this.A03.setOnSystemUiVisibilityChangeListener(this);
    }

    private void A00(int i, boolean z) {
        OJ oj = this;
        WindowManager.LayoutParams attributes = null;
        char c = oj.A01 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    oj = oj;
                    attributes = oj.A01.getAttributes();
                    if (!z) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    attributes = attributes;
                    attributes.flags |= i;
                    c = 5;
                    break;
                case 5:
                    oj = oj;
                    attributes = attributes;
                    oj.A01.setAttributes(attributes);
                    c = 2;
                    break;
                case 6:
                    attributes = attributes;
                    attributes.flags &= i ^ (-1);
                    c = 5;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A02(boolean z) {
        OJ oj = this;
        int i = 0;
        Handler handler = null;
        char c = OI.A02.equals(oj.A02) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    i = 3840;
                    if (!z) {
                        c = 4;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 4:
                    i |= 7;
                    c = 5;
                    break;
                case 5:
                    oj = oj;
                    handler = oj.A03.getHandler();
                    if (handler == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    if (!z) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    oj = oj;
                    handler = handler;
                    handler.removeCallbacks(oj.A04);
                    handler.postDelayed(oj.A04, 2000L);
                    c = '\b';
                    break;
                case '\b':
                    oj = oj;
                    oj.A03.setSystemUiVisibility(i);
                    c = 2;
                    break;
            }
        }
    }

    public final void A03() {
        this.A01 = null;
    }

    public final void A04(Window window) {
        this.A01 = window;
    }

    public final void A05(OI oi) {
        char c;
        OJ oj = this;
        oj.A02 = oi;
        switch (oj.A02) {
            case A03:
                c = 4;
                break;
            default:
                c = 2;
                break;
        }
        while (true) {
            switch (c) {
                case 2:
                    oj = oj;
                    oj.A00(67108864, false);
                    oj.A00(134217728, false);
                    oj.A03.setSystemUiVisibility(0);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    oj = oj;
                    oj.A00(67108864, true);
                    oj.A00(134217728, true);
                    oj.A02(false);
                    c = 3;
                    break;
            }
        }
    }

    @Override // android.view.View.OnSystemUiVisibilityChangeListener
    public final void onSystemUiVisibilityChange(int i) {
        OJ oj = this;
        int i2 = oj.A00 ^ i;
        oj.A00 = i;
        char c = (i2 & 2) != 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    if ((i & 2) != 0) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    oj = oj;
                    oj.A02(true);
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }
}
