package com.narvii.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.narvii.amino.mastes.R;
import com.narvii.monetization.sticker.widget.StickerImageView;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class StickerBubbleView extends StickerImageView {
    Bitmap bitmap;
    Rect dst;
    Paint paint;
    PorterDuffXfermode porterDuffXfermode;
    Rect src;

    public StickerBubbleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.paint = new Paint();
        this.porterDuffXfermode = new PorterDuffXfermode(PorterDuff.Mode.DST_ATOP);
        this.bitmap = ((BitmapDrawable) ContextCompat.getDrawable(getContext(), R.drawable.mood_dot3_fill)).getBitmap();
        this.src = new Rect();
        Rect rect = this.src;
        rect.left = 0;
        rect.top = 0;
        rect.right = this.bitmap.getWidth();
        this.src.bottom = this.bitmap.getHeight();
        this.dst = new Rect();
        int iDpToPx = (int) Utils.dpToPx(getContext(), 3.0f);
        setPadding(iDpToPx, iDpToPx, (int) Utils.dpToPx(getContext(), 4.0f), (int) Utils.dpToPx(getContext(), 5.0f));
        setScaleType(ImageView.ScaleType.CENTER_CROP);
    }

    @Override // com.narvii.widget.NVImageView, android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        int iSaveLayer = canvas.saveLayer(null, null, 31);
        super.onDraw(canvas);
        this.paint.setXfermode(this.porterDuffXfermode);
        int width = getWidth();
        int height = getHeight();
        Rect rect = this.dst;
        rect.left = 0;
        rect.top = 0;
        rect.right = width;
        rect.bottom = height;
        Bitmap bitmap = this.bitmap;
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, this.src, rect, this.paint);
        }
        this.paint.setXfermode(null);
        canvas.restoreToCount(iSaveLayer);
    }
}
