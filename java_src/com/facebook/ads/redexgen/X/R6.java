package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class R6 extends QL {
    public R6(Context context) {
        super(context);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public final void onMeasure(int newWidthSpec, int i) {
        int i2 = newWidthSpec;
        int i3 = i;
        char c = View.MeasureSpec.getMode(newWidthSpec) == 1073741824 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    i3 = newWidthSpec;
                    c = 3;
                    break;
                case 3:
                    super.onMeasure(i2, i3);
                    return;
                case 4:
                    if (View.MeasureSpec.getMode(i) != 1073741824) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    i2 = i;
                    c = 3;
                    break;
            }
        }
    }
}
