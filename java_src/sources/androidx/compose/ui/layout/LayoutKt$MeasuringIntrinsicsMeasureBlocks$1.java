package androidx.compose.ui.layout;

import androidx.compose.ui.node.MeasureBlocks;
import androidx.compose.ui.platform.JvmActuals_jvmKt;
import androidx.compose.ui.unit.Constraints;
import e8.q;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
public final class LayoutKt$MeasuringIntrinsicsMeasureBlocks$1 implements MeasureBlocks {
    final /* synthetic */ q<MeasureScope, List<? extends Measurable>, Constraints, MeasureResult> $measureBlock;

    @NotNull
    public String toString() {
        return JvmActuals_jvmKt.a(this, "MeasuringIntrinsicsMeasureBlocks") + "{ measureBlock=" + JvmActuals_jvmKt.a(this.$measureBlock, null) + " }";
    }
}
