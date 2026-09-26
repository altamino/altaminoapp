package com.narvii.video.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.narvii.util.Utils;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class FrameItemMaskView extends FrameLayout {
    private float clipRadius;
    private float clipRightEnd;
    private boolean isLeftEdge;
    private boolean isRightEdge;
    private boolean isShowBorder;
    private boolean isShowRound;

    @NotNull
    private final Path path;

    @NotNull
    private final Paint pathPaint;

    @NotNull
    private final RectF rect;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FrameItemMaskView(@NotNull Context context) {
        super(context);
        t.j(context, "context");
        this.clipRightEnd = Float.MIN_VALUE;
        this.path = new Path();
        this.rect = new RectF();
        Paint paint = new Paint();
        this.pathPaint = paint;
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(Utils.dpToPx(getContext(), 1.0f));
        paint.setColor(-1);
    }

    private final void drawBorderPath(Canvas canvas) {
        if (this.isShowBorder) {
            canvas.drawPath(this.path, this.pathPaint);
        }
    }

    public static /* synthetic */ void updateBorder$default(FrameItemMaskView frameItemMaskView, boolean z6, boolean z10, boolean z11, boolean z12, float f, int i10, Object obj) {
        boolean z13 = (i10 & 4) != 0 ? false : z11;
        boolean z14 = (i10 & 8) != 0 ? false : z12;
        if ((i10 & 16) != 0) {
            f = -1000.0f;
        }
        frameItemMaskView.updateBorder(z6, z10, z13, z14, f);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(@NotNull Canvas canvas) {
        t.j(canvas, "canvas");
        canvas.save();
        this.path.reset();
        float width = getWidth() * 1.0f;
        float height = getHeight() * 1.0f;
        float f = this.clipRadius;
        float f6 = -f;
        float f7 = width + f;
        if (this.isLeftEdge) {
            f6 = 0.0f;
        }
        if (this.isRightEdge) {
            f7 = width;
        }
        if (this.isShowRound && this.clipRightEnd - f < getWidth()) {
            float f10 = this.clipRightEnd;
            if (f10 > 0.0f) {
                float f11 = this.clipRadius;
                if (f10 - f11 < 0.0f) {
                    f6 = f10 - (2 * f11);
                }
                f7 = f10;
            }
        }
        if (Utils.isRtl()) {
            float f12 = 1;
            this.rect.set((width - f6) - f12, 2.0f, (width - f7) + f12, height - 2.0f);
        } else {
            float f13 = 1;
            this.rect.set(f6 + f13, 2.0f, f7 - f13, height - 2.0f);
        }
        if (this.isShowRound) {
            Path path = this.path;
            RectF rectF = this.rect;
            float f14 = this.clipRadius;
            path.addRoundRect(rectF, f14, f14, Path.Direction.CW);
        } else {
            this.path.addRect(this.rect, Path.Direction.CW);
        }
        drawBorderPath(canvas);
        canvas.clipPath(this.path);
        super.dispatchDraw(canvas);
        drawBorderPath(canvas);
        canvas.restore();
    }

    public final void setBorderStyle(int i10, float f) {
        this.pathPaint.setColor(i10);
        this.clipRadius = f;
        invalidate();
    }

    public final void updateBorder(boolean z6, boolean z10, boolean z11, boolean z12, float f) {
        this.isShowRound = z6;
        this.isShowBorder = z10;
        this.isLeftEdge = z11;
        this.isRightEdge = z12;
        this.clipRightEnd = f;
        invalidate();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FrameItemMaskView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        t.j(context, "context");
        this.clipRightEnd = Float.MIN_VALUE;
        this.path = new Path();
        this.rect = new RectF();
        Paint paint = new Paint();
        this.pathPaint = paint;
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(Utils.dpToPx(getContext(), 1.0f));
        paint.setColor(-1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FrameItemMaskView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        t.j(context, "context");
        this.clipRightEnd = Float.MIN_VALUE;
        this.path = new Path();
        this.rect = new RectF();
        Paint paint = new Paint();
        this.pathPaint = paint;
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(Utils.dpToPx(getContext(), 1.0f));
        paint.setColor(-1);
    }
}
