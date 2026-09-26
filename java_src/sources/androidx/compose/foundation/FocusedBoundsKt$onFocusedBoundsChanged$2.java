package androidx.compose.foundation;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutCoordinates;
import e8.l;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class FocusedBoundsKt$onFocusedBoundsChanged$2 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ l<LayoutCoordinates, l0> $onPositioned;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    FocusedBoundsKt$onFocusedBoundsChanged$2(l<? super LayoutCoordinates, l0> lVar) {
        super(3);
        this.$onPositioned = lVar;
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(1176407768);
        l<LayoutCoordinates, l0> lVar = this.$onPositioned;
        composer.G(1157296644);
        boolean zK = composer.k(lVar);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new FocusedBoundsObserverModifier(lVar);
            composer.z(objH);
        }
        composer.Q();
        FocusedBoundsObserverModifier focusedBoundsObserverModifier = (FocusedBoundsObserverModifier) objH;
        composer.Q();
        return focusedBoundsObserverModifier;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
