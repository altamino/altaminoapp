package com.facebook.ads.redexgen.X;

import android.support.annotation.RequiresApi;
import android.view.View;
import android.view.WindowInsets;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@RequiresApi(21)
/* renamed from: com.facebook.ads.redexgen.X.5o, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C02945o extends C02925m {
    @Override // com.facebook.ads.redexgen.X.C02875h
    public final C6F A08(View view, C6F c6f) {
        WindowInsets windowInsets = (WindowInsets) C6F.A01(c6f);
        WindowInsets windowInsetsDispatchApplyWindowInsets = view.dispatchApplyWindowInsets(windowInsets);
        if (windowInsetsDispatchApplyWindowInsets != windowInsets) {
            windowInsets = new WindowInsets(windowInsetsDispatchApplyWindowInsets);
        }
        return C6F.A00(windowInsets);
    }

    @Override // com.facebook.ads.redexgen.X.C02875h
    public final C6F A09(View view, C6F c6f) {
        WindowInsets windowInsets = (WindowInsets) C6F.A01(c6f);
        WindowInsets windowInsetsOnApplyWindowInsets = view.onApplyWindowInsets(windowInsets);
        if (windowInsetsOnApplyWindowInsets != windowInsets) {
            windowInsets = new WindowInsets(windowInsetsOnApplyWindowInsets);
        }
        return C6F.A00(windowInsets);
    }

    @Override // com.facebook.ads.redexgen.X.C02875h
    public final void A0B(View view) {
        view.stopNestedScroll();
    }

    @Override // com.facebook.ads.redexgen.X.C02875h
    public final void A0E(View view, final C5T c5t) {
        final C02945o c02945o = this;
        char c = c5t == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    view = view;
                    view.setOnApplyWindowInsetsListener(null);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c02945o = c02945o;
                    view = view;
                    c5t = c5t;
                    view.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: com.facebook.ads.redexgen.X.5n
                        @Override // android.view.View.OnApplyWindowInsetsListener
                        public final WindowInsets onApplyWindowInsets(View view2, WindowInsets windowInsets) {
                            return (WindowInsets) C6F.A01(c5t.A4t(view2, C6F.A00(windowInsets)));
                        }
                    });
                    c = 3;
                    break;
            }
        }
    }
}
