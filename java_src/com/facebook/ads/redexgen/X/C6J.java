package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.view.accessibility.AccessibilityEvent;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.6J, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C6J {
    private static final C6G A00;

    static {
        if (Build.VERSION.SDK_INT >= 19) {
            A00 = new C6H() { // from class: com.facebook.ads.redexgen.X.6I
                @Override // com.facebook.ads.redexgen.X.C6G
                public final int A00(AccessibilityEvent accessibilityEvent) {
                    return accessibilityEvent.getContentChangeTypes();
                }

                @Override // com.facebook.ads.redexgen.X.C6G
                public final void A01(AccessibilityEvent accessibilityEvent, int i) {
                    accessibilityEvent.setContentChangeTypes(i);
                }
            };
        } else if (Build.VERSION.SDK_INT >= 16) {
            A00 = new C6H();
        } else {
            A00 = new C6G();
        }
    }

    private C6J() {
    }

    public static int A00(AccessibilityEvent accessibilityEvent) {
        return A00.A00(accessibilityEvent);
    }

    public static void A01(AccessibilityEvent accessibilityEvent, int i) {
        A00.A01(accessibilityEvent, i);
    }
}
