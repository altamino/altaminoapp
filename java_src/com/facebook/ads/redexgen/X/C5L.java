package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.5L, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public class C5L {
    private static final View.AccessibilityDelegate A01;
    private static final C5I A02;
    public final View.AccessibilityDelegate A00 = A02.A00(this);

    static {
        if (Build.VERSION.SDK_INT >= 16) {
            A02 = new C5I() { // from class: com.facebook.ads.redexgen.X.5J
                @Override // com.facebook.ads.redexgen.X.C5I
                public final View.AccessibilityDelegate A00(final C5L c5l) {
                    return new View.AccessibilityDelegate() { // from class: com.facebook.ads.redexgen.X.5H
                        @Override // android.view.View.AccessibilityDelegate
                        public final boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                            return c5l.A05(view, accessibilityEvent);
                        }

                        @Override // android.view.View.AccessibilityDelegate
                        public final AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
                            AccessibilityNodeProvider accessibilityNodeProvider = null;
                            C03116g c03116gA01 = c5l.A01(view);
                            char c = c03116gA01 != null ? (char) 2 : (char) 4;
                            while (true) {
                                switch (c) {
                                    case 2:
                                        c03116gA01 = c03116gA01;
                                        accessibilityNodeProvider = (AccessibilityNodeProvider) c03116gA01.A02();
                                        c = 3;
                                        break;
                                    case 3:
                                        return accessibilityNodeProvider;
                                    case 4:
                                        accessibilityNodeProvider = null;
                                        c = 3;
                                        break;
                                }
                            }
                        }

                        @Override // android.view.View.AccessibilityDelegate
                        public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                            c5l.A07(view, accessibilityEvent);
                        }

                        @Override // android.view.View.AccessibilityDelegate
                        public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                            c5l.A08(view, C6X.A01(accessibilityNodeInfo));
                        }

                        @Override // android.view.View.AccessibilityDelegate
                        public final void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                            c5l.A03(view, accessibilityEvent);
                        }

                        @Override // android.view.View.AccessibilityDelegate
                        public final boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
                            return c5l.A06(viewGroup, view, accessibilityEvent);
                        }

                        @Override // android.view.View.AccessibilityDelegate
                        public final boolean performAccessibilityAction(View view, int i, Bundle bundle) {
                            return c5l.A09(view, i, bundle);
                        }

                        @Override // android.view.View.AccessibilityDelegate
                        public final void sendAccessibilityEvent(View view, int i) {
                            c5l.A02(view, i);
                        }

                        @Override // android.view.View.AccessibilityDelegate
                        public final void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
                            c5l.A04(view, accessibilityEvent);
                        }
                    };
                }

                @Override // com.facebook.ads.redexgen.X.C5I
                public final C03116g A01(View.AccessibilityDelegate accessibilityDelegate, View view) {
                    C03116g c03116g = null;
                    AccessibilityNodeProvider accessibilityNodeProvider = accessibilityDelegate.getAccessibilityNodeProvider(view);
                    char c = accessibilityNodeProvider != null ? (char) 2 : (char) 4;
                    while (true) {
                        switch (c) {
                            case 2:
                                accessibilityNodeProvider = accessibilityNodeProvider;
                                c03116g = new C03116g(accessibilityNodeProvider);
                                c = 3;
                                break;
                            case 3:
                                return c03116g;
                            case 4:
                                c03116g = null;
                                c = 3;
                                break;
                        }
                    }
                }

                @Override // com.facebook.ads.redexgen.X.C5I
                public final boolean A02(View.AccessibilityDelegate accessibilityDelegate, View view, int i, Bundle bundle) {
                    return accessibilityDelegate.performAccessibilityAction(view, i, bundle);
                }
            };
        } else {
            A02 = new C5I();
        }
        A01 = new View.AccessibilityDelegate();
    }

    public final View.AccessibilityDelegate A00() {
        return this.A00;
    }

    public final C03116g A01(View view) {
        return A02.A01(A01, view);
    }

    public final void A02(View view, int i) {
        A01.sendAccessibilityEvent(view, i);
    }

    public final void A03(View view, AccessibilityEvent accessibilityEvent) {
        A01.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public final void A04(View view, AccessibilityEvent accessibilityEvent) {
        A01.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }

    public final boolean A05(View view, AccessibilityEvent accessibilityEvent) {
        return A01.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public final boolean A06(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return A01.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    public void A07(View view, AccessibilityEvent accessibilityEvent) {
        A01.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    public void A08(View view, C6X c6x) {
        A01.onInitializeAccessibilityNodeInfo(view, c6x.A0M());
    }

    public boolean A09(View view, int i, Bundle bundle) {
        return A02.A02(A01, view, i, bundle);
    }
}
