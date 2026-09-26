package androidx.compose.material;

import androidx.compose.runtime.MutableState;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.unit.IntRect;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1 extends v implements p<IntRect, IntRect, l0> {
    final /* synthetic */ MutableState<TransformOrigin> $transformOriginState;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(MutableState<TransformOrigin> mutableState) {
        super(2);
        this.$transformOriginState = mutableState;
    }

    public final void a(@NotNull IntRect parentBounds, @NotNull IntRect menuBounds) {
        t.j(parentBounds, "parentBounds");
        t.j(menuBounds, "menuBounds");
        this.$transformOriginState.setValue(TransformOrigin.b(MenuKt.h(parentBounds, menuBounds)));
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(IntRect intRect, IntRect intRect2) {
        a(intRect, intRect2);
        return l0.INSTANCE;
    }
}
