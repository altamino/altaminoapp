package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.narvii.lib.R;
import com.narvii.model.Media;
import com.narvii.util.Utils;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes7.dex */
public class SlideshowView extends FrameLayout implements NVImageView.OnImageChangedListener {
    public int alphaDuration;
    long animationStartTime;
    int bdx;
    int bdy;
    int dx;
    int dy;
    FullsizeImageView img1;
    FullsizeImageView img2;
    int index;
    NVImageView.OnImageChangedListener listener;
    List<Media> mediaList;
    boolean nextReqed;
    public boolean noSlide;
    final Random rnd;
    public float scale;
    public int slideDuration;

    public void setOnImageChangedListener(NVImageView.OnImageChangedListener onImageChangedListener) {
        this.listener = onImageChangedListener;
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j6) {
        long j10;
        View view2;
        FullsizeImageView fullsizeImageView;
        FullsizeImageView fullsizeImageView2;
        List<Media> list = this.mediaList;
        boolean z6 = false;
        int size = list == null ? 0 : list.size();
        if (size < 2) {
            if (size == 1 && this.animationStartTime == 0 && view == (fullsizeImageView2 = this.img1) && fullsizeImageView2.getStatus() == 4) {
                this.animationStartTime = j6;
                AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                alphaAnimation.setDuration(this.alphaDuration);
                this.img1.startAnimation(alphaAnimation);
            }
            return super.drawChild(canvas, view, j6);
        }
        long j11 = this.animationStartTime;
        long j12 = -1;
        if (j11 >= 0) {
            if (j11 != 0) {
                j12 = j6 - j11;
            } else if (this.index != 0 || (this.img1.getDrawable() != null && this.img1.getStatus() == 4)) {
                this.animationStartTime = j6;
                j10 = 0;
            }
            j10 = j12;
        } else {
            j10 = j12;
        }
        int i10 = this.index;
        if (i10 % 2 == 0) {
            view2 = this.img1;
            fullsizeImageView = this.img2;
        } else {
            view2 = this.img2;
            fullsizeImageView = this.img1;
        }
        boolean z10 = view == this.img1;
        if (j10 >= 0) {
            if (z10) {
                if (j10 < this.alphaDuration && i10 > 0) {
                    int iSave = canvas.save();
                    canvas.translate(this.bdx * 0.5f, this.bdy * 0.5f);
                    float f = this.scale;
                    canvas.scale(f, f, getWidth() / 2, getHeight() / 2);
                    super.drawChild(canvas, fullsizeImageView, j6);
                    canvas.restoreToCount(iSave);
                    this.nextReqed = false;
                }
                if (j10 >= this.alphaDuration && !this.nextReqed) {
                    fullsizeImageView.setImageMedia(this.mediaList.get((this.index + 1) % size));
                    this.nextReqed = true;
                }
            } else {
                if (j10 == 0) {
                    Animation alphaAnimation2 = new AlphaAnimation(0.0f, 1.0f);
                    alphaAnimation2.setDuration(this.alphaDuration);
                    view2.startAnimation(alphaAnimation2);
                    if (this.noSlide) {
                        this.dx = 0;
                        this.dy = 0;
                    } else {
                        float f6 = this.scale - 1.0f;
                        this.dx = (int) (getWidth() * f6 * this.rnd.nextFloat() * (this.rnd.nextBoolean() ? -1 : 1));
                        this.dy = (int) (getHeight() * f6 * this.rnd.nextFloat() * (this.rnd.nextBoolean() ? -1 : 1));
                    }
                } else {
                    float f7 = j10 / this.slideDuration;
                    if (f7 > 1.0f) {
                        f7 = 1.0f;
                    }
                    int iSave2 = canvas.save();
                    float f10 = f7 - 0.5f;
                    canvas.translate(this.dx * f10, this.dy * f10);
                    float f11 = this.scale;
                    canvas.scale(f11, f11, getWidth() / 2, getHeight() / 2);
                    super.drawChild(canvas, view2, j6);
                    canvas.restoreToCount(iSave2);
                }
                if (j10 <= this.slideDuration) {
                    invalidate();
                    z6 = true;
                }
            }
        }
        if (j10 <= this.slideDuration || z10 || ((fullsizeImageView.getDrawable() == null || fullsizeImageView.getStatus() != 4) && fullsizeImageView.getStatus() != 2)) {
            return z6;
        }
        this.animationStartTime = 0L;
        this.bdx = this.dx;
        this.bdy = this.dy;
        this.index++;
        invalidate();
        return true;
    }

    public int getCurrentIndex() {
        List<Media> list = this.mediaList;
        if (list == null || list.size() == 0) {
            return 0;
        }
        return this.index % this.mediaList.size();
    }

    public Media getCurrentMedia() {
        List<Media> list = this.mediaList;
        if (list == null || list.size() == 0) {
            return null;
        }
        List<Media> list2 = this.mediaList;
        return list2.get(this.index % list2.size());
    }

    @Override // com.narvii.widget.NVImageView.OnImageChangedListener
    public void onImageChanged(NVImageView nVImageView, int i10, Media media) {
        List<Media> list = this.mediaList;
        if (list != null && list.size() > 0) {
            invalidate();
        }
        NVImageView.OnImageChangedListener onImageChangedListener = this.listener;
        if (onImageChangedListener != null) {
            onImageChangedListener.onImageChanged(nVImageView, i10, media);
        }
    }

    public void setMediaList(List<Media> list) {
        List<Media> list2 = this.mediaList;
        if (list2 == list || Utils.isEqualsContent(list2, list)) {
            return;
        }
        this.mediaList = list;
        this.index = 0;
        this.nextReqed = false;
        this.animationStartTime = 0L;
        if (list == null || list.size() <= 0) {
            this.img1.setImageMedia(null);
            this.animationStartTime = 1L;
        } else {
            this.img1.setImageMedia(list.get(0));
            if (this.img1.getStatus() == 4) {
                this.animationStartTime = 1L;
            }
        }
        invalidate();
    }

    public SlideshowView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.alphaDuration = 600;
        this.slideDuration = 5000;
        this.scale = 1.0f;
        this.noSlide = false;
        this.animationStartTime = -1L;
        this.index = 0;
        int[] iArr = R.styleable.SlideshowView;
        int i10 = R.style.SlideshowView;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i10, i10);
        this.alphaDuration = typedArrayObtainStyledAttributes.getInteger(R.styleable.SlideshowView_alphaDuration, 600);
        this.slideDuration = typedArrayObtainStyledAttributes.getInteger(R.styleable.SlideshowView_slideDuration, 4000);
        this.scale = typedArrayObtainStyledAttributes.getFloat(R.styleable.SlideshowView_scale, 1.0f);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SlideshowView_hidingHeight2, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.rnd = new Random(SystemClock.elapsedRealtime());
        setClipChildren(false);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        FullsizeImageView fullsizeImageView = new FullsizeImageView(getContext());
        this.img1 = fullsizeImageView;
        fullsizeImageView.hidePlayButton = true;
        fullsizeImageView.hidingHeight = dimensionPixelSize;
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_CROP;
        fullsizeImageView.setScaleType(scaleType);
        this.img1.setOnImageChangedListener(this);
        addView(this.img1, layoutParams);
        FullsizeImageView fullsizeImageView2 = new FullsizeImageView(getContext());
        this.img2 = fullsizeImageView2;
        fullsizeImageView2.hidePlayButton = true;
        fullsizeImageView2.hidingHeight = dimensionPixelSize;
        fullsizeImageView2.setScaleType(scaleType);
        this.img2.setOnImageChangedListener(this);
        addView(this.img2, layoutParams);
    }
}
