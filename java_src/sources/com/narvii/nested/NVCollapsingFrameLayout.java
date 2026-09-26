package com.narvii.nested;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.google.android.material.appbar.AppBarLayout;
import com.narvii.lib.R;
import com.narvii.nested.utils.ViewOffsetHelper;

/* JADX INFO: loaded from: classes8.dex */
public class NVCollapsingFrameLayout extends FrameLayout {
    private AppBarLayout.h mOnOffsetChangedListener;

    private class OffsetUpdateListener implements AppBarLayout.h {
        OffsetUpdateListener() {
        }

        @Override // com.google.android.material.appbar.AppBarLayout.c
        public void onOffsetChanged(AppBarLayout appBarLayout, int i10) {
            int childCount = NVCollapsingFrameLayout.this.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                NVCollapsingFrameLayout.getViewOffsetHelper(NVCollapsingFrameLayout.this.getChildAt(i11)).setTopAndBottomOffset(Math.round(-i10));
            }
        }
    }

    public NVCollapsingFrameLayout(@NonNull Context context) {
        super(context);
    }

    public NVCollapsingFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    static ViewOffsetHelper getViewOffsetHelper(View view) {
        int i10 = R.id.view_offset_helper;
        ViewOffsetHelper viewOffsetHelper = (ViewOffsetHelper) view.getTag(i10);
        if (viewOffsetHelper != null) {
            return viewOffsetHelper;
        }
        ViewOffsetHelper viewOffsetHelper2 = new ViewOffsetHelper(view);
        view.setTag(i10, viewOffsetHelper2);
        return viewOffsetHelper2;
    }

    public NVCollapsingFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Object parent = getParent();
        if (parent instanceof AppBarLayout) {
            setFitsSystemWindows(ViewCompat.A((View) parent));
            if (this.mOnOffsetChangedListener == null) {
                this.mOnOffsetChangedListener = new OffsetUpdateListener();
            }
            ((AppBarLayout) parent).d(this.mOnOffsetChangedListener);
            ViewCompat.q0(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        ViewParent parent = getParent();
        AppBarLayout.h hVar = this.mOnOffsetChangedListener;
        if (hVar != null && (parent instanceof AppBarLayout)) {
            ((AppBarLayout) parent).r(hVar);
        }
        super.onDetachedFromWindow();
    }
}
