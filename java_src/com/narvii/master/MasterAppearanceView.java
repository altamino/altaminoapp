package com.narvii.master;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.narvii.widget.NVImageView;

/* loaded from: classes3.dex */
public class MasterAppearanceView extends NVImageView {
    Drawable oldDrawable;

    public MasterAppearanceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.scalePlaceholder = true;
        this.imageType = NVImageView.TYPE_FULLSCREEN_BACKGROUND_IMAGE;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0074 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.narvii.widget.NVImageView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean setImageMedia(com.narvii.model.Media r8) {
        /*
            r7 = this;
            if (r8 == 0) goto L89
            java.lang.String r0 = r8.url
            if (r0 == 0) goto L89
            java.lang.String r1 = r8.coverImage
            if (r1 != 0) goto Lb
            goto Lc
        Lb:
            r0 = r1
        Lc:
            android.graphics.drawable.Drawable r1 = r7.oldDrawable
            if (r1 != 0) goto L87
            long r1 = android.os.SystemClock.elapsedRealtime()
            boolean r3 = com.narvii.util.Utils.isGif(r0)
            r4 = 1
            r5 = 0
            if (r3 == 0) goto L2d
            com.narvii.util.drawables.gif.GifLoader r0 = r7.getGifLoader()
            java.lang.String r3 = r7.getRequestUrl(r8, r4, r5, r5)
            com.narvii.util.drawables.gif.WrapGifDrawable r0 = r0.getDiskCachedGifDrawable(r3)
            if (r0 == 0) goto L2b
            goto L50
        L2b:
            r4 = 0
            goto L50
        L2d:
            boolean r0 = com.narvii.util.Utils.isWebP(r0)
            if (r0 == 0) goto L40
            com.narvii.util.drawables.webp.WebPLoader r0 = r7.getWebPLoader()
            java.lang.String r3 = r7.getRequestUrl(r8, r4, r5, r5)
            boolean r4 = r0.isUrlCached(r3)
            goto L50
        L40:
            com.android.volley.toolbox.ImageLoader r0 = r7.getImageLoader()
            com.narvii.util.image.NVImageLoader r0 = (com.narvii.util.image.NVImageLoader) r0
            java.lang.String r3 = r7.getRequestUrl(r8, r4, r5, r5)
            android.graphics.Bitmap r0 = r0.getDiskCachedBitmap(r3)
            if (r0 == 0) goto L2b
        L50:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r3 = "load appearance image in "
            r0.append(r3)
            long r5 = android.os.SystemClock.elapsedRealtime()
            long r5 = r5 - r1
            r0.append(r5)
            java.lang.String r1 = "ms"
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            com.narvii.util.Log.i(r0)
            if (r4 == 0) goto L74
            r0 = 0
            r7.defaultDrawable = r0
            goto L89
        L74:
            android.content.res.Resources r0 = r7.getResources()     // Catch: java.lang.OutOfMemoryError -> L82
            r1 = 2131232202(0x7f0805ca, float:1.8080507E38)
            android.graphics.drawable.Drawable r0 = r0.getDrawable(r1)     // Catch: java.lang.OutOfMemoryError -> L82
            r7.defaultDrawable = r0     // Catch: java.lang.OutOfMemoryError -> L82
            goto L89
        L82:
            r0 = move-exception
            com.narvii.util.crashlytics.OomHelper.test(r0)
            goto L89
        L87:
            r7.defaultDrawable = r1
        L89:
            boolean r8 = super.setImageMedia(r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.master.MasterAppearanceView.setImageMedia(com.narvii.model.Media):boolean");
    }

    @Override // com.narvii.widget.NVImageView
    protected void setImageDrawable(Drawable drawable, int i) {
        super.setImageDrawable(drawable, i);
        if (i == 4) {
            this.oldDrawable = drawable;
        }
    }
}
