package com.narvii.master;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.AttributeSet;
import com.narvii.amino.master.R;
import com.narvii.model.Media;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.crashlytics.OomHelper;
import com.narvii.util.image.NVImageLoader;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes11.dex */
public class MasterAppearanceView extends NVImageView {
    Drawable oldDrawable;

    /* JADX WARN: Code duplicated, block: B:16:0x002b  */
    @Override // com.narvii.widget.NVImageView
    public boolean setImageMedia(Media media) {
        String str;
        if (media != null && (str = media.url) != null) {
            String str2 = media.coverImage;
            if (str2 != null) {
                str = str2;
            }
            Drawable drawable = this.oldDrawable;
            if (drawable == null) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                boolean zIsUrlCached = true;
                if (Utils.isGif(str)) {
                    if (getGifLoader().getDiskCachedGifDrawable(getRequestUrl(media, true, 0, 0)) == null) {
                        zIsUrlCached = false;
                    }
                } else if (Utils.isWebP(str)) {
                    zIsUrlCached = getWebPLoader().isUrlCached(getRequestUrl(media, true, 0, 0));
                } else if (((NVImageLoader) getImageLoader()).getDiskCachedBitmap(getRequestUrl(media, true, 0, 0)) == null) {
                    zIsUrlCached = false;
                }
                Log.i("load appearance image in " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + "ms");
                if (zIsUrlCached) {
                    this.defaultDrawable = null;
                } else {
                    try {
                        this.defaultDrawable = getResources().getDrawable(R.drawable.master_default_bg);
                    } catch (OutOfMemoryError e) {
                        OomHelper.test(e);
                    }
                }
            } else {
                this.defaultDrawable = drawable;
            }
        }
        return super.setImageMedia(media);
    }

    public MasterAppearanceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.scalePlaceholder = true;
        this.imageType = NVImageView.TYPE_FULLSCREEN_BACKGROUND_IMAGE;
    }

    @Override // com.narvii.widget.NVImageView
    protected void setImageDrawable(Drawable drawable, int i10) {
        super.setImageDrawable(drawable, i10);
        if (i10 == 4) {
            this.oldDrawable = drawable;
        }
    }
}
