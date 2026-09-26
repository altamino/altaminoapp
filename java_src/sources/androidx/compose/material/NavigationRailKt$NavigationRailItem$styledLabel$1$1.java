package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class NavigationRailKt$NavigationRailItem$styledLabel$1$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ p<Composer, Integer, l0> $label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    NavigationRailKt$NavigationRailItem$styledLabel$1$1(p<? super Composer, ? super Integer, l0> pVar, int i10) {
        super(2);
        this.$label = pVar;
        this.$$dirty = i10;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
        } else {
            TextStyle textStyleD = MaterialTheme.INSTANCE.c(composer, 6).d();
            TextKt.a(textStyleD.b((262111 & 1) != 0 ? textStyleD.spanStyle.f() : 0L, (262111 & 2) != 0 ? textStyleD.spanStyle.i() : 0L, (262111 & 4) != 0 ? textStyleD.spanStyle.l() : null, (262111 & 8) != 0 ? textStyleD.spanStyle.j() : null, (262111 & 16) != 0 ? textStyleD.spanStyle.k() : null, (262111 & 32) != 0 ? textStyleD.spanStyle.g() : null, (262111 & 64) != 0 ? textStyleD.spanStyle.h() : null, (262111 & 128) != 0 ? textStyleD.spanStyle.m() : 0L, (262111 & 256) != 0 ? textStyleD.spanStyle.d() : null, (262111 & 512) != 0 ? textStyleD.spanStyle.s() : null, (262111 & 1024) != 0 ? textStyleD.spanStyle.n() : null, (262111 & 2048) != 0 ? textStyleD.spanStyle.c() : 0L, (262111 & 4096) != 0 ? textStyleD.spanStyle.q() : null, (262111 & 8192) != 0 ? textStyleD.spanStyle.p() : null, (262111 & 16384) != 0 ? textStyleD.paragraphStyle.f() : TextAlign.g(TextAlign.Companion.a()), (262111 & 32768) != 0 ? textStyleD.paragraphStyle.g() : null, (262111 & 65536) != 0 ? textStyleD.paragraphStyle.c() : 0L, (262111 & 131072) != 0 ? textStyleD.paragraphStyle.h() : null), this.$label, composer, (this.$$dirty >> 12) & 112);
        }
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
