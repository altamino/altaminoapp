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
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes7.dex */
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

    public ThumbImageView(Context context) {
        this(context, null, 0);
    }

    protected boolean isReadyToWork(boolean z6) {
        return z6;
    }

    public void setDirty(boolean z6) {
        this.dirty = z6;
    }

    public void setForceRequestSize(int i10, int i11) {
        this.forceRequestWidth = i10;
        this.forceRequestHeight = i11;
    }

    @Override // com.narvii.widget.NVImageView
    public boolean setImageMedia(Media media) {
        this.dirty = true;
        return super.setImageMedia(media);
    }

    public ThumbImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void buildShadowConfig() {
        this.contentBounds.set(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom());
        this.contentBounds.inset(Utils.dpToPxInt(getContext(), 0.5f), Utils.dpToPxInt(getContext(), 0.5f));
        ShadowConfig shadowConfig = new ShadowConfig(this.contentBounds, this.shadowCornerRadius, this.shadowSize, new int[]{this.shadowOffsetX, this.shadowOffsetY}, this.shadowColor);
        this.shadowConfig = shadowConfig;
        shadowConfig.prepareShadow();
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

    public void setShadowColor(int i10) {
        this.shadowColor = i10;
        this.dirty = true;
        invalidate();
    }

    public void setShadowOffsetX(int i10) {
        this.shadowOffsetX = i10;
        this.dirty = true;
        invalidate();
    }

    public void setShadowOffsetY(int i10) {
        this.shadowOffsetY = i10;
        this.dirty = true;
        invalidate();
    }

    public void setShadowSize(int i10) {
        this.shadowSize = i10;
        this.dirty = true;
        invalidate();
    }

    public ThumbImageView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.dirty = true;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ThumbImageView, i10, 0);
        this.shadowSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ThumbImageView_shadowSize, 0);
        this.shadowOffsetX = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.ThumbImageView_shadowOffsetX, 0);
        this.shadowOffsetY = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.ThumbImageView_shadowOffsetY, 0);
        this.shadowColor = typedArrayObtainStyledAttributes.getColor(R.styleable.ThumbImageView_shadowColor, -1610612736);
        int i11 = typedArrayObtainStyledAttributes.getInt(R.styleable.ThumbImageView_android_scaleType, -1);
        if (i11 >= 0) {
            setScaleType(sScaleTypeArray[i11]);
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
    protected String getRequestUrl(Media media, boolean z6, int i10, int i11) {
        if (!isReadyToWork(z6) || media == null || i10 == 0 || i11 == 0) {
            return null;
        }
        int i12 = this.forceRequestWidth;
        if (i12 != 0) {
            i10 = i12;
        }
        int i13 = this.forceRequestHeight;
        if (i13 != 0) {
            i11 = i13;
        }
        String str = media.coverImage;
        if (str == null) {
            str = media.url;
        }
        String youtubeVideoIdFromUrl = YoutubeUtils.getYoutubeVideoIdFromUrl(str);
        if (youtubeVideoIdFromUrl != null) {
            if (i10 <= 180 && i11 <= 135) {
                return YoutubeUtils.getDefaultYoutubeImage(youtubeVideoIdFromUrl);
            }
            return YoutubeUtils.getHQYoutubeImage(youtubeVideoIdFromUrl);
        }
        if (media.type == 123) {
            if (i10 <= i11) {
                i10 = i11;
            }
            if (i10 > 768) {
                return str;
            }
            if (i10 > 192) {
                return NVImageView.replaceVideoCoverUrl(str, TarConstants.VERSION_POSIX);
            }
            if (i10 > 96) {
                return NVImageView.replaceVideoCoverUrl(str, "128");
            }
            return NVImageView.replaceVideoCoverUrl(str, "68");
        }
        return NVImageView.fitSize(str, this.imageType, i10, i11);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.dirty = true;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.dirty = true;
        invalidate();
    }
}
