package androidx.compose.foundation.text.selection;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class AndroidSelectionHandles_androidKt$DefaultSelectionHandle$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ ResolvedTextDirection $direction;
    final /* synthetic */ boolean $handlesCrossed;
    final /* synthetic */ boolean $isStartHandle;
    final /* synthetic */ Modifier $modifier;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidSelectionHandles_androidKt$DefaultSelectionHandle$1(Modifier modifier, boolean z6, ResolvedTextDirection resolvedTextDirection, boolean z10, int i10) {
        super(2);
        this.$modifier = modifier;
        this.$isStartHandle = z6;
        this.$direction = resolvedTextDirection;
        this.$handlesCrossed = z10;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        AndroidSelectionHandles_androidKt.a(this.$modifier, this.$isStartHandle, this.$direction, this.$handlesCrossed, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
