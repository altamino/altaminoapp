package androidx.compose.foundation.text;

import androidx.compose.ui.layout.LayoutCoordinates;
import e8.a;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class TextController$onRemembered$1$1 extends v implements a<LayoutCoordinates> {
    final /* synthetic */ TextController this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TextController$onRemembered$1$1(TextController textController) {
        super(0);
        this.this$0 = textController;
    }

    @Override // e8.a
    @Nullable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final LayoutCoordinates invoke() {
        return this.this$0.k().b();
    }
}
