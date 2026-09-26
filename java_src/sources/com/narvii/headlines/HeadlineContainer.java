package com.narvii.headlines;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class HeadlineContainer extends FrameLayout {
    private int clipOffset;

    public HeadlineContainer(@NonNull Context context) {
        this(context, null);
    }

    public int getClipOffset() {
        return this.clipOffset;
    }

    public HeadlineContainer(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setClipOffset(int i10) {
        this.clipOffset = i10;
        invalidate();
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j6) {
        canvas.save();
        canvas.clipRect(0, this.clipOffset, getWidth(), getHeight());
        boolean zDrawChild = super.drawChild(canvas, view, j6);
        canvas.restore();
        return zDrawChild;
    }
}
