package androidx.compose.ui;

import androidx.compose.ui.focus.FocusEventModifier;
import androidx.compose.ui.focus.FocusRequesterModifier;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class ComposedModifierKt$materialize$1 extends v implements l<Modifier.Element, Boolean> {
    public static final ComposedModifierKt$materialize$1 INSTANCE = new ComposedModifierKt$materialize$1();

    ComposedModifierKt$materialize$1() {
        super(1);
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Boolean invoke(@NotNull Modifier.Element it) {
        t.j(it, "it");
        return Boolean.valueOf(((it instanceof ComposedModifier) || (it instanceof FocusEventModifier) || (it instanceof FocusRequesterModifier)) ? false : true);
    }
}
