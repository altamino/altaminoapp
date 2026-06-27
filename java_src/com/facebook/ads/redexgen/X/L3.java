package com.facebook.ads.redexgen.X;

import android.view.View;
import com.facebook.ads.AdChoicesView;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaViewVideoRenderer;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class L3 implements L2 {
    @Override // com.facebook.ads.redexgen.X.L2
    public final boolean A75(View view) {
        boolean z = false;
        char c = !(view instanceof MediaViewVideoRenderer) ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    view = view;
                    if (!(view instanceof AdChoicesView)) {
                        c = 3;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 3:
                    view = view;
                    if (!(view instanceof AdOptionsView)) {
                        c = 4;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 4:
                    view = view;
                    if (!(view instanceof C0805Po)) {
                        c = 5;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 5:
                    view = view;
                    if (!(view instanceof S6)) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    z = true;
                    c = 7;
                    break;
                case 7:
                    return z;
                case '\b':
                    z = false;
                    c = 7;
                    break;
            }
        }
    }
}
