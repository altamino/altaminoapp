package androidx.compose.runtime;

import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
final class MovableContentKt$movableContentWithReceiverOf$1 extends v implements q<Object, Composer, Integer, l0> {
    final /* synthetic */ MovableContent<Object> $movableContent;

    @Composable
    public final void a(Object obj, @Nullable Composer composer, int i10) {
        if ((i10 & 14) == 0) {
            i10 |= composer.k(obj) ? 4 : 2;
        }
        if ((i10 & 91) == 18 && composer.b()) {
            composer.g();
        } else {
            composer.B(this.$movableContent, obj);
        }
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(Object obj, Composer composer, Integer num) {
        a(obj, composer, num.intValue());
        return l0.INSTANCE;
    }
}
