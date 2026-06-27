package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;

/* loaded from: classes3.dex */
public class UserClickView extends View {
    private View avatar;
    private View nickname;
    private View parent;

    public UserClickView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        super.setPressed(z);
        View view = this.avatar;
        if (view != null) {
            view.setPressed(z);
        }
        View view2 = this.nickname;
        if (view2 != null) {
            view2.setPressed(z);
        }
    }

    private void init() {
        if (this.parent == null && (getParent() instanceof ViewGroup)) {
            this.parent = (View) getParent();
            this.avatar = this.parent.findViewById(R.id.avatar);
            this.nickname = this.parent.findViewById(R.id.nickname);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 3) {
            setPressed(false);
        }
        init();
        View view = this.avatar;
        int left = (view != null ? view.getLeft() + this.avatar.getWidth() : Integer.MAX_VALUE) - getLeft();
        View view2 = this.nickname;
        int top = (view2 != null ? view2.getTop() + this.nickname.getHeight() : Integer.MAX_VALUE) - getTop();
        if (motionEvent.getX() <= left || motionEvent.getY() <= top) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }
}
