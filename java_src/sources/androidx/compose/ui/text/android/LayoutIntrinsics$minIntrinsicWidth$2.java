package androidx.compose.ui.text.android;

import android.text.TextPaint;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
final class LayoutIntrinsics$minIntrinsicWidth$2 extends v implements e8.a<Float> {
    final /* synthetic */ CharSequence $charSequence;
    final /* synthetic */ TextPaint $textPaint;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LayoutIntrinsics$minIntrinsicWidth$2(CharSequence charSequence, TextPaint textPaint) {
        super(0);
        this.$charSequence = charSequence;
        this.$textPaint = textPaint;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Float invoke() {
        return Float.valueOf(LayoutIntrinsicsKt.c(this.$charSequence, this.$textPaint));
    }
}
