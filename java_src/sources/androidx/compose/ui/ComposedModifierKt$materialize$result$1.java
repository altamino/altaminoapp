package androidx.compose.ui;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.focus.FocusEventModifier;
import androidx.compose.ui.focus.FocusRequesterModifier;
import e8.p;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlin.jvm.internal.v0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class ComposedModifierKt$materialize$result$1 extends v implements p<Modifier, Modifier.Element, Modifier> {
    final /* synthetic */ Composer $this_materialize;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ComposedModifierKt$materialize$result$1(Composer composer) {
        super(2);
        this.$this_materialize = composer;
    }

    @Override // e8.p
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Modifier invoke(@NotNull Modifier acc, @NotNull Modifier.Element element) {
        Modifier modifierB;
        t.j(acc, "acc");
        t.j(element, "element");
        if (element instanceof ComposedModifier) {
            modifierB = ComposedModifierKt.e(this.$this_materialize, (Modifier) ((q) v0.e(((ComposedModifier) element).a(), 3)).invoke(Modifier.Companion, this.$this_materialize, 0));
        } else {
            Modifier modifierB2 = element instanceof FocusEventModifier ? element.B((Modifier) ((q) v0.e(ComposedModifierKt.WrapFocusEventModifier, 3)).invoke(element, this.$this_materialize, 0)) : element;
            modifierB = element instanceof FocusRequesterModifier ? modifierB2.B((Modifier) ((q) v0.e(ComposedModifierKt.WrapFocusRequesterModifier, 3)).invoke(element, this.$this_materialize, 0)) : modifierB2;
        }
        return acc.B(modifierB);
    }
}
