package androidx.compose.material;

import androidx.compose.foundation.layout.RowScope;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.text.TextStyle;
import e8.p;
import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
final class BadgeKt$Badge$1$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ int $$dirty$1;
    final /* synthetic */ q<RowScope, Composer, Integer, l0> $content;
    final /* synthetic */ RowScope $this_Row;

    /* JADX INFO: renamed from: androidx.compose.material.BadgeKt$Badge$1$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $$dirty;
        final /* synthetic */ int $$dirty$1;
        final /* synthetic */ q<RowScope, Composer, Integer, l0> $content;
        final /* synthetic */ RowScope $this_Row;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(q<? super RowScope, ? super Composer, ? super Integer, l0> qVar, RowScope rowScope, int i10, int i11) {
            super(2);
            this.$content = qVar;
            this.$this_Row = rowScope;
            this.$$dirty = i10;
            this.$$dirty$1 = i11;
        }

        @ComposableTarget
        @Composable
        public final void a(@Nullable Composer composer, int i10) {
            if ((i10 & 11) == 2 && composer.b()) {
                composer.g();
            } else {
                this.$content.invoke(this.$this_Row, composer, Integer.valueOf((this.$$dirty & 14) | ((this.$$dirty$1 >> 6) & 112)));
            }
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    BadgeKt$Badge$1$1(q<? super RowScope, ? super Composer, ? super Integer, l0> qVar, RowScope rowScope, int i10, int i11) {
        super(2);
        this.$content = qVar;
        this.$this_Row = rowScope;
        this.$$dirty = i10;
        this.$$dirty$1 = i11;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
        } else {
            TextStyle textStyleC = MaterialTheme.INSTANCE.c(composer, 6).c();
            TextKt.a(textStyleC.b((262111 & 1) != 0 ? textStyleC.spanStyle.f() : 0L, (262111 & 2) != 0 ? textStyleC.spanStyle.i() : BadgeKt.BadgeContentFontSize, (262111 & 4) != 0 ? textStyleC.spanStyle.l() : null, (262111 & 8) != 0 ? textStyleC.spanStyle.j() : null, (262111 & 16) != 0 ? textStyleC.spanStyle.k() : null, (262111 & 32) != 0 ? textStyleC.spanStyle.g() : null, (262111 & 64) != 0 ? textStyleC.spanStyle.h() : null, (262111 & 128) != 0 ? textStyleC.spanStyle.m() : 0L, (262111 & 256) != 0 ? textStyleC.spanStyle.d() : null, (262111 & 512) != 0 ? textStyleC.spanStyle.s() : null, (262111 & 1024) != 0 ? textStyleC.spanStyle.n() : null, (262111 & 2048) != 0 ? textStyleC.spanStyle.c() : 0L, (262111 & 4096) != 0 ? textStyleC.spanStyle.q() : null, (262111 & 8192) != 0 ? textStyleC.spanStyle.p() : null, (262111 & 16384) != 0 ? textStyleC.paragraphStyle.f() : null, (262111 & 32768) != 0 ? textStyleC.paragraphStyle.g() : null, (262111 & 65536) != 0 ? textStyleC.paragraphStyle.c() : 0L, (262111 & 131072) != 0 ? textStyleC.paragraphStyle.h() : null), ComposableLambdaKt.b(composer, 915155142, true, new AnonymousClass1(this.$content, this.$this_Row, this.$$dirty, this.$$dirty$1)), composer, 48);
        }
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
