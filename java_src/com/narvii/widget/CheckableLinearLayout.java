package com.narvii.widget;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.Checkable;
import android.widget.LinearLayout;

/* loaded from: classes3.dex */
public class CheckableLinearLayout extends LinearLayout implements Checkable {
    private static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    private boolean mChecked;

    public CheckableLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mChecked = false;
    }

    public CheckableLinearLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mChecked = false;
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.mChecked;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (z != this.mChecked) {
            this.mChecked = z;
            refreshDrawableState();
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.mChecked);
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            LinearLayout.mergeDrawableStates(iArrOnCreateDrawableState, CHECKED_STATE_SET);
        }
        return iArrOnCreateDrawableState;
    }
}
