package com.narvii.topic;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.narvii.amino.master.R;
import com.narvii.nested.NVAppBarLayout;

/* JADX INFO: loaded from: classes.dex */
public class TopicHeaderBehavior extends CoordinatorLayout.Behavior {
    public TopicHeaderBehavior() {
    }

    public TopicHeaderBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
        return view2 instanceof NVAppBarLayout;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
        if (layoutParams.dodgeInsetEdges == 0) {
            layoutParams.dodgeInsetEdges = 48;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
        View viewFindViewById;
        int minimumHeight = view2.getMinimumHeight();
        if (minimumHeight == 0 && (viewFindViewById = view2.findViewById(R.id.coordinate_top_content)) != null) {
            minimumHeight = viewFindViewById.getMinimumHeight();
        }
        if (minimumHeight == 0 && (view2 instanceof NVAppBarLayout)) {
            int i10 = 0;
            while (true) {
                NVAppBarLayout nVAppBarLayout = (NVAppBarLayout) view2;
                if (i10 >= nVAppBarLayout.getChildCount()) {
                    break;
                }
                View childAt = nVAppBarLayout.getChildAt(i10);
                Object tag = childAt.getTag(R.id.coordinate_top_content);
                if ((tag instanceof Boolean) && ((Boolean) tag).booleanValue()) {
                    minimumHeight = childAt.getMinimumHeight();
                    break;
                }
                i10++;
            }
        }
        if (view2.getTop() < 0) {
            view.setAlpha(1.0f - (((view2.getHeight() + view2.getTop()) - minimumHeight) / ((view2.getHeight() - minimumHeight) * 1.0f)));
        } else {
            view.setAlpha(0.0f);
        }
        return super.onDependentViewChanged(coordinatorLayout, view, view2);
    }
}
