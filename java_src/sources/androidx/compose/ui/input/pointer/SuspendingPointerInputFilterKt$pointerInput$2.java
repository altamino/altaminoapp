package androidx.compose.ui.input.pointer;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import e8.p;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class SuspendingPointerInputFilterKt$pointerInput$2 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ p<PointerInputScope, kotlin.coroutines.d<? super l0>, Object> $block;
    final /* synthetic */ Object $key1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SuspendingPointerInputFilterKt$pointerInput$2(Object obj, p<? super PointerInputScope, ? super kotlin.coroutines.d<? super l0>, ? extends Object> pVar) {
        super(3);
        this.$key1 = obj;
        this.$block = pVar;
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(-906157935);
        Density density = (Density) composer.x(CompositionLocalsKt.e());
        ViewConfiguration viewConfiguration = (ViewConfiguration) composer.x(CompositionLocalsKt.n());
        composer.G(1157296644);
        boolean zK = composer.k(density);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new SuspendingPointerInputFilter(viewConfiguration, density);
            composer.z(objH);
        }
        composer.Q();
        SuspendingPointerInputFilter suspendingPointerInputFilter = (SuspendingPointerInputFilter) objH;
        EffectsKt.e(suspendingPointerInputFilter, this.$key1, new SuspendingPointerInputFilterKt$pointerInput$2$2$1(suspendingPointerInputFilter, this.$block, null), composer, 64);
        composer.Q();
        return suspendingPointerInputFilter;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
