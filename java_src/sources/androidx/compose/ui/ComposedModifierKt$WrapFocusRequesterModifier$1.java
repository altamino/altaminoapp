package androidx.compose.ui;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.focus.FocusRequesterModifier;
import androidx.compose.ui.focus.FocusRequesterModifierLocal;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class ComposedModifierKt$WrapFocusRequesterModifier$1 extends v implements q<FocusRequesterModifier, Composer, Integer, FocusRequesterModifierLocal> {
    public static final ComposedModifierKt$WrapFocusRequesterModifier$1 INSTANCE = new ComposedModifierKt$WrapFocusRequesterModifier$1();

    ComposedModifierKt$WrapFocusRequesterModifier$1() {
        super(3);
    }

    @Composable
    @NotNull
    public final FocusRequesterModifierLocal a(@NotNull FocusRequesterModifier mod, @Nullable Composer composer, int i10) {
        t.j(mod, "mod");
        composer.G(945678692);
        composer.G(1157296644);
        boolean zK = composer.k(mod);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new FocusRequesterModifierLocal(mod.m());
            composer.z(objH);
        }
        composer.Q();
        FocusRequesterModifierLocal focusRequesterModifierLocal = (FocusRequesterModifierLocal) objH;
        composer.Q();
        return focusRequesterModifierLocal;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ FocusRequesterModifierLocal invoke(FocusRequesterModifier focusRequesterModifier, Composer composer, Integer num) {
        return a(focusRequesterModifier, composer, num.intValue());
    }
}
