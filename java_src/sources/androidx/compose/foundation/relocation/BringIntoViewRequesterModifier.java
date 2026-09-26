package androidx.compose.foundation.relocation;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.unit.IntSizeKt;
import kotlin.coroutines.d;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
@ExperimentalFoundationApi
final class BringIntoViewRequesterModifier extends BringIntoViewChildModifier {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BringIntoViewRequesterModifier(@NotNull BringIntoViewParent defaultParent) {
        super(defaultParent);
        t.j(defaultParent, "defaultParent");
    }

    @Nullable
    public final Object d(@Nullable Rect rect, @NotNull d<? super l0> dVar) {
        LayoutCoordinates layoutCoordinatesB = b();
        if (layoutCoordinatesB == null) {
            return l0.INSTANCE;
        }
        if (rect == null) {
            rect = SizeKt.c(IntSizeKt.b(layoutCoordinatesB.a()));
        }
        Object objA = c().a(rect, layoutCoordinatesB, dVar);
        if (objA == kotlin.coroutines.intrinsics.d.e()) {
            return objA;
        }
        return l0.INSTANCE;
    }
}
