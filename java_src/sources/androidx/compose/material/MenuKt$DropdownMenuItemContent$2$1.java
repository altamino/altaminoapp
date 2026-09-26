package androidx.compose.material;

import androidx.compose.foundation.layout.RowScope;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import e8.p;
import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
final class MenuKt$DropdownMenuItemContent$2$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ int $$dirty$1;
    final /* synthetic */ q<RowScope, Composer, Integer, l0> $content;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ RowScope $this_Row;

    /* JADX INFO: renamed from: androidx.compose.material.MenuKt$DropdownMenuItemContent$2$1$1, reason: invalid class name */
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
                this.$content.invoke(this.$this_Row, composer, Integer.valueOf((this.$$dirty & 14) | ((this.$$dirty$1 >> 12) & 112)));
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
    MenuKt$DropdownMenuItemContent$2$1(boolean z6, q<? super RowScope, ? super Composer, ? super Integer, l0> qVar, RowScope rowScope, int i10, int i11) {
        super(2);
        this.$enabled = z6;
        this.$content = qVar;
        this.$this_Row = rowScope;
        this.$$dirty = i10;
        this.$$dirty$1 = i11;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        float fB;
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
            return;
        }
        if (this.$enabled) {
            composer.G(-1945695285);
            fB = ContentAlpha.INSTANCE.c(composer, 6);
        } else {
            composer.G(-1945695262);
            fB = ContentAlpha.INSTANCE.b(composer, 6);
        }
        composer.Q();
        CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, ComposableLambdaKt.b(composer, -1705995688, true, new AnonymousClass1(this.$content, this.$this_Row, this.$$dirty, this.$$dirty$1)), composer, 56);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
