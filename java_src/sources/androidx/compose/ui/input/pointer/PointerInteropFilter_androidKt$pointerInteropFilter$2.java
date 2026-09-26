package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import e8.l;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
final class PointerInteropFilter_androidKt$pointerInteropFilter$2 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ l<MotionEvent, Boolean> $onTouchEvent;
    final /* synthetic */ RequestDisallowInterceptTouchEvent $requestDisallowInterceptTouchEvent;

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(374375707);
        composer.G(-492369756);
        Object objH = composer.H();
        if (objH == Composer.Companion.a()) {
            objH = new PointerInteropFilter();
            composer.z(objH);
        }
        composer.Q();
        PointerInteropFilter pointerInteropFilter = (PointerInteropFilter) objH;
        pointerInteropFilter.d(this.$onTouchEvent);
        pointerInteropFilter.f(this.$requestDisallowInterceptTouchEvent);
        composer.Q();
        return pointerInteropFilter;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
