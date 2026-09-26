package com.narvii.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.animation.AnimationUtils;
import com.narvii.model.Community;
import com.narvii.model.Media;
import com.narvii.util.YoutubeUtils;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
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

    @Override // com.narvii.widget.ThumbImageView, com.narvii.widget.NVImageView
    protected String getRequestUrl(Media media, boolean z6, int i10, int i11) {
        if (!z6 || i10 == 0 || i11 == 0 || media == null) {
            return null;
        }
        String str = media.coverImage;
        if (str == null) {
            str = media.url;
        }
        if (this.image == 1) {
            return NVImageView.fitSize(str, NVImageView.TYPE_COMMUNITY_ICON, i10, i11);
        }
        String youtubeVideoIdFromUrl = YoutubeUtils.getYoutubeVideoIdFromUrl(str);
        if (youtubeVideoIdFromUrl != null) {
            return (i10 > 180 || i11 > 135) ? YoutubeUtils.getHQYoutubeImage(youtubeVideoIdFromUrl) : YoutubeUtils.getDefaultYoutubeImage(youtubeVideoIdFromUrl);
        }
        return NVImageView.fitSize(str, this.image == 2 ? NVImageView.TYPE_COMMUNITY_LAUNCH_IMAGE : null, i10, i11);
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0004  */
    public void setCommunity(Community community) {
        Media mediaImage;
        int i10;
        Community.LaunchPage launchPage;
        if (community == null) {
            mediaImage = null;
            i10 = 0;
        } else if (!this.showLaunchPage || (launchPage = community.launchPage) == null || launchPage.image() == null) {
            List<Media> list = community.promotionalMediaList;
            if (list == null || list.size() <= 0) {
                mediaImage = null;
                i10 = 0;
            } else {
                mediaImage = community.promotionalMediaList.get(0);
                i10 = 2;
            }
        } else {
            mediaImage = community.launchPage.image();
            i10 = 3;
        }
        this.community = community;
        this.image = i10;
        this.media = mediaImage;
        if (community == null) {
            this.defaultDrawable = null;
            this.prevPlaceholderColor = 0;
        } else {
            int iThemeColor = community.themeColor();
            Drawable drawable = this.defaultDrawable;
            if (!(drawable instanceof ColorDrawable) || ((ColorDrawable) drawable).getColor() != iThemeColor) {
                this.defaultDrawable = new ColorDrawable(iThemeColor);
            }
            this.prevPlaceholderColor = iThemeColor;
        }
        setImageMedia(mediaImage);
    }

    public void setNoAnim(boolean z6) {
        this.noAnim = z6;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x009b  */
    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
        float f;
        if (this.prevPlaceholderColor == 0) {
            f = 1.0f;
        } else {
            long j6 = this.noAnim ? 0L : 200L;
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis() - this.animTime;
            if (jCurrentAnimationTimeMillis < 0 || jCurrentAnimationTimeMillis >= j6) {
                f = 1.0f;
            } else {
                f = (jCurrentAnimationTimeMillis * 1.0f) / j6;
                if (this.paint == null) {
                    Paint paint = new Paint();
                    this.paint = paint;
                    paint.setAntiAlias(true);
                    this.paint.setStyle(Paint.Style.FILL);
                }
                int i10 = this.prevPlaceholderColor;
                this.paint.setColor(Color.argb((int) ((1.0f - f) * 255.0f), Color.red(i10), Color.green(i10), Color.blue(i10)));
                if (this.rectf == null) {
                    this.rectf = new RectF();
                }
                this.rectf.left = getPaddingLeft();
                this.rectf.top = getPaddingTop();
                this.rectf.right = getWidth() - getPaddingRight();
                this.rectf.bottom = getHeight() - getPaddingBottom();
                RectF rectF = this.rectf;
                int i11 = this.cornerRadius;
                canvas.drawRoundRect(rectF, i11, i11, this.paint);
            }
        }
        if (f < 1.0f) {
            canvas.save();
            canvas.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), (int) (f * 255.0f), 31);
        }
        super.dispatchDraw(canvas);
        if (f < 1.0f) {
            canvas.restore();
            invalidate();
        }
    }

    public PromotionalImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.showLaunchPage = false;
        this.noAnim = false;
        this.scalePlaceholder = true;
        this.hidePlayButton = true;
    }

    @Override // com.narvii.widget.NVImageView
    protected void setImageDrawable(Drawable drawable, int i10) {
        super.setImageDrawable(drawable, i10);
        if (i10 == 1) {
            this.animTime = 0L;
        } else if (i10 == 4 && drawable != null) {
            this.animTime = AnimationUtils.currentAnimationTimeMillis();
        } else {
            this.animTime = 0L;
            this.prevPlaceholderColor = 0;
        }
    }

    @Override // com.narvii.widget.NVImageView
    protected void setImageStatus(int i10, boolean z6) {
        super.setImageStatus(i10, z6);
        if (i10 == 1) {
            this.animTime = 0L;
        }
    }
}
