package com.narvii.video.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.util.Utils;
import java.util.HashMap;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FrameItemMaskView.kt */
/* loaded from: classes3.dex */
public final class FrameItemMaskView extends FrameLayout {
    private HashMap _$_findViewCache;
    private float clipRadius;
    private float clipRightEnd;
    private boolean isLeftEdge;
    private boolean isRightEdge;
    private boolean isShowBorder;
    private boolean isShowRound;
    private final Path path;
    private final Paint pathPaint;
    private final RectF rect;

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FrameItemMaskView(Context context) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.clipRightEnd = FloatCompanionObject.INSTANCE.getMIN_VALUE();
        this.path = new Path();
        this.rect = new RectF();
        this.pathPaint = new Paint();
        this.pathPaint.setAntiAlias(true);
        this.pathPaint.setFilterBitmap(true);
        this.pathPaint.setStyle(Paint.Style.STROKE);
        this.pathPaint.setStrokeWidth(Utils.dpToPx(getContext(), 1.0f));
        this.pathPaint.setColor(-1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FrameItemMaskView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.clipRightEnd = FloatCompanionObject.INSTANCE.getMIN_VALUE();
        this.path = new Path();
        this.rect = new RectF();
        this.pathPaint = new Paint();
        this.pathPaint.setAntiAlias(true);
        this.pathPaint.setFilterBitmap(true);
        this.pathPaint.setStyle(Paint.Style.STROKE);
        this.pathPaint.setStrokeWidth(Utils.dpToPx(getContext(), 1.0f));
        this.pathPaint.setColor(-1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FrameItemMaskView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.clipRightEnd = FloatCompanionObject.INSTANCE.getMIN_VALUE();
        this.path = new Path();
        this.rect = new RectF();
        this.pathPaint = new Paint();
        this.pathPaint.setAntiAlias(true);
        this.pathPaint.setFilterBitmap(true);
        this.pathPaint.setStyle(Paint.Style.STROKE);
        this.pathPaint.setStrokeWidth(Utils.dpToPx(getContext(), 1.0f));
        this.pathPaint.setColor(-1);
    }

    public final void setBorderStyle(int i, float f) {
        this.pathPaint.setColor(i);
        this.clipRadius = f;
        invalidate();
    }

    public final void updateBorder(boolean z, boolean z2, boolean z3, boolean z4, float f) {
        this.isShowRound = z;
        this.isShowBorder = z2;
        this.isLeftEdge = z3;
        this.isRightEdge = z4;
        this.clipRightEnd = f;
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Intrinsics.checkParameterIsNotNull(canvas, "canvas");
        canvas.save();
        this.path.reset();
        float width = getWidth() * 1.0f;
        float height = getHeight() * 1.0f;
        float f = this.clipRadius;
        float f2 = -f;
        float f3 = f + width;
        if (this.isLeftEdge) {
            f2 = 0.0f;
        }
        if (this.isRightEdge) {
            f3 = width;
        }
        if (this.isShowRound && this.clipRightEnd - this.clipRadius < getWidth()) {
            float f4 = this.clipRightEnd;
            float f5 = 0;
            if (f4 > f5) {
                float f6 = this.clipRadius;
                if (f4 - f6 < f5) {
                    f2 = f4 - (2 * f6);
                }
                f3 = this.clipRightEnd;
            }
        }
        if (Utils.isRtl()) {
            float f7 = 1;
            this.rect.set((width - f2) - f7, 2.0f, (width - f3) + f7, height - 2.0f);
        } else {
            float f8 = 1;
            this.rect.set(f2 + f8, 2.0f, f3 - f8, height - 2.0f);
        }
        if (this.isShowRound) {
            Path path = this.path;
            RectF rectF = this.rect;
            float f9 = this.clipRadius;
            path.addRoundRect(rectF, f9, f9, Path.Direction.CW);
        } else {
            this.path.addRect(this.rect, Path.Direction.CW);
        }
        drawBorderPath(canvas);
        canvas.clipPath(this.path);
        super.dispatchDraw(canvas);
        drawBorderPath(canvas);
        canvas.restore();
    }

    private final void drawBorderPath(Canvas canvas) {
        if (this.isShowBorder) {
            canvas.drawPath(this.path, this.pathPaint);
        }
    }
}
