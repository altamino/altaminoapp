package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.foundation.gestures.ScrollableStateKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.LayoutDirection;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class TextFieldScrollKt$textFieldScrollable$2 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ TextFieldScrollerPosition $scrollerPosition;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TextFieldScrollKt$textFieldScrollable$2(TextFieldScrollerPosition textFieldScrollerPosition, boolean z6, MutableInteractionSource mutableInteractionSource) {
        super(3);
        this.$scrollerPosition = textFieldScrollerPosition;
        this.$enabled = z6;
        this.$interactionSource = mutableInteractionSource;
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(805428266);
        boolean z6 = this.$scrollerPosition.f() == Orientation.Vertical || !(composer.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl);
        Modifier modifierJ = ScrollableKt.j(Modifier.Companion, ScrollableStateKt.b(new TextFieldScrollKt$textFieldScrollable$2$controller$1(this.$scrollerPosition), composer, 0), this.$scrollerPosition.f(), this.$enabled && this.$scrollerPosition.c() != 0.0f, z6, null, this.$interactionSource, 16, null);
        composer.Q();
        return modifierJ;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
