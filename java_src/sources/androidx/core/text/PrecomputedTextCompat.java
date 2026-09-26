package androidx.core.text;

import android.annotation.SuppressLint;
import android.os.Build;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.os.TraceCompat;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes6.dex */
public class PrecomputedTextCompat implements Spannable {
    private static final char LINE_FEED = '\n';

    @NonNull
    @GuardedBy
    private static Executor sExecutor;
    private static final Object sLock = new Object();

    @NonNull
    private final int[] mParagraphEnds;

    @NonNull
    private final Params mParams;

    @NonNull
    private final Spannable mText;

    @Nullable
    private final PrecomputedText mWrapped;

    public static final class Params {
        private final int mBreakStrategy;
        private final int mHyphenationFrequency;

        @NonNull
        private final TextPaint mPaint;

        @Nullable
        private final TextDirectionHeuristic mTextDir;
        final PrecomputedText.Params mWrapped;

        public static class Builder {

            @NonNull
            private final TextPaint mPaint;
            private int mBreakStrategy = 1;
            private int mHyphenationFrequency = 1;
            private TextDirectionHeuristic mTextDir = TextDirectionHeuristics.FIRSTSTRONG_LTR;

            @RequiresApi
            public Builder b(int i10) {
                this.mBreakStrategy = i10;
                return this;
            }

            @RequiresApi
            public Builder c(int i10) {
                this.mHyphenationFrequency = i10;
                return this;
            }

            @RequiresApi
            public Builder d(@NonNull TextDirectionHeuristic textDirectionHeuristic) {
                this.mTextDir = textDirectionHeuristic;
                return this;
            }

            @NonNull
            public Params a() {
                return new Params(this.mPaint, this.mTextDir, this.mBreakStrategy, this.mHyphenationFrequency);
            }

            public Builder(@NonNull TextPaint textPaint) {
                this.mPaint = textPaint;
            }
        }

        Params(@NonNull TextPaint textPaint, @NonNull TextDirectionHeuristic textDirectionHeuristic, int i10, int i11) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.mWrapped = h.a(textPaint).setBreakStrategy(i10).setHyphenationFrequency(i11).setTextDirection(textDirectionHeuristic).build();
            } else {
                this.mWrapped = null;
            }
            this.mPaint = textPaint;
            this.mTextDir = textDirectionHeuristic;
            this.mBreakStrategy = i10;
            this.mHyphenationFrequency = i11;
        }

        @RequiresApi
        public int b() {
            return this.mBreakStrategy;
        }

        @RequiresApi
        public int c() {
            return this.mHyphenationFrequency;
        }

        @Nullable
        @RequiresApi
        public TextDirectionHeuristic d() {
            return this.mTextDir;
        }

        @NonNull
        public TextPaint e() {
            return this.mPaint;
        }

        public boolean equals(@Nullable Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Params)) {
                return false;
            }
            Params params = (Params) obj;
            return a(params) && this.mTextDir == params.d();
        }

        @RestrictTo
        public boolean a(@NonNull Params params) {
            int i10 = Build.VERSION.SDK_INT;
            if (this.mBreakStrategy != params.b() || this.mHyphenationFrequency != params.c() || this.mPaint.getTextSize() != params.e().getTextSize() || this.mPaint.getTextScaleX() != params.e().getTextScaleX() || this.mPaint.getTextSkewX() != params.e().getTextSkewX() || this.mPaint.getLetterSpacing() != params.e().getLetterSpacing() || !TextUtils.equals(this.mPaint.getFontFeatureSettings(), params.e().getFontFeatureSettings()) || this.mPaint.getFlags() != params.e().getFlags()) {
                return false;
            }
            if (i10 >= 24) {
                if (!this.mPaint.getTextLocales().equals(params.e().getTextLocales())) {
                    return false;
                }
            } else if (!this.mPaint.getTextLocale().equals(params.e().getTextLocale())) {
                return false;
            }
            if (this.mPaint.getTypeface() == null) {
                return params.e().getTypeface() == null;
            }
            return this.mPaint.getTypeface().equals(params.e().getTypeface());
        }

        public int hashCode() {
            return Build.VERSION.SDK_INT >= 24 ? ObjectsCompat.b(Float.valueOf(this.mPaint.getTextSize()), Float.valueOf(this.mPaint.getTextScaleX()), Float.valueOf(this.mPaint.getTextSkewX()), Float.valueOf(this.mPaint.getLetterSpacing()), Integer.valueOf(this.mPaint.getFlags()), this.mPaint.getTextLocales(), this.mPaint.getTypeface(), Boolean.valueOf(this.mPaint.isElegantTextHeight()), this.mTextDir, Integer.valueOf(this.mBreakStrategy), Integer.valueOf(this.mHyphenationFrequency)) : ObjectsCompat.b(Float.valueOf(this.mPaint.getTextSize()), Float.valueOf(this.mPaint.getTextScaleX()), Float.valueOf(this.mPaint.getTextSkewX()), Float.valueOf(this.mPaint.getLetterSpacing()), Integer.valueOf(this.mPaint.getFlags()), this.mPaint.getTextLocale(), this.mPaint.getTypeface(), Boolean.valueOf(this.mPaint.isElegantTextHeight()), this.mTextDir, Integer.valueOf(this.mBreakStrategy), Integer.valueOf(this.mHyphenationFrequency));
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("{");
            sb.append("textSize=" + this.mPaint.getTextSize());
            sb.append(", textScaleX=" + this.mPaint.getTextScaleX());
            sb.append(", textSkewX=" + this.mPaint.getTextSkewX());
            int i10 = Build.VERSION.SDK_INT;
            sb.append(", letterSpacing=" + this.mPaint.getLetterSpacing());
            sb.append(", elegantTextHeight=" + this.mPaint.isElegantTextHeight());
            if (i10 >= 24) {
                sb.append(", textLocale=" + this.mPaint.getTextLocales());
            } else {
                sb.append(", textLocale=" + this.mPaint.getTextLocale());
            }
            sb.append(", typeface=" + this.mPaint.getTypeface());
            if (i10 >= 26) {
                sb.append(", variationSettings=" + this.mPaint.getFontVariationSettings());
            }
            sb.append(", textDir=" + this.mTextDir);
            sb.append(", breakStrategy=" + this.mBreakStrategy);
            sb.append(", hyphenationFrequency=" + this.mHyphenationFrequency);
            sb.append("}");
            return sb.toString();
        }

        @RequiresApi
        public Params(@NonNull PrecomputedText.Params params) {
            this.mPaint = params.getTextPaint();
            this.mTextDir = params.getTextDirection();
            this.mBreakStrategy = params.getBreakStrategy();
            this.mHyphenationFrequency = params.getHyphenationFrequency();
            this.mWrapped = Build.VERSION.SDK_INT < 29 ? null : params;
        }
    }

    private static class PrecomputedTextFutureTask extends FutureTask<PrecomputedTextCompat> {

        private static class PrecomputedTextCallback implements Callable<PrecomputedTextCompat> {
            private Params mParams;
            private CharSequence mText;

            @Override // java.util.concurrent.Callable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public PrecomputedTextCompat call() throws Exception {
                return PrecomputedTextCompat.a(this.mText, this.mParams);
            }
        }
    }

    private PrecomputedTextCompat(@NonNull CharSequence charSequence, @NonNull Params params, @NonNull int[] iArr) {
        this.mText = new SpannableString(charSequence);
        this.mParams = params;
        this.mParagraphEnds = iArr;
        this.mWrapped = null;
    }

    @NonNull
    public Params b() {
        return this.mParams;
    }

    @Nullable
    @RequiresApi
    @RestrictTo
    public PrecomputedText c() {
        if (a.a(this.mText)) {
            return b.a(this.mText);
        }
        return null;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i10) {
        return this.mText.charAt(i10);
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        return this.mText.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        return this.mText.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        return this.mText.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public <T> T[] getSpans(int i10, int i11, Class<T> cls) {
        return Build.VERSION.SDK_INT >= 29 ? (T[]) this.mWrapped.getSpans(i10, i11, cls) : (T[]) this.mText.getSpans(i10, i11, cls);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.mText.length();
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i10, int i11, Class cls) {
        return this.mText.nextSpanTransition(i10, i11, cls);
    }

    @Override // android.text.Spannable
    public void removeSpan(Object obj) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.mWrapped.removeSpan(obj);
        } else {
            this.mText.removeSpan(obj);
        }
    }

    @Override // android.text.Spannable
    public void setSpan(Object obj, int i10, int i11, int i12) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.mWrapped.setSpan(obj, i10, i11, i12);
        } else {
            this.mText.setSpan(obj, i10, i11, i12);
        }
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i10, int i11) {
        return this.mText.subSequence(i10, i11);
    }

    @Override // java.lang.CharSequence
    @NonNull
    public String toString() {
        return this.mText.toString();
    }

    @RequiresApi
    private PrecomputedTextCompat(@NonNull PrecomputedText precomputedText, @NonNull Params params) {
        this.mText = precomputedText;
        this.mParams = params;
        this.mParagraphEnds = null;
        this.mWrapped = Build.VERSION.SDK_INT < 29 ? null : precomputedText;
    }

    @SuppressLint({"WrongConstant"})
    public static PrecomputedTextCompat a(@NonNull CharSequence charSequence, @NonNull Params params) {
        PrecomputedText.Params params2;
        Preconditions.i(charSequence);
        Preconditions.i(params);
        try {
            TraceCompat.a("PrecomputedText");
            if (Build.VERSION.SDK_INT >= 29 && (params2 = params.mWrapped) != null) {
                return new PrecomputedTextCompat(PrecomputedText.create(charSequence, params2), params);
            }
            ArrayList arrayList = new ArrayList();
            int length = charSequence.length();
            int i10 = 0;
            while (i10 < length) {
                int iIndexOf = TextUtils.indexOf(charSequence, LINE_FEED, i10, length);
                if (iIndexOf < 0) {
                    i10 = length;
                } else {
                    i10 = iIndexOf + 1;
                }
                arrayList.add(Integer.valueOf(i10));
            }
            int[] iArr = new int[arrayList.size()];
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                iArr[i11] = ((Integer) arrayList.get(i11)).intValue();
            }
            StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), params.e(), Integer.MAX_VALUE).setBreakStrategy(params.b()).setHyphenationFrequency(params.c()).setTextDirection(params.d()).build();
            return new PrecomputedTextCompat(charSequence, params, iArr);
        } finally {
            TraceCompat.b();
        }
    }
}
