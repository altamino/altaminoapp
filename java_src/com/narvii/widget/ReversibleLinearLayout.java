package com.narvii.widget;

import android.content.Context;
import android.support.v4.view.GravityCompat;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class ReversibleLinearLayout extends LinearLayout {
    private static final ArrayList<View> reverseList = new ArrayList<>();
    private boolean reverse;

    public ReversibleLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public boolean getReverse() {
        return this.reverse;
    }

    public void setReverse(boolean z) {
        if (this.reverse == z) {
            return;
        }
        this.reverse = z;
        reverseList.clear();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            reverseList.add(getChildAt(i));
        }
        removeAllViews();
        for (int size = reverseList.size() - 1; size >= 0; size--) {
            addView(reverseList.get(size));
        }
        reverseList.clear();
        if (z) {
            setHorizontalGravity(GravityCompat.END);
        } else {
            setHorizontalGravity(GravityCompat.START);
        }
    }
}
