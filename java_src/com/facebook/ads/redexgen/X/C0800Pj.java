package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Pj, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0800Pj extends C7X {
    public final /* synthetic */ C0801Pk A00;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0800Pj(C0801Pk c0801Pk, Context context) {
        super(context);
        this.A00 = c0801Pk;
    }

    @Override // com.facebook.ads.redexgen.X.C7X
    public final float A0K(DisplayMetrics displayMetrics) {
        return this.A00.A00 / displayMetrics.densityDpi;
    }

    @Override // com.facebook.ads.redexgen.X.C7X
    public final int A0L() {
        return -1;
    }

    @Override // com.facebook.ads.redexgen.X.C7X
    public final int A0P(View view, int right) {
        C0800Pj c0800Pj = this;
        int start = 0;
        C7N layoutManager = c0800Pj.A08();
        int end = !layoutManager.A29() ? 2 : 4;
        while (true) {
            switch (end) {
                case 2:
                    start = 0;
                    end = 3;
                    break;
                case 3:
                    return start;
                case 4:
                    c0800Pj = c0800Pj;
                    view = view;
                    layoutManager = layoutManager;
                    C7L c7l = (C7L) view.getLayoutParams();
                    int start2 = c0800Pj.A0O(layoutManager.A0n(view) - c7l.leftMargin, layoutManager.A0q(view) + c7l.rightMargin, layoutManager.A0h(), layoutManager.A0k() - layoutManager.A0i(), right);
                    int end2 = c0800Pj.A00.A02;
                    start = start2 + end2;
                    end = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C7X
    public final PointF A0Q(int i) {
        return this.A00.A2o(i);
    }
}
