package com.narvii.util.image;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.BitmapDrawable;
import androidx.core.internal.view.SupportMenu;

/* JADX INFO: loaded from: classes10.dex */
public class NVDebugImageDrawable extends BitmapDrawable {
    private static final Paint DEBUG_PAINT = new Paint();
    public static final int TYPE_DISK = 2;
    public static final int TYPE_MEMORY = 1;
    public static final int TYPE_NET = 0;
    private int debugColor;
    private boolean debugging;
    private float density;

    private void drawDebugIndicator(Canvas canvas) {
        Paint paint = DEBUG_PAINT;
        paint.setColor(-1);
        canvas.drawPath(getTrianglePath(0, 0, (int) (this.density * 16.0f)), paint);
        paint.setColor(this.debugColor);
        canvas.drawPath(getTrianglePath(0, 0, (int) (this.density * 15.0f)), paint);
    }

    private static Path getTrianglePath(int i10, int i11, int i12) {
        Path path = new Path();
        float f = i10;
        float f6 = i11;
        path.moveTo(f, f6);
        path.lineTo(i10 + i12, f6);
        path.lineTo(f, i11 + i12);
        return path;
    }

    public NVDebugImageDrawable(Context context, Bitmap bitmap, int i10, boolean z6) {
        super(context.getResources(), bitmap);
        this.debugging = z6;
        this.density = context.getResources().getDisplayMetrics().density;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    this.debugColor = SupportMenu.CATEGORY_MASK;
                    return;
                }
                return;
            }
            this.debugColor = -16776961;
            return;
        }
        this.debugColor = -1;
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        super.draw(canvas);
        drawDebugIndicator(canvas);
    }
}
