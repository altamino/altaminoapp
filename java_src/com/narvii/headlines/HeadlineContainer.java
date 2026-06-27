package com.narvii.headlines;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

/* loaded from: classes2.dex */
public class HeadlineContainer extends FrameLayout {
    private int clipOffset;

    public HeadlineContainer(Context context) {
        this(context, null);
    }

    public HeadlineContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setClipOffset(int i) {
        this.clipOffset = i;
        invalidate();
    }

    public int getClipOffset() {
        return this.clipOffset;
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        canvas.save();
        canvas.clipRect(0, this.clipOffset, getWidth(), getHeight());
        boolean zDrawChild = super.drawChild(canvas, view, j);
        canvas.restore();
        return zDrawChild;
    }
}
