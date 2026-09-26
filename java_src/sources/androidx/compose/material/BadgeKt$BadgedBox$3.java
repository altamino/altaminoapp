package androidx.compose.material;

import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import e8.p;
import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
final class BadgeKt$BadgedBox$3 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ q<BoxScope, Composer, Integer, l0> $badge;
    final /* synthetic */ q<BoxScope, Composer, Integer, l0> $content;
    final /* synthetic */ Modifier $modifier;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    BadgeKt$BadgedBox$3(q<? super BoxScope, ? super Composer, ? super Integer, l0> qVar, Modifier modifier, q<? super BoxScope, ? super Composer, ? super Integer, l0> qVar2, int i10, int i11) {
        super(2);
        this.$badge = qVar;
        this.$modifier = modifier;
        this.$content = qVar2;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        BadgeKt.b(this.$badge, this.$modifier, this.$content, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
