package com.narvii.scene.quiz;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.narvii.mediaeditor.R;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class SceneQuizAnswerParent extends LinearLayout {
    private boolean forceCenter;
    View grid;
    private final int itemMargin;
    private final int itemPadding;
    private final int questionBottom;
    View statusBar;
    View stub1;
    View title;

    public SceneQuizAnswerParent(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.forceCenter = false;
        this.itemPadding = getResources().getDimensionPixelSize(R.dimen.scene_answer_item_padding_h);
        this.itemMargin = getResources().getDimensionPixelOffset(R.dimen.scene_answer_item_margin);
        this.questionBottom = getResources().getDimensionPixelSize(R.dimen.scene_quiz_question_margin_bottom);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        super.onMeasure(i, i2);
        int size = View.MeasureSpec.getSize(i2);
        int i4 = this.itemMargin;
        int i5 = this.itemPadding;
        int size2 = (int) ((((((View.MeasureSpec.getSize(i) * 0.8f) - i4) - (i5 * 4)) / 2.0f) * 1.29f * 2.0f) + (i5 * 4) + i4);
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        boolean z = false;
        while (true) {
            if (i6 >= getChildCount()) {
                break;
            }
            View childAt = getChildAt(i6);
            if (childAt.getId() != R.id.stub1 && childAt.getId() != R.id.grid) {
                if (childAt.getId() == R.id.question) {
                    z = true;
                }
                int measuredHeight = childAt.getMeasuredHeight();
                if (childAt.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                    measuredHeight += marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
                }
                i7 += measuredHeight;
                if (!z) {
                    i8 += measuredHeight;
                }
            }
            i6++;
        }
        int i9 = size - i7;
        int measuredHeight2 = ((size - (i8 * 2)) - this.title.getMeasuredHeight()) - this.questionBottom;
        boolean z2 = measuredHeight2 > size2;
        if (z2) {
            i3 = (measuredHeight2 - size2) / 2;
        } else {
            if (i9 <= size2) {
                size2 = i9;
            }
            i3 = 0;
        }
        int iMin = (z2 || !this.forceCenter) ? 0 : Math.min(0, Math.max(Utils.dpToPxInt(getContext(), 35.0f) + this.statusBar.getMeasuredHeight(), (((size - size2) - this.title.getMeasuredHeight()) - this.questionBottom) / 2) - i8);
        int i10 = this.itemPadding;
        int i11 = (int) ((((((size2 - (i10 * 4)) - r8) / 2.0f) / 1.29f) * 2.0f) + (i10 * 4) + this.itemMargin);
        View view = this.grid;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.height = size2;
            layoutParams.width = i11;
            this.grid.setLayoutParams(layoutParams);
        }
        View view2 = this.stub1;
        if (view2 != null) {
            ViewGroup.LayoutParams layoutParams2 = view2.getLayoutParams();
            layoutParams2.height = Math.max(0, i3);
            if (layoutParams2 instanceof ViewGroup.MarginLayoutParams) {
                ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin = iMin;
            }
            this.stub1.setLayoutParams(layoutParams2);
        }
        super.onMeasure(i, i2);
    }

    public void setForceCenter(boolean z) {
        if (this.forceCenter == z) {
            return;
        }
        this.forceCenter = z;
        requestLayout();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.grid = findViewById(R.id.grid);
        this.title = findViewById(R.id.question);
        this.stub1 = findViewById(R.id.stub1);
        this.statusBar = findViewById(R.id.status_bar_placeholder);
    }
}
