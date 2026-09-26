package androidx.compose.runtime;

import e8.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.a0;
import w7.l0;
import w7.u;

/* JADX INFO: loaded from: classes9.dex */
final class MovableContentKt$movableContentOf$5 extends v implements t<Object, Object, Object, Object, Composer, Integer, l0> {
    final /* synthetic */ MovableContent<u<u<Object, Object>, u<Object, Object>>> $movableContent;

    @Override // e8.t
    public /* bridge */ /* synthetic */ l0 invoke(Object obj, Object obj2, Object obj3, Object obj4, Composer composer, Integer num) {
        a(obj, obj2, obj3, obj4, composer, num.intValue());
        return l0.INSTANCE;
    }

    @Composable
    public final void a(Object obj, Object obj2, Object obj3, Object obj4, @Nullable Composer composer, int i10) {
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
        if ((i10 & 7168) == 0) {
            i11 |= composer.k(obj4) ? 2048 : 1024;
        }
        if ((46811 & i11) == 9362 && composer.b()) {
            composer.g();
        } else {
            composer.B(this.$movableContent, a0.a(a0.a(obj, obj2), a0.a(obj3, obj4)));
        }
    }
}
