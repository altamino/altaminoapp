package com.narvii.livelayer;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.util.AttributeSet;
import com.github.mmin18.widget.RealtimeBlurLayout;

/* loaded from: classes3.dex */
public class BackgroundBlurWithTopRadiusLayout extends RealtimeBlurLayout {
    private static final int UNSPECIFIC_TARGET_HEIGHT = -1;
    private int lb;
    private int lt;
    private int rb;
    private int rt;
    private int targetHeight;

    public BackgroundBlurWithTopRadiusLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.targetHeight = -1;
    }

    public void setRadius(int i, int i2, int i3, int i4) {
        this.lt = i;
        this.rt = i2;
        this.lb = i3;
        this.rb = i4;
    }

    public void setTargetHeight(int i) {
        this.targetHeight = i;
    }

    @Override // com.github.mmin18.widget.RealtimeBlurLayout
    protected void drawBlurredBitmap(Canvas canvas, Bitmap bitmap, int i) {
        boolean z = Build.VERSION.SDK_INT >= 18;
        int iSave = canvas.save();
        if (z) {
            Path path = new Path();
            RectF rectF = new RectF(0.0f, this.targetHeight == -1 ? 0.0f : getHeight() - this.targetHeight, getWidth(), getHeight());
            int i2 = this.lt;
            int i3 = this.rt;
            int i4 = this.rb;
            int i5 = this.lb;
            path.addRoundRect(rectF, new float[]{i2, i2, i3, i3, i4, i4, i5, i5}, Path.Direction.CW);
            canvas.clipPath(path);
        } else {
            canvas.clipRect(new RectF(0.0f, this.targetHeight == -1 ? 0.0f : getHeight() - this.targetHeight, getWidth(), getHeight()));
        }
        super.drawBlurredBitmap(canvas, bitmap, i);
        if (iSave != 0) {
            canvas.restoreToCount(iSave);
        }
    }
}
