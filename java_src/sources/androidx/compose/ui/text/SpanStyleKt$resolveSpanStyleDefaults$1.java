package androidx.compose.ui.text;

import androidx.compose.ui.text.style.TextDrawStyle;
import e8.a;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
final class SpanStyleKt$resolveSpanStyleDefaults$1 extends v implements a<TextDrawStyle> {
    public static final SpanStyleKt$resolveSpanStyleDefaults$1 INSTANCE = new SpanStyleKt$resolveSpanStyleDefaults$1();

    SpanStyleKt$resolveSpanStyleDefaults$1() {
        super(0);
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final TextDrawStyle invoke() {
        return TextDrawStyle.Companion.b(SpanStyleKt.DefaultColor);
    }
}
