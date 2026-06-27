package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.narvii.lib.R;
import com.narvii.model.Media;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;
import java.util.List;
import java.util.Random;

/* loaded from: classes3.dex */
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

    public SlideshowView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.alphaDuration = 600;
        this.slideDuration = 5000;
        this.scale = 1.0f;
        this.noSlide = false;
        this.animationStartTime = -1L;
        this.index = 0;
        int[] iArr = R.styleable.SlideshowView;
        int i = R.style.SlideshowView;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, i);
        this.alphaDuration = typedArrayObtainStyledAttributes.getInteger(R.styleable.SlideshowView_alphaDuration, 600);
        this.slideDuration = typedArrayObtainStyledAttributes.getInteger(R.styleable.SlideshowView_slideDuration, 4000);
        this.scale = typedArrayObtainStyledAttributes.getFloat(R.styleable.SlideshowView_scale, 1.0f);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SlideshowView_hidingHeight2, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.rnd = new Random(SystemClock.elapsedRealtime());
        setClipChildren(false);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        this.img1 = new FullsizeImageView(getContext());
        FullsizeImageView fullsizeImageView = this.img1;
        fullsizeImageView.hidePlayButton = true;
        fullsizeImageView.hidingHeight = dimensionPixelSize;
        fullsizeImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.img1.setOnImageChangedListener(this);
        addView(this.img1, layoutParams);
        this.img2 = new FullsizeImageView(getContext());
        FullsizeImageView fullsizeImageView2 = this.img2;
        fullsizeImageView2.hidePlayButton = true;
        fullsizeImageView2.hidingHeight = dimensionPixelSize;
        fullsizeImageView2.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.img2.setOnImageChangedListener(this);
        addView(this.img2, layoutParams);
    }

    public void setOnImageChangedListener(NVImageView.OnImageChangedListener onImageChangedListener) {
        this.listener = onImageChangedListener;
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

    public void setMediaList(List<Media> list) {
        List<Media> list2 = this.mediaList;
        if (list2 == list || Utils.isEqualsContent(list2, list)) {
            return;
        }
        this.mediaList = list;
        this.index = 0;
        this.nextReqed = false;
        this.animationStartTime = 0L;
        if (list != null && list.size() > 0) {
            this.img1.setImageMedia(list.get(0));
            if (this.img1.getStatus() == 4) {
                this.animationStartTime = 1L;
            }
        } else {
            this.img1.setImageMedia(null);
            this.animationStartTime = 1L;
        }
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x004e  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected boolean drawChild(android.graphics.Canvas r20, android.view.View r21, long r22) {
        /*
            Method dump skipped, instructions count: 439
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.widget.SlideshowView.drawChild(android.graphics.Canvas, android.view.View, long):boolean");
    }

    @Override // com.narvii.widget.NVImageView.OnImageChangedListener
    public void onImageChanged(NVImageView nVImageView, int i, Media media) {
        List<Media> list = this.mediaList;
        if (list != null && list.size() > 0) {
            invalidate();
        }
        NVImageView.OnImageChangedListener onImageChangedListener = this.listener;
        if (onImageChangedListener != null) {
            onImageChangedListener.onImageChanged(nVImageView, i, media);
        }
    }
}
