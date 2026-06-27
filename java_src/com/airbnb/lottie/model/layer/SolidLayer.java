package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import com.airbnb.lottie.LottieDrawable;

/* loaded from: classes.dex */
public class SolidLayer extends BaseLayer {
    private final Layer layerModel;
    private final Paint paint;
    private final RectF rect;

    SolidLayer(LottieDrawable lottieDrawable, Layer layer) {
        super(lottieDrawable, layer);
        this.rect = new RectF();
        this.paint = new Paint();
        this.layerModel = layer;
        this.paint.setAlpha(0);
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setColor(layer.getSolidColor());
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    public void drawLayer(Canvas canvas, Matrix matrix, int i) {
        int iAlpha = Color.alpha(this.layerModel.getSolidColor());
        if (iAlpha == 0) {
            return;
        }
        int iIntValue = (int) ((i / 255.0f) * (((iAlpha / 255.0f) * this.transform.getOpacity().getValue().intValue()) / 100.0f) * 255.0f);
        this.paint.setAlpha(iIntValue);
        if (iIntValue > 0) {
            updateRect(matrix);
            canvas.drawRect(this.rect, this.paint);
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.animation.content.DrawingContent
    public void getBounds(RectF rectF, Matrix matrix) {
        super.getBounds(rectF, matrix);
        updateRect(this.boundsMatrix);
        rectF.set(this.rect);
    }

    private void updateRect(Matrix matrix) {
        this.rect.set(0.0f, 0.0f, this.layerModel.getSolidWidth(), this.layerModel.getSolidHeight());
        matrix.mapRect(this.rect);
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.animation.content.DrawingContent
    public void addColorFilter(String str, String str2, ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
    }
}
