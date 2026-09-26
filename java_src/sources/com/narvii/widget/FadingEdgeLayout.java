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
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import com.narvii.lib.R;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes7.dex */
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

    public void setFadeEdges(boolean z6, boolean z10, boolean z11, boolean z12) {
        if (this.fadeTop != z6) {
            this.fadeTop = z6;
            this.gradientDirtyFlags |= 1;
        }
        if (this.fadeLeft != z10) {
            this.fadeLeft = z10;
            this.gradientDirtyFlags |= 4;
        }
        if (this.fadeBottom != z11) {
            this.fadeBottom = z11;
            this.gradientDirtyFlags |= 2;
        }
        if (this.fadeRight != z12) {
            this.fadeRight = z12;
            this.gradientDirtyFlags |= 8;
        }
        if (this.gradientDirtyFlags != 0) {
            invalidate();
        }
    }

    public void setFadeSizes(int i10, int i11, int i12, int i13) {
        if (this.faddingLength != i10) {
            this.faddingLength = i10;
            this.gradientDirtyFlags |= 1;
        }
        if (this.faddingLength != i11) {
            this.faddingLength = i11;
            this.gradientDirtyFlags |= 4;
        }
        if (this.faddingLength != i12) {
            this.faddingLength = i12;
            this.gradientDirtyFlags |= 2;
        }
        if (this.faddingLength != i13) {
            this.faddingLength = i13;
            this.gradientDirtyFlags |= 8;
        }
        if (this.gradientDirtyFlags != 0) {
            invalidate();
        }
    }

    public FadingEdgeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(attributeSet, 0);
    }

    private void init(AttributeSet attributeSet, int i10) {
        boolean z6;
        boolean z10;
        int i11;
        boolean z11;
        int i12;
        int iApplyDimension = (int) TypedValue.applyDimension(1, 80.0f, getResources().getDisplayMetrics());
        if (attributeSet != null) {
            boolean z12 = false;
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.FadingEdgeLayout, i10, 0);
            int i13 = typedArrayObtainStyledAttributes.getInt(R.styleable.FadingEdgeLayout_fadingEdgeFlag, 0);
            if ((i13 & 1) == 1) {
                z6 = true;
            } else {
                z6 = false;
            }
            this.fadeTop = z6;
            if ((i13 & 2) == 2) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.fadeBottom = z10;
            int i14 = i13 & 4;
            if (Utils.isRtl()) {
                i11 = 8;
            } else {
                i11 = 4;
            }
            if (i14 == i11) {
                z11 = true;
            } else {
                z11 = false;
            }
            this.fadeLeft = z11;
            int i15 = i13 & 8;
            if (Utils.isRtl()) {
                i12 = 4;
            } else {
                i12 = 8;
            }
            if (i15 == i12) {
                z12 = true;
            }
            this.fadeRight = z12;
            int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.FadingEdgeLayout_fadingEdgeLength, iApplyDimension);
            this.faddingLength = dimensionPixelSize;
            if (this.fadeTop && dimensionPixelSize > 0) {
                this.gradientDirtyFlags |= 1;
            }
            if (this.fadeLeft && dimensionPixelSize > 0) {
                this.gradientDirtyFlags |= 4;
            }
            if (this.fadeBottom && dimensionPixelSize > 0) {
                this.gradientDirtyFlags |= 2;
            }
            if (this.fadeRight && dimensionPixelSize > 0) {
                this.gradientDirtyFlags |= 8;
            }
            typedArrayObtainStyledAttributes.recycle();
        } else {
            this.faddingLength = iApplyDimension;
        }
        PorterDuffXfermode porterDuffXfermode = new PorterDuffXfermode(PorterDuff.Mode.DST_IN);
        Paint paint = new Paint(1);
        this.gradientPaintTop = paint;
        paint.setXfermode(porterDuffXfermode);
        Paint paint2 = new Paint(1);
        this.gradientPaintBottom = paint2;
        paint2.setXfermode(porterDuffXfermode);
        Paint paint3 = new Paint(1);
        this.gradientPaintLeft = paint3;
        paint3.setXfermode(porterDuffXfermode);
        Paint paint4 = new Paint(1);
        this.gradientPaintRight = paint4;
        paint4.setXfermode(porterDuffXfermode);
        this.gradientRectTop = new Rect();
        this.gradientRectLeft = new Rect();
        this.gradientRectBottom = new Rect();
        this.gradientRectRight = new Rect();
    }

    private void initBottomGradient() {
        int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
        int iMin = Math.min(this.faddingLength, height);
        int paddingLeft = getPaddingLeft();
        int paddingTop = (getPaddingTop() + height) - iMin;
        int i10 = iMin + paddingTop;
        this.gradientRectBottom.set(paddingLeft, paddingTop, getWidth() - getPaddingRight(), i10);
        float f = paddingLeft;
        this.gradientPaintBottom.setShader(new LinearGradient(f, paddingTop, f, i10, FADE_COLORS_REVERSE, (float[]) null, Shader.TileMode.CLAMP));
    }

    private void initLeftGradient() {
        int iMin = Math.min(this.faddingLength, (getWidth() - getPaddingLeft()) - getPaddingRight());
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int i10 = iMin + paddingLeft;
        this.gradientRectLeft.set(paddingLeft, paddingTop, i10, getHeight() - getPaddingBottom());
        float f = paddingTop;
        this.gradientPaintLeft.setShader(new LinearGradient(paddingLeft, f, i10, f, FADE_COLORS, (float[]) null, Shader.TileMode.CLAMP));
    }

    private void initRightGradient() {
        int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
        int iMin = Math.min(this.faddingLength, width);
        int paddingLeft = (getPaddingLeft() + width) - iMin;
        int paddingTop = getPaddingTop();
        int i10 = iMin + paddingLeft;
        this.gradientRectRight.set(paddingLeft, paddingTop, i10, getHeight() - getPaddingBottom());
        float f = paddingTop;
        this.gradientPaintRight.setShader(new LinearGradient(paddingLeft, f, i10, f, FADE_COLORS_REVERSE, (float[]) null, Shader.TileMode.CLAMP));
    }

    private void initTopGradient() {
        int iMin = Math.min(this.faddingLength, (getHeight() - getPaddingTop()) - getPaddingBottom());
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int i10 = iMin + paddingTop;
        this.gradientRectTop.set(paddingLeft, paddingTop, getWidth() - getPaddingRight(), i10);
        float f = paddingLeft;
        this.gradientPaintTop.setShader(new LinearGradient(f, paddingTop, f, i10, FADE_COLORS, (float[]) null, Shader.TileMode.CLAMP));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        boolean z6;
        int width = getWidth();
        int height = getHeight();
        if (!this.fadeTop && !this.fadeBottom && !this.fadeLeft && !this.fadeRight) {
            z6 = false;
        } else {
            z6 = true;
        }
        if (getVisibility() != 8 && width != 0 && height != 0 && z6) {
            int i10 = this.gradientDirtyFlags;
            if ((i10 & 1) == 1) {
                this.gradientDirtyFlags = i10 & (-2);
                initTopGradient();
            }
            int i11 = this.gradientDirtyFlags;
            if ((i11 & 4) == 4) {
                this.gradientDirtyFlags = i11 & (-5);
                initLeftGradient();
            }
            int i12 = this.gradientDirtyFlags;
            if ((i12 & 2) == 2) {
                this.gradientDirtyFlags = i12 & (-3);
                initBottomGradient();
            }
            int i13 = this.gradientDirtyFlags;
            if ((i13 & 8) == 8) {
                this.gradientDirtyFlags = i13 & (-9);
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
            return;
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (i10 != i12) {
            this.gradientDirtyFlags |= 12;
        }
        if (i11 != i13) {
            this.gradientDirtyFlags |= 3;
        }
    }

    @Override // android.view.View
    public void setPadding(int i10, int i11, int i12, int i13) {
        if (getPaddingLeft() != i10) {
            this.gradientDirtyFlags |= 4;
        }
        if (getPaddingTop() != i11) {
            this.gradientDirtyFlags |= 1;
        }
        if (getPaddingRight() != i12) {
            this.gradientDirtyFlags |= 8;
        }
        if (getPaddingBottom() != i13) {
            this.gradientDirtyFlags |= 2;
        }
        super.setPadding(i10, i11, i12, i13);
    }

    public FadingEdgeLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        init(attributeSet, 0);
    }
}
