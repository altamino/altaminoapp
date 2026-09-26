package androidx.compose.ui.platform;

import android.graphics.Matrix;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
final class RenderNodeLayer$Companion$getMatrix$1 extends kotlin.jvm.internal.v implements e8.p<DeviceRenderNode, Matrix, w7.l0> {
    public static final RenderNodeLayer$Companion$getMatrix$1 INSTANCE = new RenderNodeLayer$Companion$getMatrix$1();

    RenderNodeLayer$Companion$getMatrix$1() {
        super(2);
    }

    public final void a(@NotNull DeviceRenderNode rn, @NotNull Matrix matrix) {
        kotlin.jvm.internal.t.j(rn, "rn");
        kotlin.jvm.internal.t.j(matrix, "matrix");
        rn.u(matrix);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ w7.l0 invoke(DeviceRenderNode deviceRenderNode, Matrix matrix) {
        a(deviceRenderNode, matrix);
        return w7.l0.INSTANCE;
    }
}
