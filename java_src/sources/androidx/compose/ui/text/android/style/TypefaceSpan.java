package androidx.compose.ui.text.android.style;

import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
import androidx.compose.ui.text.android.InternalPlatformTextApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
@InternalPlatformTextApi
public final class TypefaceSpan extends MetricAffectingSpan {

    @NotNull
    private final Typeface typeface;

    public TypefaceSpan(@NotNull Typeface typeface) {
        t.j(typeface, "typeface");
        this.typeface = typeface;
    }

    private final void a(Paint paint) {
        paint.setTypeface(this.typeface);
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(@NotNull TextPaint ds) {
        t.j(ds, "ds");
        a(ds);
    }

    @Override // android.text.style.MetricAffectingSpan
    public void updateMeasureState(@NotNull TextPaint paint) {
        t.j(paint, "paint");
        a(paint);
    }
}
