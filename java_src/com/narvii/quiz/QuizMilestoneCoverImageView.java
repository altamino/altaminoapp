package com.narvii.quiz;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import com.narvii.util.drawables.gif.NVGifDrawable;
import com.narvii.util.drawables.gif.WrapGifDrawable;
import com.narvii.widget.ThumbImageView;

/* loaded from: classes3.dex */
public class QuizMilestoneCoverImageView extends ThumbImageView {
    public static final int OVERLAY_HEIGHT_RATIO = 10;
    private Paint bitmapPaint;
    private BitmapShader bitmapShader;
    private final Path imagePath;
    private Paint overlayPaint;
    private final Path overlayPath;

    public QuizMilestoneCoverImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.bitmapPaint = new Paint(1);
        this.overlayPaint = new Paint(1);
        this.imagePath = new Path();
        this.overlayPath = new Path();
    }

    @Override // com.narvii.widget.ThumbImageView, com.narvii.widget.NVImageView, android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        Bitmap bitmapDraw;
        if (getDrawable() instanceof BitmapDrawable) {
            bitmapDraw = ((BitmapDrawable) getDrawable()).getBitmap();
        } else {
            bitmapDraw = ((getDrawable() instanceof WrapGifDrawable) && (((WrapGifDrawable) getDrawable()).getWrappedDrawable() instanceof NVGifDrawable)) ? ((WrapGifDrawable) getDrawable()).getWrappedDrawable().draw() : null;
        }
        this.imagePath.reset();
        this.imagePath.moveTo(0.0f, 0.0f);
        this.imagePath.lineTo(getWidth(), 0.0f);
        this.imagePath.lineTo(getWidth(), getHeight() * 0.9f);
        this.imagePath.lineTo(getWidth() / 2.0f, getHeight() * 0.95f);
        this.imagePath.lineTo(0.0f, getHeight() * 0.9f);
        this.imagePath.lineTo(0.0f, 0.0f);
        if (bitmapDraw != null) {
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            this.bitmapShader = new BitmapShader(bitmapDraw, tileMode, tileMode);
            this.bitmapShader.setLocalMatrix(getImageMatrix());
            this.bitmapPaint.setShader(this.bitmapShader);
            canvas.drawPath(this.imagePath, this.bitmapPaint);
            drawOverlay(canvas);
            return;
        }
        this.overlayPaint.setColor(-1744830464);
        canvas.drawPath(this.imagePath, this.overlayPaint);
        drawOverlay(canvas);
    }

    private void drawOverlay(Canvas canvas) {
        this.overlayPaint.setColor(1258291200);
        this.overlayPath.reset();
        this.overlayPath.moveTo(0.0f, getHeight() * 0.9f);
        this.overlayPath.lineTo(getWidth() / 2.0f, getHeight() * 0.95f);
        this.overlayPath.lineTo(0.0f, getHeight());
        this.overlayPath.close();
        canvas.drawPath(this.overlayPath, this.overlayPaint);
    }
}
