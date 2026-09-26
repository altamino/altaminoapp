package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
final class TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ p<Composer, Integer, l0> $it;
    final /* synthetic */ long $labelContentColor;
    final /* synthetic */ float $labelProgress;
    final /* synthetic */ long $labelTextStyleColor;
    final /* synthetic */ boolean $shouldOverrideTextStyleColor;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1(float f, long j6, p<? super Composer, ? super Integer, l0> pVar, int i10, boolean z6, long j10) {
        super(2);
        this.$labelProgress = f;
        this.$labelContentColor = j6;
        this.$it = pVar;
        this.$$dirty = i10;
        this.$shouldOverrideTextStyleColor = z6;
        this.$labelTextStyleColor = j10;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
            return;
        }
        MaterialTheme materialTheme = MaterialTheme.INSTANCE;
        TextStyle textStyleC = TextStyleKt.c(materialTheme.c(composer, 6).g(), materialTheme.c(composer, 6).d(), this.$labelProgress);
        TextFieldImplKt.b(this.$labelContentColor, this.$shouldOverrideTextStyleColor ? textStyleC.b((262111 & 1) != 0 ? textStyleC.spanStyle.f() : this.$labelTextStyleColor, (262111 & 2) != 0 ? textStyleC.spanStyle.i() : 0L, (262111 & 4) != 0 ? textStyleC.spanStyle.l() : null, (262111 & 8) != 0 ? textStyleC.spanStyle.j() : null, (262111 & 16) != 0 ? textStyleC.spanStyle.k() : null, (262111 & 32) != 0 ? textStyleC.spanStyle.g() : null, (262111 & 64) != 0 ? textStyleC.spanStyle.h() : null, (262111 & 128) != 0 ? textStyleC.spanStyle.m() : 0L, (262111 & 256) != 0 ? textStyleC.spanStyle.d() : null, (262111 & 512) != 0 ? textStyleC.spanStyle.s() : null, (262111 & 1024) != 0 ? textStyleC.spanStyle.n() : null, (262111 & 2048) != 0 ? textStyleC.spanStyle.c() : 0L, (262111 & 4096) != 0 ? textStyleC.spanStyle.q() : null, (262111 & 8192) != 0 ? textStyleC.spanStyle.p() : null, (262111 & 16384) != 0 ? textStyleC.paragraphStyle.f() : null, (262111 & 32768) != 0 ? textStyleC.paragraphStyle.g() : null, (262111 & 65536) != 0 ? textStyleC.paragraphStyle.c() : 0L, (262111 & 131072) != 0 ? textStyleC.paragraphStyle.h() : null) : textStyleC, null, this.$it, composer, ((this.$$dirty >> 6) & 14) | 384, 0);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
