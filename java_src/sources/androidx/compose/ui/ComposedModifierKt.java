package androidx.compose.ui;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.focus.FocusEventModifier;
import androidx.compose.ui.focus.FocusRequesterModifier;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import e8.l;
import e8.q;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class ComposedModifierKt {

    @NotNull
    private static final q<FocusEventModifier, Composer, Integer, Modifier> WrapFocusEventModifier = ComposedModifierKt$WrapFocusEventModifier$1.INSTANCE;

    @NotNull
    private static final q<FocusRequesterModifier, Composer, Integer, Modifier> WrapFocusRequesterModifier = ComposedModifierKt$WrapFocusRequesterModifier$1.INSTANCE;

    @NotNull
    public static final Modifier c(@NotNull Modifier modifier, @NotNull l<? super InspectorInfo, l0> inspectorInfo, @NotNull q<? super Modifier, ? super Composer, ? super Integer, ? extends Modifier> factory) {
        t.j(modifier, "<this>");
        t.j(inspectorInfo, "inspectorInfo");
        t.j(factory, "factory");
        return modifier.B(new ComposedModifier(inspectorInfo, factory));
    }

    public static /* synthetic */ Modifier d(Modifier modifier, l lVar, q qVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            lVar = InspectableValueKt.a();
        }
        return c(modifier, lVar, qVar);
    }

    @NotNull
    public static final Modifier e(@NotNull Composer composer, @NotNull Modifier modifier) {
        t.j(composer, "<this>");
        t.j(modifier, "modifier");
        if (modifier.d0(ComposedModifierKt$materialize$1.INSTANCE)) {
            return modifier;
        }
        composer.G(1219399079);
        Modifier modifier2 = (Modifier) modifier.a0(Modifier.Companion, new ComposedModifierKt$materialize$result$1(composer));
        composer.Q();
        return modifier2;
    }
}
