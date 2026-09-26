package androidx.compose.foundation.relocation;

import android.view.View;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import kotlin.coroutines.d;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
final class AndroidBringIntoViewParent implements BringIntoViewParent {

    @NotNull
    private final View view;

    public AndroidBringIntoViewParent(@NotNull View view) {
        t.j(view, "view");
        this.view = view;
    }

    @Override // androidx.compose.foundation.relocation.BringIntoViewParent
    @Nullable
    public Object a(@NotNull Rect rect, @NotNull LayoutCoordinates layoutCoordinates, @NotNull d<? super l0> dVar) {
        this.view.requestRectangleOnScreen(BringIntoViewResponder_androidKt.c(rect.t(LayoutCoordinatesKt.e(layoutCoordinates))), false);
        return l0.INSTANCE;
    }
}
