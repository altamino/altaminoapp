package com.narvii.livelayer.ws;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes9.dex */
public class ClipLayout extends FrameLayout {
    int avatarSize;
    boolean shouldClip;
    int vPadding;

    public void setAvatarSize(int i10) {
        if (this.avatarSize == i10) {
            return;
        }
        this.avatarSize = i10;
        invalidate();
    }

    public void setShouldClip(boolean z6) {
        if (this.shouldClip == z6) {
            return;
        }
        this.shouldClip = z6;
        invalidate();
    }

    public ClipLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.vPadding = (int) Utils.dpToPx(getContext(), 40.0f);
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
