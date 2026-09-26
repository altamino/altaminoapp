package com.google.android.exoplayer2.ui;

import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.RelativeSizeSpan;

/* JADX INFO: loaded from: classes5.dex */
final class a1 {
    public static float h(int i10, float f, int i11, int i12) {
        float f6;
        if (f == -3.4028235E38f) {
            return -3.4028235E38f;
        }
        if (i10 == 0) {
            f6 = i12;
        } else {
            if (i10 != 1) {
                if (i10 != 2) {
                    return -3.4028235E38f;
                }
                return f;
            }
            f6 = i11;
        }
        return f * f6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean c(Object obj) {
        return !(obj instanceof a3.b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean d(Object obj) {
        return (obj instanceof AbsoluteSizeSpan) || (obj instanceof RelativeSizeSpan);
    }

    public static void e(com.google.android.exoplayer2.text.b.C0178b c0178b) {
        c0178b.b();
        if (c0178b.e() instanceof Spanned) {
            if (!(c0178b.e() instanceof Spannable)) {
                c0178b.o(SpannableString.valueOf(c0178b.e()));
            }
            g((Spannable) com.google.android.exoplayer2.util.a.e(c0178b.e()), new com.google.common.base.p() { // from class: com.google.android.exoplayer2.ui.z0
                @Override // com.google.common.base.p
                public final boolean apply(Object obj) {
                    return a1.c(obj);
                }
            });
        }
        f(c0178b);
    }

    public static void f(com.google.android.exoplayer2.text.b.C0178b c0178b) {
        c0178b.q(-3.4028235E38f, Integer.MIN_VALUE);
        if (c0178b.e() instanceof Spanned) {
            if (!(c0178b.e() instanceof Spannable)) {
                c0178b.o(SpannableString.valueOf(c0178b.e()));
            }
            g((Spannable) com.google.android.exoplayer2.util.a.e(c0178b.e()), new com.google.common.base.p() { // from class: com.google.android.exoplayer2.ui.y0
                @Override // com.google.common.base.p
                public final boolean apply(Object obj) {
                    return a1.d(obj);
                }
            });
        }
    }

    private static void g(Spannable spannable, com.google.common.base.p<Object> pVar) {
        for (Object obj : spannable.getSpans(0, spannable.length(), Object.class)) {
            if (pVar.apply(obj)) {
                spannable.removeSpan(obj);
            }
        }
    }
}
