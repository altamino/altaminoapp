package com.narvii.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.narvii.amino.master.R;
import com.narvii.model.Media;
import com.narvii.photos.PhotoManager;
import com.narvii.sticker.StickerCacheService;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.crashlytics.OomHelper;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.HashMap;

/* JADX INFO: loaded from: classes10.dex */
public class ChatStickerView extends FrameLayout implements NVImageView.OnImageChangedListener {
    private static final HashMap<String, WeakReference<Bitmap>> cache = new HashMap<>();
    NVImageView image;
    int maxHeight;
    int maxWidth;
    PhotoManager photoManager;
    View placeholder;
    private Drawable refDrawable;
    private int refId;
    StickerCacheService stickerCacheService;
    private String url;

    public void setStickerImage(String str, String str2, int i10) {
        String localUri;
        if (str == null) {
            this.image.setImageUrl(null);
            return;
        }
        if (Utils.isEquals(str, this.url)) {
            return;
        }
        View view = this.placeholder;
        if (view instanceof FlexSizeImageView) {
            ((FlexSizeImageView) view).setImageSizeFromUrl(str);
        }
        this.url = str;
        if (i10 == 0 || i10 != this.refId) {
            this.image.defaultDrawable = null;
        } else {
            this.image.defaultDrawable = this.refDrawable;
        }
        this.image.setShowPressedMask(false);
        this.image.setOnImageChangedListener(this);
        if (!str.startsWith("file://") && str2 != null && (localUri = this.stickerCacheService.getLocalUri(str2, str)) != null) {
            str = localUri;
        }
        if (i10 == 0 || !str.startsWith("file://")) {
            this.refId = 0;
            this.refDrawable = null;
            this.image.setImageUrl(str);
        } else {
            this.refId = i10;
            Drawable image = getImage(str);
            this.refDrawable = image;
            this.image.setImageDrawable(image);
        }
    }

    @Override // com.narvii.widget.NVImageView.OnImageChangedListener
    public void onImageChanged(NVImageView nVImageView, int i10, Media media) {
        Drawable drawable = this.image.getDrawable();
        if (drawable == null) {
            ViewGroup.LayoutParams layoutParams = this.image.getLayoutParams();
            layoutParams.width = 0;
            layoutParams.height = 0;
            this.image.setLayoutParams(layoutParams);
            this.placeholder.setVisibility(0);
            return;
        }
        Resources resources = getResources();
        float f = (getResources().getDisplayMetrics().densityDpi * 1.0f) / 360.0f;
        int intrinsicWidth = (int) (drawable.getIntrinsicWidth() * f);
        int intrinsicHeight = (int) (drawable.getIntrinsicHeight() * f);
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.sticker_min_img_width);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.sticker_min_img_height);
        if (intrinsicWidth < dimensionPixelSize || intrinsicHeight < dimensionPixelSize2) {
            float f6 = intrinsicWidth;
            float f7 = intrinsicHeight;
            float fMax = Math.max((dimensionPixelSize * 1.0f) / f6, (dimensionPixelSize2 * 1.0f) / f7);
            if (fMax != 1.0f) {
                intrinsicWidth = (int) ((f6 * fMax) + 0.5f);
                intrinsicHeight = (int) ((fMax * f7) + 0.5f);
            }
        }
        int i11 = this.maxWidth;
        if (intrinsicWidth > i11 || intrinsicHeight > this.maxHeight) {
            float f10 = intrinsicWidth;
            float f11 = intrinsicHeight;
            float fMin = Math.min((i11 * 1.0f) / f10, (this.maxHeight * 1.0f) / f11);
            if (fMin != 1.0f) {
                intrinsicWidth = (int) ((f10 * fMin) + 0.5f);
                intrinsicHeight = (int) ((fMin * f11) + 0.5f);
            }
        }
        if (intrinsicWidth < 0) {
            intrinsicWidth = 0;
        }
        int i12 = intrinsicHeight >= 0 ? intrinsicHeight : 0;
        ViewGroup.LayoutParams layoutParams2 = this.image.getLayoutParams();
        layoutParams2.width = intrinsicWidth;
        layoutParams2.height = i12;
        this.image.setLayoutParams(layoutParams2);
        this.placeholder.setVisibility(8);
    }

    public ChatStickerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.stickerCacheService = (StickerCacheService) Utils.getNVContext(context).getService("stickerCache");
        this.maxWidth = getContext().getResources().getDimensionPixelSize(R.dimen.sticker_max_img_width);
        this.maxHeight = getContext().getResources().getDimensionPixelSize(R.dimen.sticker_max_img_height);
        this.photoManager = (PhotoManager) Utils.getNVContext(getContext()).getService("photo");
    }

    private Drawable getImage(String str) {
        Bitmap bitmap;
        if (Utils.isGif(str)) {
            return this.image.getGifLoader().getLocalGifDrawable(str);
        }
        if (Utils.isWebP(str)) {
            return this.image.getWebPLoader().getLocalWebPDrawable(str, this.maxWidth, this.maxHeight);
        }
        HashMap<String, WeakReference<Bitmap>> map = cache;
        WeakReference<Bitmap> weakReference = map.get(str);
        if (weakReference == null) {
            bitmap = null;
        } else {
            bitmap = weakReference.get();
        }
        if (bitmap != null) {
            return new BitmapDrawable(getResources(), bitmap);
        }
        try {
            File file = new File(Uri.parse(str).getPath());
            PhotoManager photoManager = this.photoManager;
            Bitmap bitmapCreateBitmap = photoManager.createBitmap(photoManager.getUri(file), this.maxWidth, this.maxHeight);
            map.put(str, new WeakReference<>(bitmapCreateBitmap));
            return new BitmapDrawable(getResources(), bitmapCreateBitmap);
        } catch (Exception unused) {
            return null;
        } catch (OutOfMemoryError e) {
            Log.w("out of memory when load " + str);
            OomHelper.test(e);
            return null;
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.image = (NVImageView) findViewById(R.id.image);
        this.placeholder = findViewById(R.id.placeholder);
    }
}
