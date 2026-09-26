package androidx.compose.ui.platform;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.ui.R;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.Canvas;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public class DrawChildContainer extends ViewGroup {
    private boolean isDrawing;

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        setMeasuredDimension(0, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DrawChildContainer(@NotNull Context context) {
        super(context);
        kotlin.jvm.internal.t.j(context, "context");
        setClipChildren(false);
        setTag(R.id.hide_in_inspector_tag, Boolean.TRUE);
    }

    public final void a(@NotNull Canvas canvas, @NotNull View view, long j6) {
        kotlin.jvm.internal.t.j(canvas, "canvas");
        kotlin.jvm.internal.t.j(view, "view");
        super.drawChild(AndroidCanvas_androidKt.c(canvas), view, j6);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(@NotNull android.graphics.Canvas canvas) {
        kotlin.jvm.internal.t.j(canvas, "canvas");
        int childCount = super.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.compose.ui.platform.ViewLayer");
            }
            if (((ViewLayer) childAt).s()) {
                this.isDrawing = true;
                try {
                    super.dispatchDraw(canvas);
                    return;
                } finally {
                    this.isDrawing = false;
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    public int getChildCount() {
        if (this.isDrawing) {
            return super.getChildCount();
        }
        return 0;
    }
}
