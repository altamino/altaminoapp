package androidx.compose.foundation.text.selection;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class AndroidSelectionHandles_androidKt$SelectionHandle$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ p<Composer, Integer, l0> $content;
    final /* synthetic */ ResolvedTextDirection $direction;
    final /* synthetic */ boolean $handlesCrossed;
    final /* synthetic */ boolean $isStartHandle;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ long $position;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    AndroidSelectionHandles_androidKt$SelectionHandle$2(long j6, boolean z6, ResolvedTextDirection resolvedTextDirection, boolean z10, Modifier modifier, p<? super Composer, ? super Integer, l0> pVar, int i10) {
        super(2);
        this.$position = j6;
        this.$isStartHandle = z6;
        this.$direction = resolvedTextDirection;
        this.$handlesCrossed = z10;
        this.$modifier = modifier;
        this.$content = pVar;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        AndroidSelectionHandles_androidKt.c(this.$position, this.$isStartHandle, this.$direction, this.$handlesCrossed, this.$modifier, this.$content, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
