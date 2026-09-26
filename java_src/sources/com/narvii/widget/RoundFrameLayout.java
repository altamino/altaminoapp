package com.narvii.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes11.dex */
public class RoundFrameLayout extends FrameLayout {
    int cornerRadius;
    private float[] cornerRadiusArray;
    boolean shouldClip;

    public void setCornerRadius(int i10) {
        this.cornerRadius = i10;
        invalidate();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (!this.shouldClip || this.cornerRadius == 0) {
            super.draw(canvas);
            return;
        }
        canvas.save();
        try {
            try {
                Path path = new Path();
                if (this.cornerRadiusArray != null) {
                    path.addRoundRect(new RectF(0.0f, 0.0f, getWidth(), getHeight()), this.cornerRadiusArray, Path.Direction.CW);
                } else {
                    RectF rectF = new RectF(0.0f, 0.0f, getWidth(), getHeight());
                    int i10 = this.cornerRadius;
                    path.addRoundRect(rectF, i10, i10, Path.Direction.CW);
                }
                canvas.clipPath(path);
                super.draw(canvas);
            } catch (Exception unused) {
                super.draw(canvas);
            }
        } finally {
            canvas.restore();
        }
    }

    public void setCornerRadius(float[] fArr) {
        this.cornerRadiusArray = fArr;
        invalidate();
    }

    public void setShouldClip(boolean z6) {
        this.shouldClip = z6;
        invalidate();
    }

    public RoundFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.shouldClip = true;
        this.cornerRadiusArray = null;
        this.cornerRadius = Utils.dpToPxInt(getContext(), 4.0f);
        setWillNotDraw(false);
    }
}
