package androidx.compose.runtime;

import e8.s;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.a0;
import w7.l0;
import w7.u;

/* JADX INFO: loaded from: classes9.dex */
final class MovableContentKt$movableContentOf$4 extends v implements s<Object, Object, Object, Composer, Integer, l0> {
    final /* synthetic */ MovableContent<u<u<Object, Object>, Object>> $movableContent;

    @Override // e8.s
    public /* bridge */ /* synthetic */ l0 invoke(Object obj, Object obj2, Object obj3, Composer composer, Integer num) {
        a(obj, obj2, obj3, composer, num.intValue());
        return l0.INSTANCE;
    }

    @Composable
    public final void a(Object obj, Object obj2, Object obj3, @Nullable Composer composer, int i10) {
        int i11;
        if ((i10 & 14) == 0) {
            i11 = (composer.k(obj) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            i11 |= composer.k(obj2) ? 32 : 16;
        }
        if ((i10 & 896) == 0) {
            i11 |= composer.k(obj3) ? 256 : 128;
        }
        if ((i11 & 5851) == 1170 && composer.b()) {
            composer.g();
        } else {
            composer.B(this.$movableContent, a0.a(a0.a(obj, obj2), obj3));
        }
    }
}
