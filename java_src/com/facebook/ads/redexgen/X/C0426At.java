package com.facebook.ads.redexgen.X;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.os.Handler;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.At, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0426At implements B3 {
    private TransitionDrawable A00;
    private TransitionDrawable A01;
    private final int A03;
    private final Drawable A04;
    private final Drawable A05;
    private final View A07;
    private final Handler A06 = new Handler();
    private B7 A02 = B7.A04;

    public C0426At(View view, int i, Drawable drawable, Drawable drawable2) {
        this.A03 = i;
        this.A07 = view;
        this.A05 = drawable;
        this.A04 = drawable2;
        this.A01 = new TransitionDrawable(new Drawable[]{drawable, drawable2});
        this.A01.setCrossFadeEnabled(true);
        this.A00 = new TransitionDrawable(new Drawable[]{drawable2, drawable});
        this.A00.setCrossFadeEnabled(true);
        OY.A0S(this.A07, this.A01);
    }

    private void A04(boolean z) {
        C0426At c0426At = this;
        c0426At.A06.removeCallbacksAndMessages(null);
        char c = z ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0426At = c0426At;
                    c0426At.A02 = B7.A05;
                    OY.A0S(c0426At.A07, c0426At.A00);
                    c0426At.A00.startTransition(c0426At.A03);
                    c0426At.A06.postDelayed(new C0427Av(c0426At), c0426At.A03);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c0426At = c0426At;
                    OY.A0S(c0426At.A07, c0426At.A05);
                    c0426At.A02 = B7.A04;
                    c = 3;
                    break;
            }
        }
    }

    private void A05(boolean z) {
        C0426At c0426At = this;
        c0426At.A06.removeCallbacksAndMessages(null);
        char c = z ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0426At = c0426At;
                    c0426At.A02 = B7.A03;
                    OY.A0S(c0426At.A07, c0426At.A01);
                    c0426At.A01.startTransition(c0426At.A03);
                    c0426At.A06.postDelayed(new C0431Az(c0426At), c0426At.A03);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c0426At = c0426At;
                    OY.A0S(c0426At.A07, c0426At.A04);
                    c0426At.A02 = B7.A02;
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.B3
    public final void A2a(boolean z, boolean z2) {
        C0426At c0426At = this;
        char c = z2 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0426At = c0426At;
                    c0426At.A04(z);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c0426At = c0426At;
                    c0426At.A05(z);
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.B3
    public final B7 A3j() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.B3
    public final void cancel() {
        B7 b7 = null;
        this.A06.removeCallbacksAndMessages(null);
        this.A01.resetTransition();
        this.A00.resetTransition();
        char c = this.A02 == B7.A03 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    b7 = B7.A04;
                    c = 3;
                    break;
                case 3:
                    this.A02 = b7;
                    return;
                case 4:
                    b7 = B7.A02;
                    c = 3;
                    break;
            }
        }
    }
}
