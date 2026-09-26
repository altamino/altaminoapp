package androidx.emoji2.text;

import android.annotation.SuppressLint;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;

/* JADX INFO: loaded from: classes11.dex */
@RequiresApi
public abstract class EmojiSpan extends ReplacementSpan {

    @NonNull
    private final EmojiMetadata mMetadata;
    private final Paint.FontMetricsInt mTmpFontMetrics = new Paint.FontMetricsInt();
    private short mWidth = -1;
    private short mHeight = -1;
    private float mRatio = 1.0f;

    @NonNull
    @RestrictTo
    public final EmojiMetadata a() {
        return this.mMetadata;
    }

    @RestrictTo
    final int b() {
        return this.mWidth;
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(@NonNull Paint paint, @SuppressLint({"UnknownNullness"}) CharSequence charSequence, int i10, int i11, @Nullable Paint.FontMetricsInt fontMetricsInt) {
        paint.getFontMetricsInt(this.mTmpFontMetrics);
        Paint.FontMetricsInt fontMetricsInt2 = this.mTmpFontMetrics;
        this.mRatio = (Math.abs(fontMetricsInt2.descent - fontMetricsInt2.ascent) * 1.0f) / this.mMetadata.e();
        this.mHeight = (short) (this.mMetadata.e() * this.mRatio);
        short sI = (short) (this.mMetadata.i() * this.mRatio);
        this.mWidth = sI;
        if (fontMetricsInt != null) {
            Paint.FontMetricsInt fontMetricsInt3 = this.mTmpFontMetrics;
            fontMetricsInt.ascent = fontMetricsInt3.ascent;
            fontMetricsInt.descent = fontMetricsInt3.descent;
            fontMetricsInt.top = fontMetricsInt3.top;
            fontMetricsInt.bottom = fontMetricsInt3.bottom;
        }
        return sI;
    }

    @RestrictTo
    EmojiSpan(@NonNull EmojiMetadata emojiMetadata) {
        Preconditions.j(emojiMetadata, "metadata cannot be null");
        this.mMetadata = emojiMetadata;
    }
}
