package androidx.compose.foundation.text;

import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class TextFieldScrollKt$textFieldScrollable$2$controller$1 extends v implements l<Float, Float> {
    final /* synthetic */ TextFieldScrollerPosition $scrollerPosition;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TextFieldScrollKt$textFieldScrollable$2$controller$1(TextFieldScrollerPosition textFieldScrollerPosition) {
        super(1);
        this.$scrollerPosition = textFieldScrollerPosition;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Float invoke(Float f) {
        return invoke(f.floatValue());
    }

    @NotNull
    public final Float invoke(float f) {
        float fD = this.$scrollerPosition.d() + f;
        if (fD > this.$scrollerPosition.c()) {
            f = this.$scrollerPosition.c() - this.$scrollerPosition.d();
        } else if (fD < 0.0f) {
            f = -this.$scrollerPosition.d();
        }
        TextFieldScrollerPosition textFieldScrollerPosition = this.$scrollerPosition;
        textFieldScrollerPosition.h(textFieldScrollerPosition.d() + f);
        return Float.valueOf(f);
    }
}
