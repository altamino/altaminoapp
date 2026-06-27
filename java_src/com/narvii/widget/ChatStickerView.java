package com.narvii.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.amino.mastes.R;
import com.narvii.photos.PhotoManager;
import com.narvii.sticker.StickerCacheService;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.crashlytics.OomHelper;
import com.narvii.widget.NVImageView;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.HashMap;

/* loaded from: classes3.dex */
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

    public ChatStickerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.stickerCacheService = (StickerCacheService) Utils.getNVContext(context).getService("stickerCache");
        this.maxWidth = getContext().getResources().getDimensionPixelSize(R.dimen.sticker_max_img_width);
        this.maxHeight = getContext().getResources().getDimensionPixelSize(R.dimen.sticker_max_img_height);
        this.photoManager = (PhotoManager) Utils.getNVContext(getContext()).getService("photo");
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.image = (NVImageView) findViewById(R.id.image);
        this.placeholder = findViewById(R.id.placeholder);
    }

    public void setStickerImage(String str, String str2, int i) {
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
        if (i != 0 && i == this.refId) {
            this.image.defaultDrawable = this.refDrawable;
        } else {
            this.image.defaultDrawable = null;
        }
        this.image.setShowPressedMask(false);
        this.image.setOnImageChangedListener(this);
        if (!str.startsWith("file://") && str2 != null && (localUri = this.stickerCacheService.getLocalUri(str2, str)) != null) {
            str = localUri;
        }
        if (i != 0 && str != null && str.startsWith("file://")) {
            this.refId = i;
            this.refDrawable = getImage(str);
            this.image.setImageDrawable(this.refDrawable);
        } else {
            this.refId = 0;
            this.refDrawable = null;
            this.image.setImageUrl(str);
        }
    }

    private Drawable getImage(String str) {
        if (Utils.isGif(str)) {
            return this.image.getGifLoader().getLocalGifDrawable(str);
        }
        if (Utils.isWebP(str)) {
            return this.image.getWebPLoader().getLocalWebPDrawable(str, this.maxWidth, this.maxHeight);
        }
        WeakReference<Bitmap> weakReference = cache.get(str);
        Bitmap bitmap = weakReference == null ? null : weakReference.get();
        if (bitmap != null) {
            return new BitmapDrawable(getResources(), bitmap);
        }
        try {
            Bitmap bitmapCreateBitmap = this.photoManager.createBitmap(this.photoManager.getUri(new File(Uri.parse(str).getPath())), this.maxWidth, this.maxHeight);
            cache.put(str, new WeakReference<>(bitmapCreateBitmap));
            return new BitmapDrawable(getResources(), bitmapCreateBitmap);
        } catch (Exception unused) {
            return null;
        } catch (OutOfMemoryError e) {
            Log.w("out of memory when load " + str);
            OomHelper.test(e);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0099  */
    @Override // com.narvii.widget.NVImageView.OnImageChangedListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onImageChanged(com.narvii.widget.NVImageView r7, int r8, com.narvii.model.Media r9) throws android.content.res.Resources.NotFoundException {
        /*
            r6 = this;
            com.narvii.widget.NVImageView r7 = r6.image
            android.graphics.drawable.Drawable r7 = r7.getDrawable()
            r8 = 0
            if (r7 != 0) goto L1e
            com.narvii.widget.NVImageView r7 = r6.image
            android.view.ViewGroup$LayoutParams r7 = r7.getLayoutParams()
            r7.width = r8
            r7.height = r8
            com.narvii.widget.NVImageView r9 = r6.image
            r9.setLayoutParams(r7)
            android.view.View r7 = r6.placeholder
            r7.setVisibility(r8)
            return
        L1e:
            android.content.res.Resources r9 = r6.getResources()
            android.content.res.Resources r0 = r6.getResources()
            android.util.DisplayMetrics r0 = r0.getDisplayMetrics()
            int r0 = r0.densityDpi
            float r0 = (float) r0
            r1 = 1065353216(0x3f800000, float:1.0)
            float r0 = r0 * r1
            r2 = 1135869952(0x43b40000, float:360.0)
            float r0 = r0 / r2
            int r2 = r7.getIntrinsicWidth()
            float r2 = (float) r2
            float r2 = r2 * r0
            int r2 = (int) r2
            int r7 = r7.getIntrinsicHeight()
            float r7 = (float) r7
            float r7 = r7 * r0
            int r7 = (int) r7
            r0 = 2131165876(0x7f0702b4, float:1.7945981E38)
            int r0 = r9.getDimensionPixelSize(r0)
            r3 = 2131165875(0x7f0702b3, float:1.794598E38)
            int r9 = r9.getDimensionPixelSize(r3)
            r3 = 1056964608(0x3f000000, float:0.5)
            if (r2 < r0) goto L58
            if (r7 >= r9) goto L72
        L58:
            float r0 = (float) r0
            float r0 = r0 * r1
            float r4 = (float) r2
            float r0 = r0 / r4
            float r9 = (float) r9
            float r9 = r9 * r1
            float r5 = (float) r7
            float r9 = r9 / r5
            float r9 = java.lang.Math.max(r0, r9)
            int r0 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r0 == 0) goto L72
            float r4 = r4 * r9
            float r4 = r4 + r3
            int r2 = (int) r4
            float r9 = r9 * r5
            float r9 = r9 + r3
            int r7 = (int) r9
        L72:
            int r9 = r6.maxWidth
            if (r2 > r9) goto L7a
            int r9 = r6.maxHeight
            if (r7 <= r9) goto L99
        L7a:
            int r9 = r6.maxWidth
            float r9 = (float) r9
            float r9 = r9 * r1
            float r0 = (float) r2
            float r9 = r9 / r0
            int r4 = r6.maxHeight
            float r4 = (float) r4
            float r4 = r4 * r1
            float r5 = (float) r7
            float r4 = r4 / r5
            float r9 = java.lang.Math.min(r9, r4)
            int r1 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r1 == 0) goto L99
            float r0 = r0 * r9
            float r0 = r0 + r3
            int r7 = (int) r0
            float r9 = r9 * r5
            float r9 = r9 + r3
            int r9 = (int) r9
            goto L9b
        L99:
            r9 = r7
            r7 = r2
        L9b:
            if (r7 >= 0) goto L9e
            r7 = 0
        L9e:
            if (r9 >= 0) goto La1
            goto La2
        La1:
            r8 = r9
        La2:
            com.narvii.widget.NVImageView r9 = r6.image
            android.view.ViewGroup$LayoutParams r9 = r9.getLayoutParams()
            r9.width = r7
            r9.height = r8
            com.narvii.widget.NVImageView r7 = r6.image
            r7.setLayoutParams(r9)
            android.view.View r7 = r6.placeholder
            r8 = 8
            r7.setVisibility(r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.widget.ChatStickerView.onImageChanged(com.narvii.widget.NVImageView, int, com.narvii.model.Media):void");
    }
}
