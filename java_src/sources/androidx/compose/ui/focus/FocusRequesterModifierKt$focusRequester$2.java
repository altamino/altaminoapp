package androidx.compose.ui.focus;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
final class FocusRequesterModifierKt$focusRequester$2 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ FocusRequester $focusRequester;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FocusRequesterModifierKt$focusRequester$2(FocusRequester focusRequester) {
        super(3);
        this.$focusRequester = focusRequester;
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(-307396750);
        FocusRequester focusRequester = this.$focusRequester;
        int i11 = MutableVector.$stable;
        composer.G(1157296644);
        boolean zK = composer.k(focusRequester);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new FocusRequesterModifierLocal(focusRequester);
            composer.z(objH);
        }
        composer.Q();
        FocusRequesterModifierLocal focusRequesterModifierLocal = (FocusRequesterModifierLocal) objH;
        composer.Q();
        return focusRequesterModifierLocal;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
