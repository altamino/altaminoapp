package androidx.compose.foundation;

import android.view.View;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
final class SystemGestureExclusionKt$systemGestureExclusion$2 extends v implements q<Modifier, Composer, Integer, Modifier> {
    public static final SystemGestureExclusionKt$systemGestureExclusion$2 INSTANCE = new SystemGestureExclusionKt$systemGestureExclusion$2();

    SystemGestureExclusionKt$systemGestureExclusion$2() {
        super(3);
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(1120057036);
        composer.G(202618556);
        View view = (View) composer.x(AndroidCompositionLocals_androidKt.k());
        composer.G(511388516);
        boolean zK = composer.k(view) | composer.k(null);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new ExcludeFromSystemGestureModifier(view, null);
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
