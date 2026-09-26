package androidx.compose.foundation;

import android.view.View;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import e8.l;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
final class SystemGestureExclusionKt$systemGestureExclusion$4 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ l<LayoutCoordinates, Rect> $exclusion;

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(108999);
        l<LayoutCoordinates, Rect> lVar = this.$exclusion;
        composer.G(202618556);
        View view = (View) composer.x(AndroidCompositionLocals_androidKt.k());
        composer.G(511388516);
        boolean zK = composer.k(view) | composer.k(lVar);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new ExcludeFromSystemGestureModifier(view, lVar);
            composer.z(objH);
        }
        composer.Q();
        ExcludeFromSystemGestureModifier excludeFromSystemGestureModifier = (ExcludeFromSystemGestureModifier) objH;
        EffectsKt.a(excludeFromSystemGestureModifier, new SystemGestureExclusionKt$excludeFromSystemGestureR$1(excludeFromSystemGestureModifier), composer, 0);
        composer.Q();
        composer.Q();
        return excludeFromSystemGestureModifier;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
