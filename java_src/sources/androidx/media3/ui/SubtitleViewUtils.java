package androidx.media3.ui;

import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.RelativeSizeSpan;
import androidx.media3.common.text.Cue;
import androidx.media3.common.text.LanguageFeatureSpan;
import androidx.media3.common.util.Assertions;

/* JADX INFO: loaded from: classes11.dex */
final class SubtitleViewUtils {
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
        return !(obj instanceof LanguageFeatureSpan);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean d(Object obj) {
        return (obj instanceof AbsoluteSizeSpan) || (obj instanceof RelativeSizeSpan);
    }

    private SubtitleViewUtils() {
    }

    public static void e(Cue.Builder builder) {
        builder.b();
        if (builder.e() instanceof Spanned) {
            if (!(builder.e() instanceof Spannable)) {
                builder.o(SpannableString.valueOf(builder.e()));
            }
            g((Spannable) Assertions.e(builder.e()), new com.google.common.base.p() { // from class: androidx.media3.ui.d0
                @Override // com.google.common.base.p
                public final boolean apply(Object obj) {
                    return SubtitleViewUtils.c(obj);
                }
            });
        }
        f(builder);
    }

    public static void f(Cue.Builder builder) {
        builder.q(-3.4028235E38f, Integer.MIN_VALUE);
        if (builder.e() instanceof Spanned) {
            if (!(builder.e() instanceof Spannable)) {
                builder.o(SpannableString.valueOf(builder.e()));
            }
            g((Spannable) Assertions.e(builder.e()), new com.google.common.base.p() { // from class: androidx.media3.ui.e0
                @Override // com.google.common.base.p
                public final boolean apply(Object obj) {
                    return SubtitleViewUtils.d(obj);
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
