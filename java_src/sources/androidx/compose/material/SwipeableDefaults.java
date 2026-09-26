package androidx.compose.material;

import androidx.compose.animation.core.SpringSpec;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.unit.Dp;
import java.util.Set;
import kotlin.collections.d0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@StabilityInferred
public final class SwipeableDefaults {
    public static final int $stable = 0;
    public static final float StandardResistanceFactor = 10.0f;
    public static final float StiffResistanceFactor = 20.0f;

    @NotNull
    public static final SwipeableDefaults INSTANCE = new SwipeableDefaults();

    @NotNull
    private static final SpringSpec<Float> AnimationSpec = new SpringSpec<>(0.0f, 0.0f, null, 7, null);
    private static final float VelocityThreshold = Dp.f(125);

    @NotNull
    public final SpringSpec<Float> a() {
        return AnimationSpec;
    }

    public final float b() {
        return VelocityThreshold;
    }

    public static /* synthetic */ ResistanceConfig d(SwipeableDefaults swipeableDefaults, Set set, float f, float f6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f = 10.0f;
        }
        if ((i10 & 4) != 0) {
            f6 = 10.0f;
        }
        return swipeableDefaults.c(set, f, f6);
    }

    @Nullable
    public final ResistanceConfig c(@NotNull Set<Float> anchors, float f, float f6) {
        t.j(anchors, "anchors");
        if (anchors.size() <= 1) {
            return null;
        }
        Float fY0 = d0.y0(anchors);
        t.g(fY0);
        float fFloatValue = fY0.floatValue();
        Float fA0 = d0.A0(anchors);
        t.g(fA0);
        return new ResistanceConfig(fFloatValue - fA0.floatValue(), f, f6);
    }

    private SwipeableDefaults() {
    }
}
