package com.narvii.list.select;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.lib.R;
import com.narvii.util.AnimSwitch;

/* JADX INFO: loaded from: classes11.dex */
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

    public View getView() {
        return this.view;
    }

    private void update() {
        View view = this.backOn;
        int i10 = 4;
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
            if (this.selectMode && !this.selected) {
                i10 = 0;
            }
            view4.setVisibility(i10);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j6) {
        if (view != this.view) {
            return super.drawChild(canvas, view, j6);
        }
        int iSave = canvas.save();
        float fAnim = this.paddingAnim.anim(j6);
        if (fAnim != 0.0f) {
            float width = ((getWidth() - fAnim) * 1.0f) / getWidth();
            canvas.scale(width, width, getWidth() / 2, getHeight() / 2);
        }
        float fAnim2 = this.alphaAnim.anim(j6);
        if (fAnim2 < 1.0f) {
            canvas.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), (int) (fAnim2 * 255.0f), 31);
        }
        boolean zDrawChild = super.drawChild(canvas, view, j6);
        canvas.restoreToCount(iSave);
        if (!this.paddingAnim.inAnim() && !this.alphaAnim.inAnim()) {
            return zDrawChild;
        }
        invalidate();
        return true;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i10, int i11) {
        if (this.view == null) {
            return super.getChildDrawingOrder(i10, i11);
        }
        int i12 = this.backIndex;
        if (i11 < i12) {
            return i11;
        }
        return i11 == i12 ? i10 - 1 : i11 - 1;
    }

    public void set(boolean z6, boolean z10) {
        float f;
        float f6;
        if (this.selectMode == z6 && this.selected == z10) {
            return;
        }
        this.selectMode = z6;
        this.selected = z10;
        AnimSwitch animSwitch = this.paddingAnim;
        if (z6) {
            f = z10 ? this.selectPadding : 0;
        } else {
            f = 0.0f;
        }
        animSwitch.setTarget(f);
        AnimSwitch animSwitch2 = this.alphaAnim;
        if (z6) {
            f6 = z10 ? this.selectOnAlpha : this.selectOffAlpha;
        } else {
            f6 = 1.0f;
        }
        animSwitch2.setTarget(f6);
        update();
        if (this.paddingAnim.inAnim() || this.alphaAnim.inAnim()) {
            invalidate();
        }
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

    public SelectableFrame(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SelectableFrame);
        this.selectPadding = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SelectableFrame_selectPadding, 0);
        this.selectOnAlpha = typedArrayObtainStyledAttributes.getFloat(R.styleable.SelectableFrame_selectOnAlpha, 1.0f);
        this.selectOffAlpha = typedArrayObtainStyledAttributes.getFloat(R.styleable.SelectableFrame_selectOffAlpha, 1.0f);
        typedArrayObtainStyledAttributes.recycle();
        AnimSwitch animSwitch = new AnimSwitch(this.selectPadding, 200L);
        this.paddingAnim = animSwitch;
        animSwitch.setCurrent(0.0f);
        this.paddingAnim.setTarget(0.0f);
        AnimSwitch animSwitch2 = new AnimSwitch(Math.max(Math.max(Math.abs(this.selectOnAlpha - this.selectOffAlpha), Math.abs(1.0f - this.selectOnAlpha)), Math.abs(1.0f - this.selectOffAlpha)), 200L);
        this.alphaAnim = animSwitch2;
        animSwitch2.setCurrent(1.0f);
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
            int childCount = getChildCount();
            int i10 = 0;
            while (i10 < childCount && (getChildAt(i10) == this.backOn || getChildAt(i10) == this.backOff)) {
                i10++;
                this.backIndex = i10;
            }
        }
        update();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        View view = this.backOn;
        if (view != null) {
            view.layout(0, 0, i12 - i10, i13 - i11);
        }
        View view2 = this.backOff;
        if (view2 != null) {
            view2.layout(0, 0, i12 - i10, i13 - i11);
        }
    }
}
