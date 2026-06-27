package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.RectF;

/* loaded from: classes.dex */
public interface DrawingContent extends Content {
    void addColorFilter(String str, String str2, ColorFilter colorFilter);

    void draw(Canvas canvas, Matrix matrix, int i);

    void getBounds(RectF rectF, Matrix matrix);
}
