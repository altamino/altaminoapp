package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Shader;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
import com.narvii.lib.R;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class FadingEdgeLayout extends FrameLayout {
    private static final int DEFAULT_GRADIENT_SIZE_DP = 80;
    private static final int DIRTY_FLAG_BOTTOM = 2;
    private static final int DIRTY_FLAG_LEFT = 4;
    private static final int DIRTY_FLAG_RIGHT = 8;
    private static final int DIRTY_FLAG_TOP = 1;
    private static final int[] FADE_COLORS = {0, ViewCompat.MEASURED_STATE_MASK};
    private static final int[] FADE_COLORS_REVERSE = {ViewCompat.MEASURED_STATE_MASK, 0};
    public static final int FADE_EDGE_BOTTOM = 2;
    public static final int FADE_EDGE_LEFT = 4;
    public static final int FADE_EDGE_RIGHT = 8;
    public static final int FADE_EDGE_TOP = 1;
    private int faddingLength;
    private boolean fadeBottom;
    private boolean fadeLeft;
    private boolean fadeRight;
    private boolean fadeTop;
    private int gradientDirtyFlags;
    private Paint gradientPaintBottom;
    private Paint gradientPaintLeft;
    private Paint gradientPaintRight;
    private Paint gradientPaintTop;
    private Rect gradientRectBottom;
    private Rect gradientRectLeft;
    private Rect gradientRectRight;
    private Rect gradientRectTop;

    public FadingEdgeLayout(Context context) {
        super(context);
        init(null, 0);
    }

    public FadingEdgeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(attributeSet, 0);
    }

    public FadingEdgeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(attributeSet, 0);
    }

    private void init(AttributeSet attributeSet, int i) {
        int iApplyDimension = (int) TypedValue.applyDimension(1, 80.0f, getResources().getDisplayMetrics());
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.FadingEdgeLayout, i, 0);
            int i2 = typedArrayObtainStyledAttributes.getInt(R.styleable.FadingEdgeLayout_fadingEdgeFlag, 0);
            this.fadeTop = (i2 & 1) == 1;
            this.fadeBottom = (i2 & 2) == 2;
            this.fadeLeft = (i2 & 4) == (Utils.isRtl() ? 8 : 4);
            this.fadeRight = (i2 & 8) == (Utils.isRtl() ? 4 : 8);
            this.faddingLength = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.FadingEdgeLayout_fadingEdgeLength, iApplyDimension);
            if (this.fadeTop && this.faddingLength > 0) {
                this.gradientDirtyFlags |= 1;
            }
            if (this.fadeLeft && this.faddingLength > 0) {
                this.gradientDirtyFlags |= 4;
            }
            if (this.fadeBottom && this.faddingLength > 0) {
                this.gradientDirtyFlags |= 2;
            }
            if (this.fadeRight && this.faddingLength > 0) {
                this.gradientDirtyFlags |= 8;
            }
            typedArrayObtainStyledAttributes.recycle();
        } else {
            this.faddingLength = iApplyDimension;
        }
        PorterDuffXfermode porterDuffXfermode = new PorterDuffXfermode(PorterDuff.Mode.DST_IN);
        this.gradientPaintTop = new Paint(1);
        this.gradientPaintTop.setXfermode(porterDuffXfermode);
        this.gradientPaintBottom = new Paint(1);
        this.gradientPaintBottom.setXfermode(porterDuffXfermode);
        this.gradientPaintLeft = new Paint(1);
        this.gradientPaintLeft.setXfermode(porterDuffXfermode);
        this.gradientPaintRight = new Paint(1);
        this.gradientPaintRight.setXfermode(porterDuffXfermode);
        this.gradientRectTop = new Rect();
        this.gradientRectLeft = new Rect();
        this.gradientRectBottom = new Rect();
        this.gradientRectRight = new Rect();
    }

    public void setFadeSizes(int i, int i2, int i3, int i4) {
        if (this.faddingLength != i) {
            this.faddingLength = i;
            this.gradientDirtyFlags |= 1;
        }
        if (this.faddingLength != i2) {
            this.faddingLength = i2;
            this.gradientDirtyFlags |= 4;
        }
        if (this.faddingLength != i3) {
            this.faddingLength = i3;
            this.gradientDirtyFlags |= 2;
        }
        if (this.faddingLength != i4) {
            this.faddingLength = i4;
            this.gradientDirtyFlags |= 8;
        }
        if (this.gradientDirtyFlags != 0) {
            invalidate();
        }
    }

    public void setFadeEdges(boolean z, boolean z2, boolean z3, boolean z4) {
        if (this.fadeTop != z) {
            this.fadeTop = z;
            this.gradientDirtyFlags |= 1;
        }
        if (this.fadeLeft != z2) {
            this.fadeLeft = z2;
            this.gradientDirtyFlags |= 4;
        }
        if (this.fadeBottom != z3) {
            this.fadeBottom = z3;
            this.gradientDirtyFlags |= 2;
        }
        if (this.fadeRight != z4) {
            this.fadeRight = z4;
            this.gradientDirtyFlags |= 8;
        }
        if (this.gradientDirtyFlags != 0) {
            invalidate();
        }
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        if (getPaddingLeft() != i) {
            this.gradientDirtyFlags |= 4;
        }
        if (getPaddingTop() != i2) {
            this.gradientDirtyFlags |= 1;
        }
        if (getPaddingRight() != i3) {
            this.gradientDirtyFlags |= 8;
        }
        if (getPaddingBottom() != i4) {
            this.gradientDirtyFlags |= 2;
        }
        super.setPadding(i, i2, i3, i4);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            this.gradientDirtyFlags |= 4;
            this.gradientDirtyFlags |= 8;
        }
        if (i2 != i4) {
            this.gradientDirtyFlags |= 1;
            this.gradientDirtyFlags |= 2;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        int width = getWidth();
        int height = getHeight();
        boolean z = this.fadeTop || this.fadeBottom || this.fadeLeft || this.fadeRight;
        if (getVisibility() == 8 || width == 0 || height == 0 || !z) {
            super.dispatchDraw(canvas);
            return;
        }
        int i = this.gradientDirtyFlags;
        if ((i & 1) == 1) {
            this.gradientDirtyFlags = i & (-2);
            initTopGradient();
        }
        int i2 = this.gradientDirtyFlags;
        if ((i2 & 4) == 4) {
            this.gradientDirtyFlags = i2 & (-5);
            initLeftGradient();
        }
        int i3 = this.gradientDirtyFlags;
        if ((i3 & 2) == 2) {
            this.gradientDirtyFlags = i3 & (-3);
            initBottomGradient();
        }
        int i4 = this.gradientDirtyFlags;
        if ((i4 & 8) == 8) {
            this.gradientDirtyFlags = i4 & (-9);
            initRightGradient();
        }
        int iSaveLayer = canvas.saveLayer(0.0f, 0.0f, getWidth(), getHeight(), null, 31);
        super.dispatchDraw(canvas);
        if (this.fadeTop && this.faddingLength > 0) {
            canvas.drawRect(this.gradientRectTop, this.gradientPaintTop);
        }
        if (this.fadeBottom && this.faddingLength > 0) {
            canvas.drawRect(this.gradientRectBottom, this.gradientPaintBottom);
        }
        if (this.fadeLeft && this.faddingLength > 0) {
            canvas.drawRect(this.gradientRectLeft, this.gradientPaintLeft);
        }
        if (this.fadeRight && this.faddingLength > 0) {
            canvas.drawRect(this.gradientRectRight, this.gradientPaintRight);
        }
        canvas.restoreToCount(iSaveLayer);
    }

    private void initTopGradient() {
        int iMin = Math.min(this.faddingLength, (getHeight() - getPaddingTop()) - getPaddingBottom());
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int i = iMin + paddingTop;
        this.gradientRectTop.set(paddingLeft, paddingTop, getWidth() - getPaddingRight(), i);
        float f = paddingLeft;
        this.gradientPaintTop.setShader(new LinearGradient(f, paddingTop, f, i, FADE_COLORS, (float[]) null, Shader.TileMode.CLAMP));
    }

    private void initLeftGradient() {
        int iMin = Math.min(this.faddingLength, (getWidth() - getPaddingLeft()) - getPaddingRight());
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int i = iMin + paddingLeft;
        this.gradientRectLeft.set(paddingLeft, paddingTop, i, getHeight() - getPaddingBottom());
        float f = paddingTop;
        this.gradientPaintLeft.setShader(new LinearGradient(paddingLeft, f, i, f, FADE_COLORS, (float[]) null, Shader.TileMode.CLAMP));
    }

    private void initBottomGradient() {
        int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
        int iMin = Math.min(this.faddingLength, height);
        int paddingLeft = getPaddingLeft();
        int paddingTop = (getPaddingTop() + height) - iMin;
        int i = iMin + paddingTop;
        this.gradientRectBottom.set(paddingLeft, paddingTop, getWidth() - getPaddingRight(), i);
        float f = paddingLeft;
        this.gradientPaintBottom.setShader(new LinearGradient(f, paddingTop, f, i, FADE_COLORS_REVERSE, (float[]) null, Shader.TileMode.CLAMP));
    }

    private void initRightGradient() {
        int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
        int iMin = Math.min(this.faddingLength, width);
        int paddingLeft = (getPaddingLeft() + width) - iMin;
        int paddingTop = getPaddingTop();
        int i = iMin + paddingLeft;
        this.gradientRectRight.set(paddingLeft, paddingTop, i, getHeight() - getPaddingBottom());
        float f = paddingTop;
        this.gradientPaintRight.setShader(new LinearGradient(paddingLeft, f, i, f, FADE_COLORS_REVERSE, (float[]) null, Shader.TileMode.CLAMP));
    }
}
