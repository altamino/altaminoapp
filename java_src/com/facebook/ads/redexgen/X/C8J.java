package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.8J, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C8J extends C5L {
    public final C5L A00 = new C5L(this) { // from class: com.facebook.ads.redexgen.X.8I
        public final C8J A00;

        {
            this.A00 = this;
        }

        @Override // com.facebook.ads.redexgen.X.C5L
        public final void A08(View view, C6X c6x) {
            C8I c8i = this;
            super.A08(view, c6x);
            char c = !c8i.A00.A0B() ? (char) 2 : (char) 4;
            while (true) {
                switch (c) {
                    case 2:
                        c8i = c8i;
                        if (c8i.A00.A01.getLayoutManager() == null) {
                            c = 4;
                            break;
                        } else {
                            c = 3;
                            break;
                        }
                    case 3:
                        c8i = c8i;
                        view = view;
                        c6x = c6x;
                        c8i.A00.A01.getLayoutManager().A1G(view, c6x);
                        c = 4;
                        break;
                    case 4:
                        return;
                }
            }
        }

        @Override // com.facebook.ads.redexgen.X.C5L
        public final boolean A09(View view, int i, Bundle bundle) {
            C8I c8i = this;
            boolean zA1g = false;
            char c = super.A09(view, i, bundle) ? (char) 2 : (char) 4;
            while (true) {
                switch (c) {
                    case 2:
                        zA1g = true;
                        c = 3;
                        break;
                    case 3:
                        return zA1g;
                    case 4:
                        c8i = c8i;
                        if (!c8i.A00.A0B()) {
                            c = 5;
                            break;
                        } else {
                            c = 7;
                            break;
                        }
                    case 5:
                        c8i = c8i;
                        if (c8i.A00.A01.getLayoutManager() == null) {
                            c = 7;
                            break;
                        } else {
                            c = 6;
                            break;
                        }
                    case 6:
                        c8i = c8i;
                        view = view;
                        bundle = bundle;
                        zA1g = c8i.A00.A01.getLayoutManager().A1g(view, i, bundle);
                        c = 3;
                        break;
                    case 7:
                        zA1g = false;
                        c = 3;
                        break;
                }
            }
        }
    };
    public final C8H A01;

    public C8J(C8H c8h) {
        this.A01 = c8h;
    }

    @Override // com.facebook.ads.redexgen.X.C5L
    public final void A07(View view, AccessibilityEvent accessibilityEvent) {
        C8J c8j = this;
        C8H c8h = null;
        super.A07(view, accessibilityEvent);
        accessibilityEvent.setClassName(C8H.class.getName());
        char c = view instanceof C8H ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c8j = c8j;
                    if (!c8j.A0B()) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 3:
                    view = view;
                    c8h = (C8H) view;
                    if (c8h.getLayoutManager() == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    accessibilityEvent = accessibilityEvent;
                    c8h = c8h;
                    c8h.getLayoutManager().A22(accessibilityEvent);
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C5L
    public final void A08(View view, C6X c6x) {
        C8J c8j = this;
        super.A08(view, c6x);
        c6x.A0O(C8H.class.getName());
        char c = !c8j.A0B() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8j = c8j;
                    if (c8j.A01.getLayoutManager() == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c8j = c8j;
                    c6x = c6x;
                    c8j.A01.getLayoutManager().A1J(c6x);
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C5L
    public final boolean A09(View view, int i, Bundle bundle) {
        C8J c8j = this;
        boolean zA1e = false;
        char c = super.A09(view, i, bundle) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    zA1e = true;
                    c = 3;
                    break;
                case 3:
                    return zA1e;
                case 4:
                    c8j = c8j;
                    if (!c8j.A0B()) {
                        c = 5;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 5:
                    c8j = c8j;
                    if (c8j.A01.getLayoutManager() == null) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c8j = c8j;
                    bundle = bundle;
                    zA1e = c8j.A01.getLayoutManager().A1e(i, bundle);
                    c = 3;
                    break;
                case 7:
                    zA1e = false;
                    c = 3;
                    break;
            }
        }
    }

    public final C5L A0A() {
        return this.A00;
    }

    public final boolean A0B() {
        return this.A01.A1m();
    }
}
