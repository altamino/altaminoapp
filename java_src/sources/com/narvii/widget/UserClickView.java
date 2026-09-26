package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes11.dex */
public class UserClickView extends View {
    private View avatar;
    private View nickname;
    private View parent;

    private void init() {
        if (this.parent == null && (getParent() instanceof ViewGroup)) {
            View view = (View) getParent();
            this.parent = view;
            this.avatar = view.findViewById(R.id.avatar);
            this.nickname = this.parent.findViewById(R.id.nickname);
        }
    }

    public UserClickView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int left;
        if (motionEvent.getAction() == 3) {
            setPressed(false);
        }
        init();
        View view = this.avatar;
        int top = Integer.MAX_VALUE;
        if (view != null) {
            left = view.getLeft() + this.avatar.getWidth();
        } else {
            left = Integer.MAX_VALUE;
        }
        int left2 = left - getLeft();
        View view2 = this.nickname;
        if (view2 != null) {
            top = view2.getTop() + this.nickname.getHeight();
        }
        int top2 = top - getTop();
        if (motionEvent.getX() > left2 && motionEvent.getY() > top2) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setPressed(boolean z6) {
        super.setPressed(z6);
        View view = this.avatar;
        if (view != null) {
            view.setPressed(z6);
        }
        View view2 = this.nickname;
        if (view2 != null) {
            view2.setPressed(z6);
        }
    }
}
