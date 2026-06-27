package com.narvii.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class RoundFrameLayout extends FrameLayout {
    int cornerRadius;
    private float[] cornerRadiusArray;
    boolean shouldClip;

    public RoundFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.shouldClip = true;
        this.cornerRadiusArray = null;
        this.cornerRadius = Utils.dpToPxInt(getContext(), 4.0f);
        setWillNotDraw(false);
        if (Build.VERSION.SDK_INT < 18) {
            setLayerType(1, null);
        }
    }

    public void setCornerRadius(int i) {
        this.cornerRadius = i;
        invalidate();
    }

    public void setShouldClip(boolean z) {
        this.shouldClip = z;
        invalidate();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (this.shouldClip && this.cornerRadius != 0) {
            canvas.save();
            try {
                try {
                    Path path = new Path();
                    if (this.cornerRadiusArray != null) {
                        path.addRoundRect(new RectF(0.0f, 0.0f, getWidth(), getHeight()), this.cornerRadiusArray, Path.Direction.CW);
                    } else {
                        path.addRoundRect(new RectF(0.0f, 0.0f, getWidth(), getHeight()), this.cornerRadius, this.cornerRadius, Path.Direction.CW);
                    }
                    canvas.clipPath(path);
                    super.draw(canvas);
                } catch (Exception unused) {
                    super.draw(canvas);
                }
                return;
            } finally {
                canvas.restore();
            }
        }
        super.draw(canvas);
    }

    public void setCornerRadius(float[] fArr) {
        this.cornerRadiusArray = fArr;
        invalidate();
    }
}
