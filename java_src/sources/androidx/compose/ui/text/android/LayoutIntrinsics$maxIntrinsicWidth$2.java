package androidx.compose.ui.text.android;

import android.text.BoringLayout;
import android.text.Layout;
import android.text.TextPaint;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
final class LayoutIntrinsics$maxIntrinsicWidth$2 extends v implements e8.a<Float> {
    final /* synthetic */ CharSequence $charSequence;
    final /* synthetic */ TextPaint $textPaint;
    final /* synthetic */ LayoutIntrinsics this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LayoutIntrinsics$maxIntrinsicWidth$2(LayoutIntrinsics layoutIntrinsics, CharSequence charSequence, TextPaint textPaint) {
        super(0);
        this.this$0 = layoutIntrinsics;
        this.$charSequence = charSequence;
        this.$textPaint = textPaint;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Float invoke() {
        float desiredWidth;
        BoringLayout.Metrics metricsA = this.this$0.a();
        if (metricsA != null) {
            desiredWidth = metricsA.width;
        } else {
            CharSequence charSequence = this.$charSequence;
            desiredWidth = Layout.getDesiredWidth(charSequence, 0, charSequence.length(), this.$textPaint);
        }
        if (LayoutIntrinsicsKt.e(desiredWidth, this.$charSequence, this.$textPaint)) {
            desiredWidth += 0.5f;
        }
        return Float.valueOf(desiredWidth);
    }
}
