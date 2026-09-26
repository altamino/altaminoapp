package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.core.view.ViewCompat;
import com.narvii.app.NVApplication;
import com.narvii.lib.R;
import com.narvii.model.Media;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.YoutubeUtils;
import com.narvii.util.image.NVImageLoader;
import com.narvii.wallet.MembershipService;

/* JADX INFO: loaded from: classes10.dex */
public class FullsizeImageView extends NVImageView {
    Paint debugPaint;
    public boolean forceUhq;
    public int hidingHeight;
    private final MembershipService membershipService;
    int originalHeight;
    Paint paint;
    public boolean preload;
    public boolean supportUhq;

    public FullsizeImageView(Context context) {
        this(context, null);
    }

    public FullsizeImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FullsizeImageView);
        this.preload = typedArrayObtainStyledAttributes.getBoolean(R.styleable.FullsizeImageView_preload, false);
        this.hidingHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.FullsizeImageView_hidingHeight, 0);
        this.supportUhq = typedArrayObtainStyledAttributes.getBoolean(R.styleable.FullsizeImageView_supportUhq, false);
        this.membershipService = (MembershipService) Utils.getNVContext(context).getService("membership");
        typedArrayObtainStyledAttributes.recycle();
        Paint paint = new Paint();
        this.paint = paint;
        paint.setDither(true);
    }

    @Override // com.narvii.widget.NVImageView
    public String getRequestUrl(Media media, boolean z6, int i10, int i11) {
        MembershipService membershipService;
        if (media == null) {
            return null;
        }
        String youtubeVideoIdFromUrl = YoutubeUtils.getYoutubeVideoIdFromUrl(media.url);
        if (youtubeVideoIdFromUrl != null) {
            return YoutubeUtils.getHQYoutubeImage(youtubeVideoIdFromUrl);
        }
        String str = media.coverImage;
        if (str == null) {
            str = media.url;
        }
        return (!this.supportUhq || (!this.forceUhq && ((membershipService = this.membershipService) == null || !membershipService.isMembership())) || !str.contains("v2_")) ? NVImageView.fitSize(str, this.imageType, 3840, 3840) : NVImageView.replaceUrl(str, "uhq");
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0035  */
    @Override // com.narvii.widget.NVImageView
    protected void setImageStatus(int i10, boolean z6) {
        boolean cachedBitmap;
        Media media;
        Drawable drawable = this.loadingDrawable;
        boolean z10 = this.scalePlaceholder;
        if (this.preload && (media = this.media) != null) {
            String str = media.coverImage;
            if (str == null) {
                str = media.url;
            }
            if (i10 != 1 || str == null || !str.contains("_00.")) {
                cachedBitmap = false;
            } else if (getImageLoader() instanceof NVImageLoader) {
                cachedBitmap = getCachedBitmap(str);
            } else {
                Log.w("no NVImageLoader available, prefetch doesn't work");
                cachedBitmap = false;
            }
        } else {
            cachedBitmap = false;
        }
        super.setImageStatus(i10, z6);
        if (cachedBitmap) {
            this.loadingDrawable = drawable;
            this.scalePlaceholder = z10;
        }
    }

    protected boolean getCachedBitmap(String str) {
        Bitmap cachedBitmap;
        NVImageLoader nVImageLoader = (NVImageLoader) getImageLoader();
        if (str.contains("v2_")) {
            cachedBitmap = nVImageLoader.getCachedBitmap(NVImageView.replaceUrl(str, "hq"));
        } else {
            cachedBitmap = null;
        }
        if (cachedBitmap != null) {
            this.loadingDrawable = new BitmapDrawable(getResources(), cachedBitmap);
            this.scalePlaceholder = true;
            Log.d("prefetch bitmap hq " + str);
            return true;
        }
        Bitmap cachedBitmap2 = nVImageLoader.getCachedBitmap(str);
        if (cachedBitmap2 != null) {
            this.loadingDrawable = new BitmapDrawable(getResources(), cachedBitmap2);
            this.scalePlaceholder = true;
            Log.d("prefetch bitmap 00 " + str);
            return true;
        }
        Bitmap cachedBitmap3 = nVImageLoader.getCachedBitmap(NVImageView.replaceUrl(str, "128"));
        if (cachedBitmap3 != null) {
            this.loadingDrawable = new BitmapDrawable(getResources(), cachedBitmap3);
            this.scalePlaceholder = false;
            Log.d("prefetch bitmap 128 " + str);
            return true;
        }
        Bitmap cachedBitmap4 = nVImageLoader.getCachedBitmap(NVImageView.replaceUrl(str, "68"));
        if (cachedBitmap4 == null) {
            return false;
        }
        this.loadingDrawable = new BitmapDrawable(getResources(), cachedBitmap4);
        this.scalePlaceholder = false;
        Log.d("prefetch bitmap 68 " + str);
        return true;
    }

    @Override // com.narvii.widget.NVImageView, android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        Bitmap bitmap;
        String str;
        float f;
        float f6;
        Drawable drawable = getDrawable();
        if (drawable instanceof BitmapDrawable) {
            bitmap = ((BitmapDrawable) drawable).getBitmap();
        } else {
            bitmap = null;
        }
        if (this.hidingHeight > 0 && this.originalHeight > 0 && bitmap != null) {
            int height = getHeight();
            int iMax = Math.max(height, this.originalHeight + this.hidingHeight);
            int width = getWidth();
            int width2 = bitmap.getWidth();
            int height2 = bitmap.getHeight();
            if (width2 * iMax > width * height2) {
                f = iMax;
                f6 = height2;
            } else {
                f = width;
                f6 = width2;
            }
            float f7 = f / f6;
            canvas.save();
            canvas.clipRect(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom());
            canvas.translate((int) (((width - (width2 * f7)) * 0.5f) + 0.5f), (int) (((height - (height2 * f7)) * 0.5f) + 0.5f));
            canvas.scale(f7, f7);
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, this.paint);
            canvas.restore();
        } else {
            super.onDraw(canvas);
        }
        if (NVApplication.DEBUG && bitmap != null && this.status == 4 && (str = this.requestUrl) != null && str.contains("v2_uhq.")) {
            if (this.debugPaint == null) {
                this.debugPaint = new Paint();
            }
            this.debugPaint.setColor(-1);
            this.debugPaint.setShadowLayer(3.0f, 0.0f, 0.0f, ViewCompat.MEASURED_STATE_MASK);
            this.debugPaint.setTextSize(20.0f);
            canvas.drawText("UHQ " + bitmap.getWidth() + "x" + bitmap.getHeight(), 0.0f, getHeight() - this.debugPaint.descent(), this.debugPaint);
        }
    }

    @Override // com.narvii.widget.NVImageView, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        if (this.originalHeight == 0) {
            this.originalHeight = i13 - i11;
        }
    }
}
