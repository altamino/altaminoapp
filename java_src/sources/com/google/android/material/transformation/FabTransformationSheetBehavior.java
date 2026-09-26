package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import e3.h;
import e3.j;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
@Deprecated
public class FabTransformationSheetBehavior extends FabTransformationBehavior {

    @Nullable
    private Map<View, Integer> importantForAccessibilityMap;

    public FabTransformationSheetBehavior() {
    }

    public FabTransformationSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.google.android.material.transformation.FabTransformationBehavior
    @NonNull
    protected FabTransformationBehavior.e A(Context context, boolean z6) {
        int i10 = z6 ? d3.a.mtrl_fab_transformation_sheet_expand_spec : d3.a.mtrl_fab_transformation_sheet_collapse_spec;
        FabTransformationBehavior.e eVar = new FabTransformationBehavior.e();
        eVar.timings = h.d(context, i10);
        eVar.positioning = new j(17, 0.0f, 0.0f);
        return eVar;
    }

    private void C(@NonNull View view, boolean z6) {
        boolean z10;
        ViewParent parent = view.getParent();
        if (!(parent instanceof CoordinatorLayout)) {
            return;
        }
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
        int childCount = coordinatorLayout.getChildCount();
        if (z6) {
            this.importantForAccessibilityMap = new HashMap(childCount);
        }
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = coordinatorLayout.getChildAt(i10);
            if ((childAt.getLayoutParams() instanceof CoordinatorLayout.LayoutParams) && (((CoordinatorLayout.LayoutParams) childAt.getLayoutParams()).f() instanceof FabTransformationScrimBehavior)) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (childAt != view && !z10) {
                if (!z6) {
                    Map<View, Integer> map = this.importantForAccessibilityMap;
                    if (map != null && map.containsKey(childAt)) {
                        ViewCompat.F0(childAt, this.importantForAccessibilityMap.get(childAt).intValue());
                    }
                } else {
                    this.importantForAccessibilityMap.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                    ViewCompat.F0(childAt, 4);
                }
            }
        }
        if (!z6) {
            this.importantForAccessibilityMap = null;
        }
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior, com.google.android.material.transformation.ExpandableBehavior
    @CallSuper
    protected boolean d(@NonNull View view, @NonNull View view2, boolean z6, boolean z10) {
        C(view2, z6);
        return super.d(view, view2, z6, z10);
    }
}
