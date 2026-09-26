package androidx.compose.foundation.layout;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.MeasurePolicy;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class RowKt {

    @NotNull
    private static final MeasurePolicy DefaultRowMeasurePolicy;

    static {
        LayoutOrientation layoutOrientation = LayoutOrientation.Horizontal;
        float fA = Arrangement.INSTANCE.e().a();
        CrossAxisAlignment crossAxisAlignmentC = CrossAxisAlignment.Companion.c(Alignment.Companion.l());
        DefaultRowMeasurePolicy = RowColumnImplKt.y(layoutOrientation, RowKt$DefaultRowMeasurePolicy$1.INSTANCE, fA, SizeMode.Wrap, crossAxisAlignmentC);
    }

    @Composable
    @NotNull
    public static final MeasurePolicy a(@NotNull Arrangement.Horizontal horizontalArrangement, @NotNull Alignment.Vertical verticalAlignment, @Nullable Composer composer, int i10) {
        MeasurePolicy measurePolicyY;
        t.j(horizontalArrangement, "horizontalArrangement");
        t.j(verticalAlignment, "verticalAlignment");
        composer.G(-837807694);
        composer.G(511388516);
        boolean zK = composer.k(horizontalArrangement) | composer.k(verticalAlignment);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            if (t.e(horizontalArrangement, Arrangement.INSTANCE.e()) && t.e(verticalAlignment, Alignment.Companion.l())) {
                measurePolicyY = DefaultRowMeasurePolicy;
            } else {
                LayoutOrientation layoutOrientation = LayoutOrientation.Horizontal;
                float fA = horizontalArrangement.a();
                CrossAxisAlignment crossAxisAlignmentC = CrossAxisAlignment.Companion.c(verticalAlignment);
                measurePolicyY = RowColumnImplKt.y(layoutOrientation, new RowKt$rowMeasurePolicy$1$1(horizontalArrangement), fA, SizeMode.Wrap, crossAxisAlignmentC);
            }
            objH = measurePolicyY;
            composer.z(objH);
        }
        composer.Q();
        MeasurePolicy measurePolicy = (MeasurePolicy) objH;
        composer.Q();
        return measurePolicy;
    }
}
