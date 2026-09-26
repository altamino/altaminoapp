package androidx.compose.foundation.text.selection;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class SelectionMagnifierKt {

    @NotNull
    private static final SpringSpec<Offset> MagnifierSpringSpec;
    private static final long OffsetDisplacementThreshold;

    @NotNull
    private static final AnimationVector2D UnspecifiedAnimationVector2D = new AnimationVector2D(Float.NaN, Float.NaN);

    @NotNull
    private static final TwoWayConverter<Offset, AnimationVector2D> UnspecifiedSafeOffsetVectorConverter = VectorConvertersKt.a(SelectionMagnifierKt$UnspecifiedSafeOffsetVectorConverter$1.INSTANCE, SelectionMagnifierKt$UnspecifiedSafeOffsetVectorConverter$2.INSTANCE);

    static {
        long jA = OffsetKt.a(0.01f, 0.01f);
        OffsetDisplacementThreshold = jA;
        MagnifierSpringSpec = new SpringSpec<>(0.0f, 0.0f, Offset.d(jA), 3, null);
    }

    @NotNull
    public static final Modifier e(@NotNull Modifier modifier, @NotNull e8.a<Offset> magnifierCenter, @NotNull l<? super e8.a<Offset>, ? extends Modifier> platformMagnifier) {
        t.j(modifier, "<this>");
        t.j(magnifierCenter, "magnifierCenter");
        t.j(platformMagnifier, "platformMagnifier");
        return ComposedModifierKt.d(modifier, null, new SelectionMagnifierKt$animatedSelectionMagnifier$1(magnifierCenter, platformMagnifier), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    public static final State<Offset> f(e8.a<Offset> aVar, Composer composer, int i10) {
        composer.G(-1589795249);
        composer.G(-492369756);
        Object objH = composer.H();
        Composer.Companion companion = Composer.Companion;
        if (objH == companion.a()) {
            objH = SnapshotStateKt.c(aVar);
            composer.z(objH);
        }
        composer.Q();
        State state = (State) objH;
        composer.G(-492369756);
        Object objH2 = composer.H();
        if (objH2 == companion.a()) {
            objH2 = new Animatable(Offset.d(g(state)), UnspecifiedSafeOffsetVectorConverter, Offset.d(OffsetDisplacementThreshold));
            composer.z(objH2);
        }
        composer.Q();
        Animatable animatable = (Animatable) objH2;
        EffectsKt.d(l0.INSTANCE, new SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1(state, animatable, null), composer, 0);
        State<Offset> stateG = animatable.g();
        composer.Q();
        return stateG;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long g(State<Offset> state) {
        return state.getValue().u();
    }
}
