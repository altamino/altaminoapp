package com.narvii.nested.behavior;

import android.content.Context;
import android.support.design.widget.CoordinatorLayout;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.nested.NVAppBarLayout;
import com.narvii.util.Log;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DynamicHeightSpringBehavior.kt */
/* loaded from: classes3.dex */
public class DynamicHeightSpringBehavior extends SpringBehavior {
    public static final Companion Companion = new Companion(null);
    public static final String TAG = "DynamicHeightSpringBehavior";
    private int oldDynamicChildHeight;

    public int dynamicChildId() {
        return 0;
    }

    public final int getOldDynamicChildHeight() {
        return this.oldDynamicChildHeight;
    }

    public final void setOldDynamicChildHeight(int i) {
        this.oldDynamicChildHeight = i;
    }

    /* compiled from: DynamicHeightSpringBehavior.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public DynamicHeightSpringBehavior() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DynamicHeightSpringBehavior(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attrs, "attrs");
    }

    @Override // com.narvii.nested.behavior.SpringBehavior, com.narvii.nested.NVAppBarLayout.Behavior, android.support.design.widget.CoordinatorLayout.Behavior
    public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout, int i, int i2, int i3, int i4) {
        boolean zOnMeasureChild = super.onMeasureChild(coordinatorLayout, nVAppBarLayout, i, i2, i3, i4);
        correctedHeight(nVAppBarLayout);
        return zOnMeasureChild;
    }

    public final void correctedHeight(NVAppBarLayout nVAppBarLayout) {
        View viewFindViewById;
        int measuredHeight;
        if (this.mPreHeadHeight == 0 || nVAppBarLayout == null || nVAppBarLayout.getHeight() < this.mPreHeadHeight || this.mOffsetSpring < 0 || dynamicChildId() == 0 || (viewFindViewById = nVAppBarLayout.findViewById(dynamicChildId())) == null) {
            return;
        }
        if (viewFindViewById.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
            if (layoutParams == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            measuredHeight = viewFindViewById.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
        } else {
            measuredHeight = viewFindViewById.getMeasuredHeight();
        }
        int i = this.oldDynamicChildHeight;
        if (i != 0 && i != measuredHeight) {
            int i2 = this.mPreHeadHeight;
            this.mPreHeadHeight = (measuredHeight - i) + i2;
            Log.i(TAG, "correctPreHeadHeight :  " + i2 + "  >>>  " + this.mPreHeadHeight);
        }
        this.oldDynamicChildHeight = measuredHeight;
    }
}
