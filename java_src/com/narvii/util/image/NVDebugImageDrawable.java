package com.narvii.util.image;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.BitmapDrawable;
import android.support.v4.internal.view.SupportMenu;

/* loaded from: classes3.dex */
public class NVDebugImageDrawable extends BitmapDrawable {
    private static final Paint DEBUG_PAINT = new Paint();
    public static final int TYPE_DISK = 2;
    public static final int TYPE_MEMORY = 1;
    public static final int TYPE_NET = 0;
    private int debugColor;
    private boolean debugging;
    private float density;

    public NVDebugImageDrawable(Context context, Bitmap bitmap, int i, boolean z) {
        super(context.getResources(), bitmap);
        this.debugging = true;
        this.debugging = z;
        this.density = context.getResources().getDisplayMetrics().density;
        if (i == 0) {
            this.debugColor = -1;
        } else if (i == 1) {
            this.debugColor = -16776961;
        } else {
            if (i != 2) {
                return;
            }
            this.debugColor = SupportMenu.CATEGORY_MASK;
        }
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        super.draw(canvas);
        drawDebugIndicator(canvas);
    }

    private void drawDebugIndicator(Canvas canvas) {
        DEBUG_PAINT.setColor(-1);
        canvas.drawPath(getTrianglePath(0, 0, (int) (this.density * 16.0f)), DEBUG_PAINT);
        DEBUG_PAINT.setColor(this.debugColor);
        canvas.drawPath(getTrianglePath(0, 0, (int) (this.density * 15.0f)), DEBUG_PAINT);
    }

    private static Path getTrianglePath(int i, int i2, int i3) {
        Path path = new Path();
        float f = i;
        float f2 = i2;
        path.moveTo(f, f2);
        path.lineTo(i + i3, f2);
        path.lineTo(f, i2 + i3);
        return path;
    }
}
