package androidx.emoji2.text;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextPaint;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes11.dex */
@RequiresApi
@RestrictTo
public final class TypefaceEmojiSpan extends EmojiSpan {

    @Nullable
    private static Paint sDebugPaint;

    @NonNull
    private static Paint c() {
        if (sDebugPaint == null) {
            TextPaint textPaint = new TextPaint();
            sDebugPaint = textPaint;
            textPaint.setColor(EmojiCompat.b().c());
            sDebugPaint.setStyle(Paint.Style.FILL);
        }
        return sDebugPaint;
    }

    public TypefaceEmojiSpan(@NonNull EmojiMetadata emojiMetadata) {
        super(emojiMetadata);
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(@NonNull Canvas canvas, @SuppressLint({"UnknownNullness"}) CharSequence charSequence, @IntRange int i10, @IntRange int i11, float f, int i12, int i13, int i14, @NonNull Paint paint) {
        if (EmojiCompat.b().i()) {
            canvas.drawRect(f, i12, f + b(), i14, c());
        }
        a().a(canvas, f, i13, paint);
    }
}
