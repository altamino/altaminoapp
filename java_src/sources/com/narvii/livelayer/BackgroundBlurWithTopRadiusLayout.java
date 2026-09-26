package com.narvii.livelayer;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.github.mmin18.widget.RealtimeBlurLayout;

/* JADX INFO: loaded from: classes8.dex */
public class BackgroundBlurWithTopRadiusLayout extends RealtimeBlurLayout {
    private static final int UNSPECIFIC_TARGET_HEIGHT = -1;
    private int lb;
    private int lt;
    private int rb;
    private int rt;
    private int targetHeight;

    public void setRadius(int i10, int i11, int i12, int i13) {
        this.lt = i10;
        this.rt = i11;
        this.lb = i12;
        this.rb = i13;
    }

    public void setTargetHeight(int i10) {
        this.targetHeight = i10;
    }

    public BackgroundBlurWithTopRadiusLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.targetHeight = -1;
    }

    @Override // com.github.mmin18.widget.RealtimeBlurLayout
    protected void drawBlurredBitmap(Canvas canvas, Bitmap bitmap, int i10) {
        float height;
        int iSave = canvas.save();
        Path path = new Path();
        if (this.targetHeight == -1) {
            height = 0.0f;
        } else {
            height = getHeight() - this.targetHeight;
        }
        RectF rectF = new RectF(0.0f, height, getWidth(), getHeight());
        int i11 = this.lt;
        int i12 = this.rt;
        int i13 = this.rb;
        int i14 = this.lb;
        path.addRoundRect(rectF, new float[]{i11, i11, i12, i12, i13, i13, i14, i14}, Path.Direction.CW);
        canvas.clipPath(path);
        super.drawBlurredBitmap(canvas, bitmap, i10);
        if (iSave != 0) {
            canvas.restoreToCount(iSave);
        }
    }
}
