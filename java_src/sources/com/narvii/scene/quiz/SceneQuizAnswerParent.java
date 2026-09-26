package com.narvii.scene.quiz;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import com.narvii.mediaeditor.R;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes5.dex */
public class SceneQuizAnswerParent extends LinearLayout {
    private boolean forceCenter;
    View grid;
    private final int itemMargin;
    private final int itemPadding;
    private final int questionBottom;
    View statusBar;
    View stub1;
    View title;

    public void setForceCenter(boolean z6) {
        if (this.forceCenter == z6) {
            return;
        }
        this.forceCenter = z6;
        requestLayout();
    }

    public SceneQuizAnswerParent(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.forceCenter = false;
        this.itemPadding = getResources().getDimensionPixelSize(R.dimen.scene_answer_item_padding_h);
        this.itemMargin = getResources().getDimensionPixelOffset(R.dimen.scene_answer_item_margin);
        this.questionBottom = getResources().getDimensionPixelSize(R.dimen.scene_quiz_question_margin_bottom);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.grid = findViewById(R.id.grid);
        this.title = findViewById(R.id.question);
        this.stub1 = findViewById(R.id.stub1);
        this.statusBar = findViewById(R.id.status_bar_placeholder);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        boolean z6;
        int i12;
        int iMin;
        super.onMeasure(i10, i11);
        int size = View.MeasureSpec.getSize(i11);
        float size2 = View.MeasureSpec.getSize(i10) * 0.8f;
        int i13 = this.itemMargin;
        int i14 = this.itemPadding;
        int i15 = (int) (((((size2 - i13) - (i14 * 4)) / 2.0f) * 1.29f * 2.0f) + (i14 * 4) + i13);
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        boolean z10 = false;
        while (true) {
            z6 = true;
            if (i16 >= getChildCount()) {
                break;
            }
            View childAt = getChildAt(i16);
            if (childAt.getId() != R.id.stub1 && childAt.getId() != R.id.grid) {
                if (childAt.getId() == R.id.question) {
                    z10 = true;
                }
                int measuredHeight = childAt.getMeasuredHeight();
                if (childAt.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                    measuredHeight += marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
                }
                i17 += measuredHeight;
                if (!z10) {
                    i18 += measuredHeight;
                }
            }
            i16++;
        }
        int i19 = size - i17;
        int measuredHeight2 = ((size - (i18 * 2)) - this.title.getMeasuredHeight()) - this.questionBottom;
        if (measuredHeight2 <= i15) {
            z6 = false;
        }
        if (z6) {
            i12 = (measuredHeight2 - i15) / 2;
        } else if (i19 > i15) {
            i12 = 0;
        } else {
            i12 = 0;
            i15 = i19;
        }
        if (!z6 && this.forceCenter) {
            iMin = Math.min(0, Math.max(Utils.dpToPxInt(getContext(), 35.0f) + this.statusBar.getMeasuredHeight(), (((size - i15) - this.title.getMeasuredHeight()) - this.questionBottom) / 2) - i18);
        } else {
            iMin = 0;
        }
        int i20 = this.itemPadding;
        int i21 = this.itemMargin;
        int i22 = (int) ((((((i15 - (i20 * 4)) - i21) / 2.0f) / 1.29f) * 2.0f) + (i20 * 4) + i21);
        View view = this.grid;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.height = i15;
            layoutParams.width = i22;
            this.grid.setLayoutParams(layoutParams);
        }
        View view2 = this.stub1;
        if (view2 != null) {
            ViewGroup.LayoutParams layoutParams2 = view2.getLayoutParams();
            layoutParams2.height = Math.max(0, i12);
            if (layoutParams2 instanceof ViewGroup.MarginLayoutParams) {
                ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin = iMin;
            }
            this.stub1.setLayoutParams(layoutParams2);
        }
        super.onMeasure(i10, i11);
    }
}
