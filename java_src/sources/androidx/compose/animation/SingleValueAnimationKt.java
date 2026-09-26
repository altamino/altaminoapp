package androidx.compose.animation;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import e8.l;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class SingleValueAnimationKt {

    @NotNull
    private static final SpringSpec<Color> colorDefaultSpring = AnimationSpecKt.i(0.0f, 0.0f, null, 7, null);

    @Composable
    @NotNull
    public static final State<Color> a(long j6, @Nullable AnimationSpec<Color> animationSpec, @Nullable l<? super Color, l0> lVar, @Nullable Composer composer, int i10, int i11) {
        composer.G(-1942442407);
        if ((i11 & 2) != 0) {
            animationSpec = colorDefaultSpring;
        }
        AnimationSpec<Color> animationSpec2 = animationSpec;
        if ((i11 & 4) != 0) {
            lVar = null;
        }
        l<? super Color, l0> lVar2 = lVar;
        ColorSpace colorSpaceQ = Color.q(j6);
        composer.G(1157296644);
        boolean zK = composer.k(colorSpaceQ);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = (TwoWayConverter) ColorVectorConverterKt.d(Color.Companion).invoke(Color.q(j6));
            composer.z(objH);
        }
        composer.Q();
        State<Color> stateE = AnimateAsStateKt.e(Color.h(j6), (TwoWayConverter) objH, animationSpec2, null, lVar2, composer, (i10 & 14) | 576 | ((i10 << 6) & 57344), 8);
        composer.Q();
        return stateE;
    }
}
