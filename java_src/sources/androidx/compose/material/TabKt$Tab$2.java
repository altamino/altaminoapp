package androidx.compose.material;

import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import e8.p;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class TabKt$Tab$2 extends v implements q<ColumnScope, Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ p<Composer, Integer, l0> $icon;
    final /* synthetic */ p<Composer, Integer, l0> $styledText;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    TabKt$Tab$2(p<? super Composer, ? super Integer, l0> pVar, p<? super Composer, ? super Integer, l0> pVar2, int i10) {
        super(3);
        this.$styledText = pVar;
        this.$icon = pVar2;
        this.$$dirty = i10;
    }

    @ComposableTarget
    @Composable
    public final void a(@NotNull ColumnScope Tab, @Nullable Composer composer, int i10) {
        t.j(Tab, "$this$Tab");
        if ((i10 & 81) == 16 && composer.b()) {
            composer.g();
        } else {
            TabKt.d(this.$styledText, this.$icon, composer, (this.$$dirty >> 12) & 112);
        }
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(ColumnScope columnScope, Composer composer, Integer num) {
        a(columnScope, composer, num.intValue());
        return l0.INSTANCE;
    }
}
