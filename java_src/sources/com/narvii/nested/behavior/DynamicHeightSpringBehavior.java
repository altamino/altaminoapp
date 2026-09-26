package com.narvii.nested.behavior;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.narvii.nested.NVAppBarLayout;
import com.narvii.util.Log;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public class DynamicHeightSpringBehavior extends SpringBehavior {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String TAG = "DynamicHeightSpringBehavior";
    private int oldDynamicChildHeight;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public DynamicHeightSpringBehavior() {
    }

    public int dynamicChildId() {
        return 0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DynamicHeightSpringBehavior(@NotNull Context context, @NotNull AttributeSet attrs) {
        super(context, attrs);
        t.j(context, "context");
        t.j(attrs, "attrs");
    }

    private final void correctedHeight(NVAppBarLayout nVAppBarLayout) {
        View viewFindViewById;
        int measuredHeight;
        if (this.mPreHeadHeight == 0 || nVAppBarLayout == null || nVAppBarLayout.getHeight() < this.mPreHeadHeight || this.mOffsetSpring < 0 || dynamicChildId() == 0 || (viewFindViewById = nVAppBarLayout.findViewById(dynamicChildId())) == null) {
            return;
        }
        if (viewFindViewById.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
            t.h(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            measuredHeight = viewFindViewById.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
        } else {
            measuredHeight = viewFindViewById.getMeasuredHeight();
        }
        int i10 = this.oldDynamicChildHeight;
        if (i10 != 0 && i10 != measuredHeight) {
            int i11 = this.mPreHeadHeight;
            this.mPreHeadHeight = (measuredHeight - i10) + i11;
            Log.i(TAG, "correctPreHeadHeight :  " + i11 + "  >>>  " + this.mPreHeadHeight);
        }
        this.oldDynamicChildHeight = measuredHeight;
    }

    @Override // com.narvii.nested.behavior.SpringBehavior, com.narvii.nested.NVAppBarLayout.Behavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onMeasureChild(@NotNull CoordinatorLayout parent, @NotNull NVAppBarLayout child, int i10, int i11, int i12, int i13) {
        t.j(parent, "parent");
        t.j(child, "child");
        boolean zOnMeasureChild = super.onMeasureChild(parent, child, i10, i11, i12, i13);
        correctedHeight(child);
        return zOnMeasureChild;
    }
}
