package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import com.narvii.app.NVApplication;
import com.narvii.lib.R;
import com.narvii.model.Media;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.YoutubeUtils;
import com.narvii.util.image.NVImageLoader;
import com.narvii.wallet.MembershipService;

/* loaded from: classes3.dex */
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
        this.paint = new Paint();
        this.paint.setDither(true);
    }

    @Override // com.narvii.widget.NVImageView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.originalHeight == 0) {
            this.originalHeight = i4 - i2;
        }
    }

    @Override // com.narvii.widget.NVImageView, android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        String str;
        float f;
        float f2;
        Drawable drawable = getDrawable();
        Bitmap bitmap = drawable instanceof BitmapDrawable ? ((BitmapDrawable) drawable).getBitmap() : null;
        if (this.hidingHeight > 0 && this.originalHeight > 0 && bitmap != null) {
            int iMax = Math.max(getHeight(), this.originalHeight + this.hidingHeight);
            int width = getWidth();
            int width2 = bitmap.getWidth();
            int height = bitmap.getHeight();
            if (width2 * iMax > width * height) {
                f = iMax;
                f2 = height;
            } else {
                f = width;
                f2 = width2;
            }
            float f3 = f / f2;
            canvas.save();
            canvas.clipRect(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom());
            canvas.translate((int) (((width - (width2 * f3)) * 0.5f) + 0.5f), (int) (((r1 - (height * f3)) * 0.5f) + 0.5f));
            canvas.scale(f3, f3);
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

    protected boolean getCachedBitmap(String str) {
        NVImageLoader nVImageLoader = (NVImageLoader) getImageLoader();
        Bitmap cachedBitmap = str.contains("v2_") ? nVImageLoader.getCachedBitmap(NVImageView.replaceUrl(str, "hq")) : null;
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

    /* JADX WARN: Removed duplicated region for block: B:21:0x0035  */
    @Override // com.narvii.widget.NVImageView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void setImageStatus(int r5, boolean r6) {
        /*
            r4 = this;
            android.graphics.drawable.Drawable r0 = r4.loadingDrawable
            boolean r1 = r4.scalePlaceholder
            boolean r2 = r4.preload
            if (r2 != 0) goto L9
            goto L35
        L9:
            com.narvii.model.Media r2 = r4.media
            if (r2 != 0) goto Le
            goto L35
        Le:
            java.lang.String r3 = r2.coverImage
            if (r3 != 0) goto L14
            java.lang.String r3 = r2.url
        L14:
            r2 = 1
            if (r5 != r2) goto L35
            if (r3 == 0) goto L35
            java.lang.String r2 = "_00."
            boolean r2 = r3.contains(r2)
            if (r2 != 0) goto L22
            goto L35
        L22:
            com.android.volley.toolbox.ImageLoader r2 = r4.getImageLoader()
            boolean r2 = r2 instanceof com.narvii.util.image.NVImageLoader
            if (r2 != 0) goto L30
            java.lang.String r2 = "no NVImageLoader available, prefetch doesn't work"
            com.narvii.util.Log.w(r2)
            goto L35
        L30:
            boolean r2 = r4.getCachedBitmap(r3)
            goto L36
        L35:
            r2 = 0
        L36:
            super.setImageStatus(r5, r6)
            if (r2 == 0) goto L3f
            r4.loadingDrawable = r0
            r4.scalePlaceholder = r1
        L3f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.widget.FullsizeImageView.setImageStatus(int, boolean):void");
    }

    @Override // com.narvii.widget.NVImageView
    public String getRequestUrl(Media media, boolean z, int i, int i2) {
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
        if (this.supportUhq && ((this.forceUhq || ((membershipService = this.membershipService) != null && membershipService.isMembership())) && str.contains("v2_"))) {
            return NVImageView.replaceUrl(str, "uhq");
        }
        return NVImageView.fitSize(str, this.imageType, 3840, 3840);
    }
}
