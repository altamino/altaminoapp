package androidx.compose.ui.text.android;

import android.text.BoringLayout;
import android.text.TextPaint;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
final class LayoutIntrinsics$boringMetrics$2 extends v implements e8.a<BoringLayout.Metrics> {
    final /* synthetic */ CharSequence $charSequence;
    final /* synthetic */ int $textDirectionHeuristic;
    final /* synthetic */ TextPaint $textPaint;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LayoutIntrinsics$boringMetrics$2(int i10, CharSequence charSequence, TextPaint textPaint) {
        super(0);
        this.$textDirectionHeuristic = i10;
        this.$charSequence = charSequence;
        this.$textPaint = textPaint;
    }

    @Override // e8.a
    @Nullable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final BoringLayout.Metrics invoke() {
        return BoringLayoutFactory.INSTANCE.b(this.$charSequence, this.$textPaint, TextLayoutKt.e(this.$textDirectionHeuristic));
    }
}
