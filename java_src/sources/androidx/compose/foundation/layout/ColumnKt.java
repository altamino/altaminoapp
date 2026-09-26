package androidx.compose.foundation.layout;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.MeasurePolicy;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class ColumnKt {

    @NotNull
    private static final MeasurePolicy DefaultColumnMeasurePolicy;

    static {
        LayoutOrientation layoutOrientation = LayoutOrientation.Vertical;
        float fA = Arrangement.INSTANCE.f().a();
        CrossAxisAlignment crossAxisAlignmentB = CrossAxisAlignment.Companion.b(Alignment.Companion.k());
        DefaultColumnMeasurePolicy = RowColumnImplKt.y(layoutOrientation, ColumnKt$DefaultColumnMeasurePolicy$1.INSTANCE, fA, SizeMode.Wrap, crossAxisAlignmentB);
    }

    @Composable
    @NotNull
    public static final MeasurePolicy a(@NotNull Arrangement.Vertical verticalArrangement, @NotNull Alignment.Horizontal horizontalAlignment, @Nullable Composer composer, int i10) {
        MeasurePolicy measurePolicyY;
        t.j(verticalArrangement, "verticalArrangement");
        t.j(horizontalAlignment, "horizontalAlignment");
        composer.G(1089876336);
        composer.G(511388516);
        boolean zK = composer.k(verticalArrangement) | composer.k(horizontalAlignment);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            if (t.e(verticalArrangement, Arrangement.INSTANCE.f()) && t.e(horizontalAlignment, Alignment.Companion.k())) {
                measurePolicyY = DefaultColumnMeasurePolicy;
            } else {
                LayoutOrientation layoutOrientation = LayoutOrientation.Vertical;
                float fA = verticalArrangement.a();
                CrossAxisAlignment crossAxisAlignmentB = CrossAxisAlignment.Companion.b(horizontalAlignment);
                measurePolicyY = RowColumnImplKt.y(layoutOrientation, new ColumnKt$columnMeasurePolicy$1$1(verticalArrangement), fA, SizeMode.Wrap, crossAxisAlignmentB);
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
