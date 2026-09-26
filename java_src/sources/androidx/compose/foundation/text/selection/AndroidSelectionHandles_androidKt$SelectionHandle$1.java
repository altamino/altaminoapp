package androidx.compose.foundation.text.selection;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import e8.l;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class AndroidSelectionHandles_androidKt$SelectionHandle$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ p<Composer, Integer, l0> $content;
    final /* synthetic */ ResolvedTextDirection $direction;
    final /* synthetic */ boolean $handlesCrossed;
    final /* synthetic */ boolean $isStartHandle;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ long $position;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    AndroidSelectionHandles_androidKt$SelectionHandle$1(p<? super Composer, ? super Integer, l0> pVar, Modifier modifier, boolean z6, long j6, int i10, ResolvedTextDirection resolvedTextDirection, boolean z10) {
        super(2);
        this.$content = pVar;
        this.$modifier = modifier;
        this.$isStartHandle = z6;
        this.$position = j6;
        this.$$dirty = i10;
        this.$direction = resolvedTextDirection;
        this.$handlesCrossed = z10;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
            return;
        }
        if (this.$content != null) {
            composer.G(386444465);
            this.$content.invoke(composer, Integer.valueOf((this.$$dirty >> 15) & 14));
            composer.Q();
            return;
        }
        composer.G(386443790);
        Modifier modifier = this.$modifier;
        Boolean boolValueOf = Boolean.valueOf(this.$isStartHandle);
        Offset offsetD = Offset.d(this.$position);
        boolean z6 = this.$isStartHandle;
        long j6 = this.$position;
        composer.G(511388516);
        boolean zK = composer.k(boolValueOf) | composer.k(offsetD);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new AndroidSelectionHandles_androidKt$SelectionHandle$1$1$1(z6, j6);
            composer.z(objH);
        }
        composer.Q();
        Modifier modifierC = SemanticsModifierKt.c(modifier, false, (l) objH, 1, null);
        boolean z10 = this.$isStartHandle;
        ResolvedTextDirection resolvedTextDirection = this.$direction;
        boolean z11 = this.$handlesCrossed;
        int i11 = this.$$dirty;
        AndroidSelectionHandles_androidKt.a(modifierC, z10, resolvedTextDirection, z11, composer, (i11 & 112) | (i11 & 896) | (i11 & 7168));
        composer.Q();
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
