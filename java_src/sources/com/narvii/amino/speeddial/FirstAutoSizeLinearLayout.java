package com.narvii.amino.speeddial;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.narvii.widget.AutoSizingTextView;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class FirstAutoSizeLinearLayout extends LinearLayout {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FirstAutoSizeLinearLayout(@NotNull Context context) {
        this(context, null, 0, 6, null);
        t.j(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FirstAutoSizeLinearLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        t.j(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirstAutoSizeLinearLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        t.j(context, "context");
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (getOrientation() == 0) {
            int measuredWidth = getMeasuredWidth();
            if (getChildCount() > 1) {
                int childCount = getChildCount();
                for (int i12 = 1; i12 < childCount; i12++) {
                    View childAt = getChildAt(i12);
                    ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                    t.h(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    measuredWidth -= (childAt.getMeasuredWidth() + marginLayoutParams.leftMargin) + marginLayoutParams.rightMargin;
                }
            }
            if (getChildCount() > 0) {
                View childAt2 = getChildAt(0);
                if ((childAt2 instanceof AutoSizingTextView) && measuredWidth != 0) {
                    ((AutoSizingTextView) childAt2).setMaxWidth(measuredWidth);
                    super.onMeasure(i10, i11);
                }
            }
        }
    }

    public /* synthetic */ FirstAutoSizeLinearLayout(Context context, AttributeSet attributeSet, int i10, int i11, k kVar) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }
}
