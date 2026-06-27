package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.narvii.lib.R;
import com.narvii.model.Media;
import com.narvii.util.Utils;
import com.narvii.util.YoutubeUtils;
import com.narvii.widget.shadow.ShadowConfig;
import com.narvii.widget.shadow.ShadowHelper;

/* loaded from: classes3.dex */
public class ThumbImageView extends NVImageView {
    private static final ImageView.ScaleType[] sScaleTypeArray = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};
    final RectF contentBounds;
    private boolean dirty;
    private int forceRequestHeight;
    private int forceRequestWidth;
    public int shadowColor;
    private ShadowConfig shadowConfig;
    protected float shadowCornerRadius;
    public int shadowOffsetX;
    public int shadowOffsetY;
    public int shadowSize;

    protected boolean isReadyToWork(boolean z) {
        return z;
    }

    public ThumbImageView(Context context) {
        this(context, null, 0);
    }

    public ThumbImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ThumbImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.dirty = true;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ThumbImageView, i, 0);
        this.shadowSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ThumbImageView_shadowSize, 0);
        this.shadowOffsetX = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.ThumbImageView_shadowOffsetX, 0);
        this.shadowOffsetY = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.ThumbImageView_shadowOffsetY, 0);
        this.shadowColor = typedArrayObtainStyledAttributes.getColor(R.styleable.ThumbImageView_shadowColor, -1610612736);
        int i2 = typedArrayObtainStyledAttributes.getInt(R.styleable.ThumbImageView_android_scaleType, -1);
        if (i2 >= 0) {
            setScaleType(sScaleTypeArray[i2]);
        } else {
            setScaleType(ImageView.ScaleType.CENTER_CROP);
        }
        typedArrayObtainStyledAttributes.recycle();
        if (this.shadowSize > 0 && this.defaultDrawable == null && this.defaultDrawableId == 0) {
            this.defaultDrawableId = R.color.placeholder;
        }
        this.contentBounds = new RectF();
    }

    @Override // com.narvii.widget.NVImageView
    protected String getRequestUrl(Media media, boolean z, int i, int i2) {
        if (!isReadyToWork(z) || media == null || i == 0 || i2 == 0) {
            return null;
        }
        int i3 = this.forceRequestWidth;
        if (i3 == 0) {
            i3 = i;
        }
        int i4 = this.forceRequestHeight;
        if (i4 == 0) {
            i4 = i2;
        }
        String str = media.coverImage;
        if (str == null) {
            str = media.url;
        }
        String youtubeVideoIdFromUrl = YoutubeUtils.getYoutubeVideoIdFromUrl(str);
        if (youtubeVideoIdFromUrl != null) {
            if (i3 > 180 || i4 > 135) {
                return YoutubeUtils.getHQYoutubeImage(youtubeVideoIdFromUrl);
            }
            return YoutubeUtils.getDefaultYoutubeImage(youtubeVideoIdFromUrl);
        }
        if (media.type != 123) {
            return NVImageView.fitSize(str, this.imageType, i3, i4);
        }
        if (i3 <= i4) {
            i3 = i4;
        }
        if (i3 > 768) {
            return str;
        }
        if (i3 > 192) {
            return NVImageView.replaceVideoCoverUrl(str, "00");
        }
        if (i3 > 96) {
            return NVImageView.replaceVideoCoverUrl(str, "128");
        }
        return NVImageView.replaceVideoCoverUrl(str, "68");
    }

    public void setForceRequestSize(int i, int i2) {
        this.forceRequestWidth = i;
        this.forceRequestHeight = i2;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.dirty = true;
    }

    @Override // com.narvii.widget.NVImageView
    public boolean setImageMedia(Media media) {
        this.dirty = true;
        return super.setImageMedia(media);
    }

    @Override // com.narvii.widget.NVImageView, android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.shadowSize > 0 && getHeight() > 0 && getWidth() > 0) {
            if (this.dirty || this.shadowConfig == null) {
                this.shadowCornerRadius = Math.min(Math.min(((getWidth() - getPaddingLeft()) - getPaddingRight()) / 2, ((getHeight() - getPaddingTop()) - getPaddingBottom()) / 2), this.cornerRadius);
                buildShadowConfig();
                this.dirty = false;
            }
            ShadowHelper.drawShadow(canvas, this.shadowConfig);
        }
        super.onDraw(canvas);
    }

    public void setShadowSize(int i) {
        this.shadowSize = i;
        this.dirty = true;
        invalidate();
    }

    public void setDirty(boolean z) {
        this.dirty = z;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.dirty = true;
        invalidate();
    }

    public void setShadowColor(int i) {
        this.shadowColor = i;
        this.dirty = true;
        invalidate();
    }

    public void setShadowOffsetX(int i) {
        this.shadowOffsetX = i;
        this.dirty = true;
        invalidate();
    }

    public void setShadowOffsetY(int i) {
        this.shadowOffsetY = i;
        this.dirty = true;
        invalidate();
    }

    private void buildShadowConfig() {
        this.contentBounds.set(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom());
        this.contentBounds.inset(Utils.dpToPxInt(getContext(), 0.5f), Utils.dpToPxInt(getContext(), 0.5f));
        this.shadowConfig = new ShadowConfig(this.contentBounds, this.shadowCornerRadius, this.shadowSize, new int[]{this.shadowOffsetX, this.shadowOffsetY}, this.shadowColor);
        this.shadowConfig.prepareShadow();
    }
}
