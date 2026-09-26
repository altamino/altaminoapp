package androidx.compose.ui.platform;

import android.graphics.Matrix;
import android.view.View;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
final class ViewLayer$Companion$getMatrix$1 extends kotlin.jvm.internal.v implements e8.p<View, Matrix, w7.l0> {
    public static final ViewLayer$Companion$getMatrix$1 INSTANCE = new ViewLayer$Companion$getMatrix$1();

    ViewLayer$Companion$getMatrix$1() {
        super(2);
    }

    public final void a(@NotNull View view, @NotNull Matrix matrix) {
        kotlin.jvm.internal.t.j(view, "view");
        kotlin.jvm.internal.t.j(matrix, "matrix");
        matrix.set(view.getMatrix());
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ w7.l0 invoke(View view, Matrix matrix) {
        a(view, matrix);
        return w7.l0.INSTANCE;
    }
}
