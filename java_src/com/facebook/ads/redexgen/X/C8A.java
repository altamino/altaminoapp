package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.TextView;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.8A, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C8A implements B3 {
    private static byte[] A06;

    @Nullable
    private ValueAnimator A00;
    private B7 A01 = B7.A04;
    private final int A02;
    private final int A03;
    private final int A04;
    private final View A05;

    static {
        A05();
    }

    private static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        int i4 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    bArrCopyOfRange = bArrCopyOfRange;
                    if (i4 >= bArrCopyOfRange.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bArrCopyOfRange = bArrCopyOfRange;
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 12);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A05() {
        A06 = new byte[]{-10, -25, -6, -10, -59, -15, -18, -15, -12};
    }

    public C8A(View view, int i, int i2, int i3) {
        this.A02 = i;
        this.A05 = view;
        this.A04 = i2;
        this.A03 = i3;
    }

    private void A06(final int i, final int i2) {
        B7 b7 = null;
        char c = i == this.A04 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    b7 = B7.A03;
                    c = 3;
                    break;
                case 3:
                    final C8A c8a = this;
                    c8a.A01 = b7;
                    c8a.A00 = ObjectAnimator.ofInt((TextView) c8a.A05, A04(0, 9, 118), i, i2);
                    c8a.A00.setEvaluator(new ArgbEvaluator());
                    c8a.A00.setDuration(c8a.A02);
                    c8a.A00.addListener(new Animator.AnimatorListener() { // from class: com.facebook.ads.redexgen.X.8C
                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationCancel(Animator animator) {
                            this.A02.A07(i2, i, false);
                            if (this.A02.A00 != null) {
                                this.A02.A00.removeAllListeners();
                                this.A02.A00 = null;
                            }
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator) {
                            C8C c8c = this;
                            B7 b72 = null;
                            C8A c8a2 = c8c.A02;
                            char c2 = i == c8c.A02.A04 ? (char) 2 : (char) 6;
                            while (true) {
                                switch (c2) {
                                    case 2:
                                        b72 = B7.A02;
                                        c2 = 3;
                                        break;
                                    case 3:
                                        c8c = c8c;
                                        c8a2 = c8a2;
                                        b72 = b72;
                                        c8a2.A01 = b72;
                                        if (c8c.A02.A00 == null) {
                                            c2 = 5;
                                            break;
                                        } else {
                                            c2 = 4;
                                            break;
                                        }
                                    case 4:
                                        c8c = c8c;
                                        c8c.A02.A00.removeAllListeners();
                                        c8c.A02.A00 = null;
                                        c2 = 5;
                                        break;
                                    case 5:
                                        return;
                                    case 6:
                                        b72 = B7.A04;
                                        c2 = 3;
                                        break;
                                }
                            }
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationRepeat(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationStart(Animator animator) {
                        }
                    });
                    c8a.A00.start();
                    return;
                case 4:
                    b7 = B7.A05;
                    c = 3;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A07(int i, int i2, boolean z) {
        C8A c8a = this;
        B7 b7 = null;
        char c = z ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8a = c8a;
                    c8a.A06(i, i2);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c8a = c8a;
                    ((TextView) c8a.A05).setTextColor(i2);
                    if (i2 != c8a.A03) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    b7 = B7.A02;
                    c = 6;
                    break;
                case 6:
                    c8a = c8a;
                    b7 = b7;
                    c8a.A01 = b7;
                    c = 3;
                    break;
                case 7:
                    b7 = B7.A04;
                    c = 6;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.B3
    public final void A2a(boolean z, boolean z2) {
        C8A c8a = this;
        int i = 0;
        int i2 = 0;
        char c = z2 ? (char) 2 : (char) 7;
        while (true) {
            switch (c) {
                case 2:
                    c8a = c8a;
                    i = c8a.A03;
                    c = 3;
                    break;
                case 3:
                    if (!z2) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8a = c8a;
                    i2 = c8a.A04;
                    c = 5;
                    break;
                case 5:
                    c8a.A07(i, i2, z);
                    return;
                case 6:
                    c8a = c8a;
                    i2 = c8a.A03;
                    c = 5;
                    break;
                case 7:
                    c8a = c8a;
                    i = c8a.A04;
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.B3
    public final B7 A3j() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.B3
    public final void cancel() {
        if (this.A00 != null) {
            this.A00.cancel();
        }
    }
}
