package com.narvii.livelayer.ws;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class ClipLayout extends FrameLayout {
    int avatarSize;
    boolean shouldClip;
    int vPadding;

    public ClipLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.vPadding = (int) Utils.dpToPx(getContext(), 40.0f);
    }

    public void setAvatarSize(int i) {
        if (this.avatarSize == i) {
            return;
        }
        this.avatarSize = i;
        invalidate();
    }

    public void setShouldClip(boolean z) {
        if (this.shouldClip == z) {
            return;
        }
        this.shouldClip = z;
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        canvas.save();
        if (this.shouldClip && this.avatarSize != 0) {
            if (Utils.isRtl()) {
                canvas.clipRect(0, -this.vPadding, (getWidth() - getPaddingRight()) - (this.avatarSize / 2), getHeight() + this.vPadding);
            } else {
                canvas.clipRect(getPaddingLeft() + (this.avatarSize / 2), -this.vPadding, getWidth(), getHeight() + this.vPadding);
            }
        }
        super.dispatchDraw(canvas);
        canvas.restore();
    }
}
