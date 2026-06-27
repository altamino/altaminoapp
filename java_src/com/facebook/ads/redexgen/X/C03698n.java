package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import android.view.View;
import android.widget.RelativeLayout;
import java.lang.ref.WeakReference;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.8n, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C03698n implements InterfaceC03688m {
    public final WeakReference<C8s> A00;

    private C03698n(C8s c8s) {
        this.A00 = new WeakReference<>(c8s);
    }

    private void A00(C8s c8s) {
        S6 s6 = c8s.A0C;
        if (s6 == null) {
            return;
        }
        c8s.A06.bringChildToFront(s6);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03688m
    public final void A2Y(View view, int i, RelativeLayout.LayoutParams layoutParams) {
        C8s c8s = this.A00.get();
        if (c8s == null) {
            return;
        }
        c8s.A06.addView(view, i, layoutParams);
        A00(c8s);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03688m
    public final void A2Z(View view, RelativeLayout.LayoutParams layoutParams) {
        C8s c8s = this.A00.get();
        if (c8s == null) {
            return;
        }
        c8s.A06.addView(view, layoutParams);
        A00(c8s);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03688m
    public void A2f(String str) {
        if (this.A00.get() == null) {
            return;
        }
        this.A00.get().A0H(str);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03688m
    public void A2g(String str, C0660Jv c0660Jv) {
        if (this.A00.get() == null) {
            return;
        }
        this.A00.get().A0J(str, c0660Jv);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03688m
    public final void A42(String str, AnonymousClass38 anonymousClass38, boolean z, @Nullable PZ pz) {
        if (this.A00.get() == null) {
            return;
        }
        this.A00.get().A0I(str, anonymousClass38, z, pz);
    }
}
