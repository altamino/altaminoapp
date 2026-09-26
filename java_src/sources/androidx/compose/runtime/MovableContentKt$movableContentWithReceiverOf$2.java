package androidx.compose.runtime;

import e8.r;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.a0;
import w7.l0;
import w7.u;

/* JADX INFO: loaded from: classes9.dex */
final class MovableContentKt$movableContentWithReceiverOf$2 extends v implements r<Object, Object, Composer, Integer, l0> {
    final /* synthetic */ MovableContent<u<Object, Object>> $movableContent;

    @Composable
    public final void a(Object obj, Object obj2, @Nullable Composer composer, int i10) {
        int i11;
        if ((i10 & 14) == 0) {
            i11 = (composer.k(obj) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            i11 |= composer.k(obj2) ? 32 : 16;
        }
        if ((i11 & 731) == 146 && composer.b()) {
            composer.g();
        } else {
            composer.B(this.$movableContent, a0.a(obj, obj2));
        }
    }

    @Override // e8.r
    public /* bridge */ /* synthetic */ l0 invoke(Object obj, Object obj2, Composer composer, Integer num) {
        a(obj, obj2, composer, num.intValue());
        return l0.INSTANCE;
    }
}
