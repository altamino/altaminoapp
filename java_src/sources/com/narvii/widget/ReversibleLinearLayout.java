package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.core.view.GravityCompat;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public class ReversibleLinearLayout extends LinearLayout {
    private static final ArrayList<View> reverseList = new ArrayList<>();
    private boolean reverse;

    public boolean getReverse() {
        return this.reverse;
    }

    public void setReverse(boolean z6) {
        if (this.reverse == z6) {
            return;
        }
        this.reverse = z6;
        reverseList.clear();
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            reverseList.add(getChildAt(i10));
        }
        removeAllViews();
        for (int size = reverseList.size() - 1; size >= 0; size--) {
            addView(reverseList.get(size));
        }
        reverseList.clear();
        if (z6) {
            setHorizontalGravity(GravityCompat.END);
        } else {
            setHorizontalGravity(GravityCompat.START);
        }
    }

    public ReversibleLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
