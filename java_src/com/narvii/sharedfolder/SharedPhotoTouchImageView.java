package com.narvii.sharedfolder;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import com.narvii.util.Log;
import com.narvii.util.image.NVImageLoader;
import com.narvii.widget.NVImageView;
import com.narvii.widget.TouchImageView;

/* loaded from: classes3.dex */
public class SharedPhotoTouchImageView extends TouchImageView {
    public SharedPhotoTouchImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.scalePlaceholder = true;
    }

    @Override // com.narvii.widget.FullsizeImageView
    protected boolean getCachedBitmap(String str) {
        NVImageLoader nVImageLoader = (NVImageLoader) getImageLoader();
        Bitmap cachedBitmap = nVImageLoader.getCachedBitmap(str);
        if (cachedBitmap != null) {
            this.loadingDrawable = new BitmapDrawable(getResources(), cachedBitmap);
            this.scalePlaceholder = true;
            Log.d("prefetch shared photo bitmap 00 " + str);
            return true;
        }
        Bitmap cachedBitmap2 = nVImageLoader.getCachedBitmap(NVImageView.replaceUrl(str, "280"));
        if (cachedBitmap2 == null) {
            return false;
        }
        this.loadingDrawable = new BitmapDrawable(getResources(), cachedBitmap2);
        this.scalePlaceholder = true;
        Log.d("prefetch shared photo bitmap 280 " + str);
        return true;
    }
}
