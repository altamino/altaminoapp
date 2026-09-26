package androidx.compose.foundation;

import android.view.View;
import androidx.annotation.RequiresApi;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.RectHelper_androidKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.OnGloballyPositionedModifier;
import e8.l;
import e8.p;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import y7.d;

/* JADX INFO: loaded from: classes9.dex */
@RequiresApi
final class ExcludeFromSystemGestureModifier implements OnGloballyPositionedModifier {

    @Nullable
    private final l<LayoutCoordinates, Rect> exclusion;

    @Nullable
    private android.graphics.Rect rect;

    @NotNull
    private final View view;

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return androidx.compose.ui.a.a(this, modifier);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, p pVar) {
        return androidx.compose.ui.b.c(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, p pVar) {
        return androidx.compose.ui.b.b(this, obj, pVar);
    }

    public final void c() {
        d(null);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(l lVar) {
        return androidx.compose.ui.b.a(this, lVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ExcludeFromSystemGestureModifier(@NotNull View view, @Nullable l<? super LayoutCoordinates, Rect> lVar) {
        t.j(view, "view");
        this.view = view;
        this.exclusion = lVar;
    }

    private final android.graphics.Rect a(LayoutCoordinates layoutCoordinates, Rect rect) {
        LayoutCoordinates layoutCoordinatesB = b(layoutCoordinates);
        long jO = layoutCoordinatesB.O(layoutCoordinates, rect.n());
        long jO2 = layoutCoordinatesB.O(layoutCoordinates, rect.o());
        long jO3 = layoutCoordinatesB.O(layoutCoordinates, rect.f());
        long jO4 = layoutCoordinatesB.O(layoutCoordinates, rect.g());
        return new android.graphics.Rect(g8.c.c(d.h(Offset.m(jO), Offset.m(jO2), Offset.m(jO3), Offset.m(jO4))), g8.c.c(d.h(Offset.n(jO), Offset.n(jO2), Offset.n(jO3), Offset.n(jO4))), g8.c.c(d.g(Offset.m(jO), Offset.m(jO2), Offset.m(jO3), Offset.m(jO4))), g8.c.c(d.g(Offset.n(jO), Offset.n(jO2), Offset.n(jO3), Offset.n(jO4))));
    }

    @Override // androidx.compose.ui.layout.OnGloballyPositionedModifier
    public void F0(@NotNull LayoutCoordinates coordinates) {
        t.j(coordinates, "coordinates");
        l<LayoutCoordinates, Rect> lVar = this.exclusion;
        d(lVar == null ? RectHelper_androidKt.a(LayoutCoordinatesKt.b(coordinates)) : a(coordinates, lVar.invoke(coordinates)));
    }

    public final void d(@Nullable android.graphics.Rect rect) {
        MutableVector mutableVector = new MutableVector(new android.graphics.Rect[16], 0);
        List systemGestureExclusionRects = this.view.getSystemGestureExclusionRects();
        t.i(systemGestureExclusionRects, "view.systemGestureExclusionRects");
        mutableVector.e(mutableVector.n(), systemGestureExclusionRects);
        android.graphics.Rect rect2 = this.rect;
        if (rect2 != null) {
            mutableVector.s(rect2);
        }
        if (rect != null && !rect.isEmpty()) {
            mutableVector.b(rect);
        }
        this.view.setSystemGestureExclusionRects(mutableVector.g());
        this.rect = rect;
    }

    private final LayoutCoordinates b(LayoutCoordinates layoutCoordinates) {
        LayoutCoordinates layoutCoordinatesB = layoutCoordinates.B();
        while (true) {
            LayoutCoordinates layoutCoordinates2 = layoutCoordinatesB;
            LayoutCoordinates layoutCoordinates3 = layoutCoordinates;
            layoutCoordinates = layoutCoordinates2;
            if (layoutCoordinates != null) {
                layoutCoordinatesB = layoutCoordinates.B();
            } else {
                return layoutCoordinates3;
            }
        }
    }
}
