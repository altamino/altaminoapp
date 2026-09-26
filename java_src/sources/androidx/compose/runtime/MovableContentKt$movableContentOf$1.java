package androidx.compose.runtime;

import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
final class MovableContentKt$movableContentOf$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ MovableContent<l0> $movableContent;

    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
        } else {
            composer.B(this.$movableContent, l0.INSTANCE);
        }
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
