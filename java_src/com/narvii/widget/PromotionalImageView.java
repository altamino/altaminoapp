package com.narvii.widget;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.animation.AnimationUtils;
import com.narvii.model.Community;
import com.narvii.model.Media;
import com.narvii.util.YoutubeUtils;

/* loaded from: classes3.dex */
public class PromotionalImageView extends ThumbImageView {
    long animTime;
    Community community;
    int image;
    Media media;
    private boolean noAnim;
    Paint paint;

    @Deprecated
    public boolean preloadCachedImage;
    int prevPlaceholderColor;
    RectF rectf;
    public boolean showLaunchPage;

    public PromotionalImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.showLaunchPage = false;
        this.noAnim = false;
        this.scalePlaceholder = true;
        this.hidePlayButton = true;
    }

    public void setNoAnim(boolean z) {
        this.noAnim = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0004  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setCommunity(com.narvii.model.Community r5) {
        /*
            r4 = this;
            r0 = 0
            r1 = 0
            if (r5 != 0) goto L7
        L4:
            r2 = r0
            r3 = 0
            goto L30
        L7:
            boolean r2 = r4.showLaunchPage
            if (r2 == 0) goto L1d
            com.narvii.model.Community$LaunchPage r2 = r5.launchPage
            if (r2 == 0) goto L1d
            com.narvii.model.Media r2 = r2.image()
            if (r2 == 0) goto L1d
            com.narvii.model.Community$LaunchPage r2 = r5.launchPage
            com.narvii.model.Media r2 = r2.image()
            r3 = 3
            goto L30
        L1d:
            java.util.List<com.narvii.model.Media> r2 = r5.promotionalMediaList
            if (r2 == 0) goto L4
            int r2 = r2.size()
            if (r2 <= 0) goto L4
            java.util.List<com.narvii.model.Media> r2 = r5.promotionalMediaList
            java.lang.Object r2 = r2.get(r1)
            com.narvii.model.Media r2 = (com.narvii.model.Media) r2
            r3 = 2
        L30:
            r4.community = r5
            r4.image = r3
            r4.media = r2
            com.narvii.model.Community r5 = r4.community
            if (r5 != 0) goto L3f
            r4.defaultDrawable = r0
            r4.prevPlaceholderColor = r1
            goto L5a
        L3f:
            int r5 = r5.themeColor()
            android.graphics.drawable.Drawable r0 = r4.defaultDrawable
            boolean r1 = r0 instanceof android.graphics.drawable.ColorDrawable
            if (r1 == 0) goto L51
            android.graphics.drawable.ColorDrawable r0 = (android.graphics.drawable.ColorDrawable) r0
            int r0 = r0.getColor()
            if (r0 == r5) goto L58
        L51:
            android.graphics.drawable.ColorDrawable r0 = new android.graphics.drawable.ColorDrawable
            r0.<init>(r5)
            r4.defaultDrawable = r0
        L58:
            r4.prevPlaceholderColor = r5
        L5a:
            r4.setImageMedia(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.widget.PromotionalImageView.setCommunity(com.narvii.model.Community):void");
    }

    @Override // com.narvii.widget.NVImageView
    protected void setImageStatus(int i, boolean z) {
        super.setImageStatus(i, z);
        if (i == 1) {
            this.animTime = 0L;
        }
    }

    @Override // com.narvii.widget.NVImageView
    protected void setImageDrawable(Drawable drawable, int i) {
        super.setImageDrawable(drawable, i);
        if (i == 1) {
            this.animTime = 0L;
        } else if (i == 4 && drawable != null) {
            this.animTime = AnimationUtils.currentAnimationTimeMillis();
        } else {
            this.animTime = 0L;
            this.prevPlaceholderColor = 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x009f  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void dispatchDraw(android.graphics.Canvas r12) {
        /*
            r11 = this;
            int r0 = r11.prevPlaceholderColor
            r1 = 1132396544(0x437f0000, float:255.0)
            r2 = 1065353216(0x3f800000, float:1.0)
            if (r0 == 0) goto L9f
            boolean r0 = r11.noAnim
            r3 = 0
            if (r0 == 0) goto L10
            r5 = r3
            goto L12
        L10:
            r5 = 200(0xc8, double:9.9E-322)
        L12:
            long r7 = android.view.animation.AnimationUtils.currentAnimationTimeMillis()
            long r9 = r11.animTime
            long r7 = r7 - r9
            int r0 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r0 < 0) goto L9f
            int r0 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r0 >= 0) goto L9f
            float r0 = (float) r7
            float r0 = r0 * r2
            float r3 = (float) r5
            float r0 = r0 / r3
            android.graphics.Paint r3 = r11.paint
            if (r3 != 0) goto L3e
            android.graphics.Paint r3 = new android.graphics.Paint
            r3.<init>()
            r11.paint = r3
            android.graphics.Paint r3 = r11.paint
            r4 = 1
            r3.setAntiAlias(r4)
            android.graphics.Paint r3 = r11.paint
            android.graphics.Paint$Style r4 = android.graphics.Paint.Style.FILL
            r3.setStyle(r4)
        L3e:
            int r3 = r11.prevPlaceholderColor
            android.graphics.Paint r4 = r11.paint
            float r5 = r2 - r0
            float r5 = r5 * r1
            int r5 = (int) r5
            int r6 = android.graphics.Color.red(r3)
            int r7 = android.graphics.Color.green(r3)
            int r3 = android.graphics.Color.blue(r3)
            int r3 = android.graphics.Color.argb(r5, r6, r7, r3)
            r4.setColor(r3)
            android.graphics.RectF r3 = r11.rectf
            if (r3 != 0) goto L65
            android.graphics.RectF r3 = new android.graphics.RectF
            r3.<init>()
            r11.rectf = r3
        L65:
            android.graphics.RectF r3 = r11.rectf
            int r4 = r11.getPaddingLeft()
            float r4 = (float) r4
            r3.left = r4
            android.graphics.RectF r3 = r11.rectf
            int r4 = r11.getPaddingTop()
            float r4 = (float) r4
            r3.top = r4
            android.graphics.RectF r3 = r11.rectf
            int r4 = r11.getWidth()
            int r5 = r11.getPaddingRight()
            int r4 = r4 - r5
            float r4 = (float) r4
            r3.right = r4
            android.graphics.RectF r3 = r11.rectf
            int r4 = r11.getHeight()
            int r5 = r11.getPaddingBottom()
            int r4 = r4 - r5
            float r4 = (float) r4
            r3.bottom = r4
            android.graphics.RectF r3 = r11.rectf
            int r4 = r11.cornerRadius
            float r5 = (float) r4
            float r4 = (float) r4
            android.graphics.Paint r6 = r11.paint
            r12.drawRoundRect(r3, r5, r4, r6)
            goto La1
        L9f:
            r0 = 1065353216(0x3f800000, float:1.0)
        La1:
            int r3 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r3 >= 0) goto Lbd
            r12.save()
            r5 = 0
            r6 = 0
            int r3 = r11.getWidth()
            float r7 = (float) r3
            int r3 = r11.getHeight()
            float r8 = (float) r3
            float r1 = r1 * r0
            int r9 = (int) r1
            r10 = 31
            r4 = r12
            r4.saveLayerAlpha(r5, r6, r7, r8, r9, r10)
        Lbd:
            super.dispatchDraw(r12)
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 >= 0) goto Lca
            r12.restore()
            r11.invalidate()
        Lca:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.widget.PromotionalImageView.dispatchDraw(android.graphics.Canvas):void");
    }

    @Override // com.narvii.widget.ThumbImageView, com.narvii.widget.NVImageView
    protected String getRequestUrl(Media media, boolean z, int i, int i2) {
        if (!z || i == 0 || i2 == 0 || media == null) {
            return null;
        }
        String str = media.coverImage;
        if (str == null) {
            str = media.url;
        }
        if (this.image == 1) {
            return NVImageView.fitSize(str, NVImageView.TYPE_COMMUNITY_ICON, i, i2);
        }
        String youtubeVideoIdFromUrl = YoutubeUtils.getYoutubeVideoIdFromUrl(str);
        if (youtubeVideoIdFromUrl == null) {
            return NVImageView.fitSize(str, this.image == 2 ? NVImageView.TYPE_COMMUNITY_LAUNCH_IMAGE : null, i, i2);
        }
        if (i > 180 || i2 > 135) {
            return YoutubeUtils.getHQYoutubeImage(youtubeVideoIdFromUrl);
        }
        return YoutubeUtils.getDefaultYoutubeImage(youtubeVideoIdFromUrl);
    }
}
