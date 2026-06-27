package com.narvii.list.select;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.lib.R;
import com.narvii.util.AnimSwitch;

/* loaded from: classes3.dex */
public class SelectableFrame extends FrameLayout {
    private static final int ANIMATION_DURATION = 200;
    private AnimSwitch alphaAnim;
    private int backIndex;
    private View backOff;
    private View backOn;
    private View checkOff;
    private View checkOn;
    private AnimSwitch paddingAnim;
    private boolean selectMode;
    private float selectOffAlpha;
    private float selectOnAlpha;
    private int selectPadding;
    private boolean selected;
    private View view;

    public SelectableFrame(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SelectableFrame);
        this.selectPadding = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SelectableFrame_selectPadding, 0);
        this.selectOnAlpha = typedArrayObtainStyledAttributes.getFloat(R.styleable.SelectableFrame_selectOnAlpha, 1.0f);
        this.selectOffAlpha = typedArrayObtainStyledAttributes.getFloat(R.styleable.SelectableFrame_selectOffAlpha, 1.0f);
        typedArrayObtainStyledAttributes.recycle();
        this.paddingAnim = new AnimSwitch(this.selectPadding, 200L);
        this.paddingAnim.setCurrent(0.0f);
        this.paddingAnim.setTarget(0.0f);
        this.alphaAnim = new AnimSwitch(Math.max(Math.max(Math.abs(this.selectOnAlpha - this.selectOffAlpha), Math.abs(1.0f - this.selectOnAlpha)), Math.abs(1.0f - this.selectOffAlpha)), 200L);
        this.alphaAnim.setCurrent(1.0f);
        this.alphaAnim.setTarget(1.0f);
        setChildrenDrawingOrderEnabled(true);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.backOn = findViewById(R.id.selectable_back_on);
        this.backOff = findViewById(R.id.selectable_back_off);
        this.checkOn = findViewById(R.id.selectable_check_on);
        this.checkOff = findViewById(R.id.selectable_check_off);
        if (this.backOn != null || this.backOff != null) {
            int i = 0;
            int childCount = getChildCount();
            while (i < childCount && (getChildAt(i) == this.backOn || getChildAt(i) == this.backOff)) {
                i++;
                this.backIndex = i;
            }
        }
        update();
    }

    private void update() {
        View view = this.backOn;
        if (view != null) {
            view.setVisibility((this.selectMode && this.selected) ? 0 : 4);
        }
        View view2 = this.backOff;
        if (view2 != null) {
            view2.setVisibility((!this.selectMode || this.selected) ? 4 : 0);
        }
        View view3 = this.checkOn;
        if (view3 != null) {
            view3.setVisibility((this.selectMode && this.selected) ? 0 : 4);
        }
        View view4 = this.checkOff;
        if (view4 != null) {
            view4.setVisibility((!this.selectMode || this.selected) ? 4 : 0);
        }
    }

    public View getView() {
        return this.view;
    }

    public void setView(View view) {
        View view2 = this.view;
        if (view2 != view) {
            if (view2 != null) {
                removeView(view2);
            }
            this.view = view;
            if (view != null) {
                if (view.getLayoutParams() instanceof FrameLayout.LayoutParams) {
                    ((FrameLayout.LayoutParams) view.getLayoutParams()).gravity = 17;
                }
                addView(view);
            }
        }
    }

    public void set(boolean z, boolean z2) {
        float f;
        if (this.selectMode == z && this.selected == z2) {
            return;
        }
        this.selectMode = z;
        this.selected = z2;
        AnimSwitch animSwitch = this.paddingAnim;
        if (z) {
            f = z2 ? this.selectPadding : 0;
        } else {
            f = 0.0f;
        }
        animSwitch.setTarget(f);
        this.alphaAnim.setTarget(z ? z2 ? this.selectOnAlpha : this.selectOffAlpha : 1.0f);
        update();
        if (this.paddingAnim.inAnim() || this.alphaAnim.inAnim()) {
            invalidate();
        }
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        if (this.view == null) {
            return super.getChildDrawingOrder(i, i2);
        }
        int i3 = this.backIndex;
        return i2 < i3 ? i2 : i2 == i3 ? i - 1 : i2 - 1;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        View view = this.backOn;
        if (view != null) {
            view.layout(0, 0, i3 - i, i4 - i2);
        }
        View view2 = this.backOff;
        if (view2 != null) {
            view2.layout(0, 0, i3 - i, i4 - i2);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        if (view == this.view) {
            int iSave = canvas.save();
            float fAnim = this.paddingAnim.anim(j);
            if (fAnim != 0.0f) {
                float width = ((getWidth() - fAnim) * 1.0f) / getWidth();
                canvas.scale(width, width, getWidth() / 2, getHeight() / 2);
            }
            float fAnim2 = this.alphaAnim.anim(j);
            if (fAnim2 < 1.0f) {
                canvas.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), (int) (fAnim2 * 255.0f), 31);
            }
            boolean zDrawChild = super.drawChild(canvas, view, j);
            canvas.restoreToCount(iSave);
            if (!this.paddingAnim.inAnim() && !this.alphaAnim.inAnim()) {
                return zDrawChild;
            }
            invalidate();
            return true;
        }
        return super.drawChild(canvas, view, j);
    }
}
