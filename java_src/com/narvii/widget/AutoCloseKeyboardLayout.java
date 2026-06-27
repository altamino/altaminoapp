package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import com.narvii.app.NVActivity;
import com.narvii.lib.R;
import com.narvii.util.SoftKeyboard;

/* loaded from: classes3.dex */
public class AutoCloseKeyboardLayout extends LinearLayout {
    public AutoCloseKeyboardLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        View viewFindViewById;
        if (motionEvent.getAction() == 0 && (getContext() instanceof NVActivity) && (viewFindViewById = findViewById(R.id.search)) != null) {
            int[] iArr = new int[2];
            viewFindViewById.getLocationInWindow(iArr);
            int height = iArr[1] + viewFindViewById.getHeight();
            getLocationInWindow(iArr);
            if (motionEvent.getY() > height - iArr[1]) {
                SoftKeyboard.hideSoftKeyboard(getContext());
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }
}
