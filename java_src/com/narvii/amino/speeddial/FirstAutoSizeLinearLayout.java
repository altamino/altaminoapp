package com.narvii.amino.speeddial;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.narvii.widget.AutoSizingTextView;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FirstAutoSizeLinearLayout.kt */
/* loaded from: classes2.dex */
public final class FirstAutoSizeLinearLayout extends LinearLayout {
    private HashMap _$_findViewCache;

    public FirstAutoSizeLinearLayout(Context context) {
        this(context, null, 0, 6, null);
    }

    public FirstAutoSizeLinearLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirstAutoSizeLinearLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
    }

    public /* synthetic */ FirstAutoSizeLinearLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (getOrientation() == 0) {
            int measuredWidth = getMeasuredWidth();
            if (getChildCount() > 1) {
                int childCount = getChildCount();
                for (int i3 = 1; i3 < childCount; i3++) {
                    View c = getChildAt(i3);
                    Intrinsics.checkExpressionValueIsNotNull(c, "c");
                    ViewGroup.LayoutParams layoutParams = c.getLayoutParams();
                    if (layoutParams == null) {
                        throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                    }
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    measuredWidth -= (c.getMeasuredWidth() + marginLayoutParams.leftMargin) + marginLayoutParams.rightMargin;
                }
            }
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                if (!(childAt instanceof AutoSizingTextView) || measuredWidth == 0) {
                    return;
                }
                ((AutoSizingTextView) childAt).setMaxWidth(measuredWidth);
                super.onMeasure(i, i2);
            }
        }
    }
}
