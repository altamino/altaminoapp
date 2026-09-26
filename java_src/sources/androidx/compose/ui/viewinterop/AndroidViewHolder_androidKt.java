package androidx.compose.ui.viewinterop;

import android.view.View;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.LayoutNode;
import g8.c;

/* JADX INFO: loaded from: classes11.dex */
public final class AndroidViewHolder_androidKt {
    private static final int Unmeasured = Integer.MIN_VALUE;

    /* JADX INFO: Access modifiers changed from: private */
    public static final float f(int i10) {
        return i10 * (-1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float g(float f) {
        return f * (-1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int h(int i10) {
        return i10 == 0 ? NestedScrollSource.Companion.a() : NestedScrollSource.Companion.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(View view, LayoutNode layoutNode) {
        long jE = LayoutCoordinatesKt.e(layoutNode.f());
        int iC = c.c(Offset.m(jE));
        int iC2 = c.c(Offset.n(jE));
        view.layout(iC, iC2, view.getMeasuredWidth() + iC, view.getMeasuredHeight() + iC2);
    }
}
