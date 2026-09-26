package androidx.compose.ui.text.android;

import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
final class TextLayout$layoutHelper$2 extends v implements e8.a<LayoutHelper> {
    final /* synthetic */ TextLayout this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TextLayout$layoutHelper$2(TextLayout textLayout) {
        super(0);
        this.this$0 = textLayout;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final LayoutHelper invoke() {
        return new LayoutHelper(this.this$0.d());
    }
}
