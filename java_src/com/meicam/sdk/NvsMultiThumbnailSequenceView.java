package com.meicam.sdk;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import com.meicam.sdk.NvsIconGenerator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes2.dex */
public class NvsMultiThumbnailSequenceView extends HorizontalScrollView implements NvsIconGenerator.IconCallback {
    private static final String TAG = "Meicam";
    public static final int THUMBNAIL_IMAGE_FILLMODE_ASPECTCROP = 1;
    public static final int THUMBNAIL_IMAGE_FILLMODE_STRETCH = 0;
    private static final int THUMBNAIL_SEQUENCE_FLAGS_CACHED_KEYFRAME_ONLY = 1;
    private static final int THUMBNAIL_SEQUENCE_FLAGS_CACHED_KEYFRAME_ONLY_VALID = 2;
    private ContentView m_contentView;
    private int m_contentWidth;
    private ArrayList<ThumbnailSequenceDesc> m_descArray;
    private int m_endPadding;
    private NvsIconGenerator m_iconGenerator;
    private int m_maxThumbnailWidth;
    private long m_maxTimelinePosToScroll;
    private double m_pixelPerMicrosecond;
    Bitmap m_placeholderBitmap;
    private OnScrollChangeListener m_scrollChangeListener;
    private boolean m_scrollEnabled;
    private int m_startPadding;
    private float m_thumbnailAspectRatio;
    private int m_thumbnailImageFillMode;
    private TreeMap<ThumbnailId, Thumbnail> m_thumbnailMap;
    private ArrayList<ThumbnailSequence> m_thumbnailSequenceArray;
    private TreeMap<Integer, ThumbnailSequence> m_thumbnailSequenceMap;
    private boolean m_updatingThumbnail;

    public interface OnScrollChangeListener {
        void onScrollChanged(NvsMultiThumbnailSequenceView nvsMultiThumbnailSequenceView, int i, int i2);
    }

    private static class Thumbnail {
        ImageView m_imageView;
        ThumbnailSequence m_owner;
        long m_timestamp = 0;
        long m_iconTaskId = 0;
        boolean m_imageViewUpToDate = false;
        boolean m_touched = false;
    }

    public static class ThumbnailSequenceDesc {
        public String mediaFilePath;
        public long inPoint = 0;
        public long outPoint = 4000000;
        public long trimIn = 0;
        public long trimOut = 4000000;
        public boolean stillImageHint = false;
        public boolean onlyDecodeKeyFrame = false;
        public float thumbnailAspectRatio = 0.0f;
    }

    private static class ThumbnailSequence {
        String m_mediaFilePath;
        int m_index = 0;
        long m_inPoint = 0;
        long m_outPoint = 0;
        long m_trimIn = 0;
        long m_trimDuration = 0;
        boolean m_stillImageHint = false;
        boolean m_onlyDecodeKeyFrame = false;
        public float m_thumbnailAspectRatio = 0.0f;
        int m_flags = 0;
        int m_x = 0;
        int m_width = 0;
        int m_thumbnailWidth = 0;

        public long calcTimestampFromX(int i) {
            long j = this.m_trimIn;
            double d = i - this.m_x;
            double d2 = this.m_width;
            Double.isNaN(d);
            Double.isNaN(d2);
            double d3 = d / d2;
            double d4 = this.m_trimDuration;
            Double.isNaN(d4);
            return j + ((long) Math.floor((d3 * d4) + 0.5d));
        }
    }

    private static class ThumbnailId implements Comparable<ThumbnailId> {
        public int m_seqIndex;
        public long m_timestamp;

        public ThumbnailId(int i, long j) {
            this.m_seqIndex = i;
            this.m_timestamp = j;
        }

        @Override // java.lang.Comparable
        public int compareTo(ThumbnailId thumbnailId) {
            int i = this.m_seqIndex;
            int i2 = thumbnailId.m_seqIndex;
            if (i < i2) {
                return -1;
            }
            if (i > i2) {
                return 1;
            }
            long j = this.m_timestamp;
            long j2 = thumbnailId.m_timestamp;
            if (j < j2) {
                return -1;
            }
            return j > j2 ? 1 : 0;
        }
    }

    private class ContentView extends ViewGroup {
        @Override // android.view.ViewGroup
        public boolean shouldDelayChildPressedState() {
            return false;
        }

        public ContentView(Context context) {
            super(context);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int i3 = NvsMultiThumbnailSequenceView.this.m_contentWidth;
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            if (mode != 1073741824 && mode != Integer.MIN_VALUE) {
                size = NvsMultiThumbnailSequenceView.this.getHeight();
            }
            setMeasuredDimension(ViewGroup.resolveSizeAndState(Math.max(i3, getSuggestedMinimumWidth()), i, 0), ViewGroup.resolveSizeAndState(Math.max(size, getSuggestedMinimumHeight()), i2, 0));
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            NvsMultiThumbnailSequenceView.this.updateThumbnails();
        }

        @Override // android.view.View
        protected void onSizeChanged(int i, int i2, int i3, int i4) {
            if (i2 != i4) {
                NvsMultiThumbnailSequenceView.this.requestUpdateThumbnailSequenceGeometry();
            }
            super.onSizeChanged(i, i2, i3, i4);
        }
    }

    public NvsMultiThumbnailSequenceView(Context context) {
        super(context);
        this.m_iconGenerator = null;
        this.m_scrollEnabled = true;
        this.m_thumbnailAspectRatio = 0.5625f;
        this.m_pixelPerMicrosecond = 7.2E-5d;
        this.m_startPadding = 0;
        this.m_endPadding = 0;
        this.m_thumbnailImageFillMode = 0;
        this.m_maxTimelinePosToScroll = 0L;
        this.m_thumbnailSequenceArray = new ArrayList<>();
        this.m_thumbnailSequenceMap = new TreeMap<>();
        this.m_contentWidth = 0;
        this.m_thumbnailMap = new TreeMap<>();
        this.m_maxThumbnailWidth = 0;
        this.m_updatingThumbnail = false;
        NvsUtils.checkFunctionInMainThread();
        init(context);
    }

    public NvsMultiThumbnailSequenceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.m_iconGenerator = null;
        this.m_scrollEnabled = true;
        this.m_thumbnailAspectRatio = 0.5625f;
        this.m_pixelPerMicrosecond = 7.2E-5d;
        this.m_startPadding = 0;
        this.m_endPadding = 0;
        this.m_thumbnailImageFillMode = 0;
        this.m_maxTimelinePosToScroll = 0L;
        this.m_thumbnailSequenceArray = new ArrayList<>();
        this.m_thumbnailSequenceMap = new TreeMap<>();
        this.m_contentWidth = 0;
        this.m_thumbnailMap = new TreeMap<>();
        this.m_maxThumbnailWidth = 0;
        this.m_updatingThumbnail = false;
        NvsUtils.checkFunctionInMainThread();
        init(context);
    }

    public NvsMultiThumbnailSequenceView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.m_iconGenerator = null;
        this.m_scrollEnabled = true;
        this.m_thumbnailAspectRatio = 0.5625f;
        this.m_pixelPerMicrosecond = 7.2E-5d;
        this.m_startPadding = 0;
        this.m_endPadding = 0;
        this.m_thumbnailImageFillMode = 0;
        this.m_maxTimelinePosToScroll = 0L;
        this.m_thumbnailSequenceArray = new ArrayList<>();
        this.m_thumbnailSequenceMap = new TreeMap<>();
        this.m_contentWidth = 0;
        this.m_thumbnailMap = new TreeMap<>();
        this.m_maxThumbnailWidth = 0;
        this.m_updatingThumbnail = false;
        NvsUtils.checkFunctionInMainThread();
        init(context);
    }

    public NvsMultiThumbnailSequenceView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.m_iconGenerator = null;
        this.m_scrollEnabled = true;
        this.m_thumbnailAspectRatio = 0.5625f;
        this.m_pixelPerMicrosecond = 7.2E-5d;
        this.m_startPadding = 0;
        this.m_endPadding = 0;
        this.m_thumbnailImageFillMode = 0;
        this.m_maxTimelinePosToScroll = 0L;
        this.m_thumbnailSequenceArray = new ArrayList<>();
        this.m_thumbnailSequenceMap = new TreeMap<>();
        this.m_contentWidth = 0;
        this.m_thumbnailMap = new TreeMap<>();
        this.m_maxThumbnailWidth = 0;
        this.m_updatingThumbnail = false;
        NvsUtils.checkFunctionInMainThread();
        init(context);
    }

    public void setThumbnailSequenceDescArray(ArrayList<ThumbnailSequenceDesc> arrayList) {
        NvsUtils.checkFunctionInMainThread();
        if (arrayList == this.m_descArray) {
            return;
        }
        clearThumbnailSequences();
        this.m_placeholderBitmap = null;
        this.m_descArray = arrayList;
        if (arrayList != null) {
            int i = 0;
            Iterator<ThumbnailSequenceDesc> it = arrayList.iterator();
            long j = 0;
            while (it.hasNext()) {
                ThumbnailSequenceDesc next = it.next();
                if (next.mediaFilePath != null) {
                    long j2 = next.inPoint;
                    if (j2 >= j && next.outPoint > j2) {
                        long j3 = next.trimIn;
                        if (j3 >= 0 && next.trimOut > j3) {
                            ThumbnailSequence thumbnailSequence = new ThumbnailSequence();
                            thumbnailSequence.m_index = i;
                            thumbnailSequence.m_mediaFilePath = next.mediaFilePath;
                            thumbnailSequence.m_inPoint = next.inPoint;
                            thumbnailSequence.m_outPoint = next.outPoint;
                            long j4 = next.trimIn;
                            thumbnailSequence.m_trimIn = j4;
                            thumbnailSequence.m_trimDuration = next.trimOut - j4;
                            thumbnailSequence.m_stillImageHint = next.stillImageHint;
                            thumbnailSequence.m_onlyDecodeKeyFrame = next.onlyDecodeKeyFrame;
                            thumbnailSequence.m_thumbnailAspectRatio = next.thumbnailAspectRatio;
                            this.m_thumbnailSequenceArray.add(thumbnailSequence);
                            i++;
                            j = next.outPoint;
                        }
                    }
                }
                Log.e(TAG, "Invalid ThumbnailSequenceDesc!");
            }
        }
        updateThumbnailSequenceGeometry();
    }

    public ArrayList<ThumbnailSequenceDesc> getThumbnailSequenceDescArray() {
        return this.m_descArray;
    }

    public void setThumbnailImageFillMode(int i) {
        NvsUtils.checkFunctionInMainThread();
        int i2 = this.m_thumbnailImageFillMode;
        if (i2 != 1 && i2 != 0) {
            this.m_thumbnailImageFillMode = 0;
        }
        if (this.m_thumbnailImageFillMode == i) {
            return;
        }
        this.m_thumbnailImageFillMode = i;
        updateThumbnailSequenceGeometry();
    }

    public int getThumbnailImageFillMode() {
        return this.m_thumbnailImageFillMode;
    }

    public void setThumbnailAspectRatio(float f) {
        NvsUtils.checkFunctionInMainThread();
        if (f < 0.1f) {
            f = 0.1f;
        } else if (f > 10.0f) {
            f = 10.0f;
        }
        if (Math.abs(this.m_thumbnailAspectRatio - f) < 0.001f) {
            return;
        }
        this.m_thumbnailAspectRatio = f;
        updateThumbnailSequenceGeometry();
    }

    public float getThumbnailAspectRatio() {
        return this.m_thumbnailAspectRatio;
    }

    public void setPixelPerMicrosecond(double d) {
        NvsUtils.checkFunctionInMainThread();
        if (d <= 0.0d || d == this.m_pixelPerMicrosecond) {
            return;
        }
        this.m_pixelPerMicrosecond = d;
        updateThumbnailSequenceGeometry();
    }

    public double getPixelPerMicrosecond() {
        return this.m_pixelPerMicrosecond;
    }

    public void setStartPadding(int i) {
        NvsUtils.checkFunctionInMainThread();
        if (i < 0 || i == this.m_startPadding) {
            return;
        }
        this.m_startPadding = i;
        updateThumbnailSequenceGeometry();
    }

    public int getStartPadding() {
        return this.m_startPadding;
    }

    public void setEndPadding(int i) {
        NvsUtils.checkFunctionInMainThread();
        if (i < 0 || i == this.m_endPadding) {
            return;
        }
        this.m_endPadding = i;
        updateThumbnailSequenceGeometry();
    }

    public int getEndPadding() {
        return this.m_endPadding;
    }

    public void setMaxTimelinePosToScroll(int i) {
        NvsUtils.checkFunctionInMainThread();
        long jMax = Math.max(i, 0);
        if (jMax == this.m_maxTimelinePosToScroll) {
            return;
        }
        this.m_maxTimelinePosToScroll = jMax;
        updateThumbnailSequenceGeometry();
    }

    public long getMaxTimelinePosToScroll() {
        return this.m_maxTimelinePosToScroll;
    }

    public long mapTimelinePosFromX(int i) {
        NvsUtils.checkFunctionInMainThread();
        double scrollX = (i + getScrollX()) - this.m_startPadding;
        double d = this.m_pixelPerMicrosecond;
        Double.isNaN(scrollX);
        return (long) Math.floor((scrollX / d) + 0.5d);
    }

    public int mapXFromTimelinePos(long j) {
        NvsUtils.checkFunctionInMainThread();
        double d = j;
        double d2 = this.m_pixelPerMicrosecond;
        Double.isNaN(d);
        return (((int) Math.floor((d * d2) + 0.5d)) + this.m_startPadding) - getScrollX();
    }

    public void scaleWithAnchor(double d, int i) {
        NvsUtils.checkFunctionInMainThread();
        if (d <= 0.0d) {
            return;
        }
        long jMapTimelinePosFromX = mapTimelinePosFromX(i);
        this.m_pixelPerMicrosecond *= d;
        updateThumbnailSequenceGeometry();
        scrollTo((getScrollX() + mapXFromTimelinePos(jMapTimelinePosFromX)) - i, 0);
    }

    public void setOnScrollChangeListenser(OnScrollChangeListener onScrollChangeListener) {
        NvsUtils.checkFunctionInMainThread();
        this.m_scrollChangeListener = onScrollChangeListener;
    }

    public OnScrollChangeListener getOnScrollChangeListenser() {
        NvsUtils.checkFunctionInMainThread();
        return this.m_scrollChangeListener;
    }

    public void setScrollEnabled(boolean z) {
        this.m_scrollEnabled = z;
    }

    public boolean getScrollEnabled() {
        return this.m_scrollEnabled;
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isInEditMode()) {
            return;
        }
        this.m_iconGenerator = new NvsIconGenerator();
        this.m_iconGenerator.setIconCallback(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        cancelIconTask();
        this.m_scrollChangeListener = null;
        NvsIconGenerator nvsIconGenerator = this.m_iconGenerator;
        if (nvsIconGenerator != null) {
            nvsIconGenerator.release();
            this.m_iconGenerator = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        OnScrollChangeListener onScrollChangeListener = this.m_scrollChangeListener;
        if (onScrollChangeListener != null) {
            onScrollChangeListener.onScrollChanged(this, i, i3);
        }
        updateThumbnails();
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.m_scrollEnabled) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.m_scrollEnabled) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    private void init(Context context) {
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        this.m_contentView = new ContentView(context);
        addView(this.m_contentView, new FrameLayout.LayoutParams(-2, -1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestUpdateThumbnailSequenceGeometry() {
        new Handler().post(new Runnable() { // from class: com.meicam.sdk.NvsMultiThumbnailSequenceView.1
            @Override // java.lang.Runnable
            public void run() {
                NvsMultiThumbnailSequenceView.this.updateThumbnailSequenceGeometry();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateThumbnailSequenceGeometry() {
        int iMax;
        cancelIconTask();
        clearThumbnails();
        int height = getHeight();
        if (height == 0) {
            return;
        }
        this.m_thumbnailSequenceMap.clear();
        int i = this.m_startPadding;
        this.m_maxThumbnailWidth = 0;
        Iterator<ThumbnailSequence> it = this.m_thumbnailSequenceArray.iterator();
        while (it.hasNext()) {
            ThumbnailSequence next = it.next();
            next.m_flags &= -3;
            double d = next.m_inPoint;
            double d2 = this.m_pixelPerMicrosecond;
            Double.isNaN(d);
            int iFloor = ((int) Math.floor((d * d2) + 0.5d)) + this.m_startPadding;
            double d3 = next.m_outPoint;
            double d4 = this.m_pixelPerMicrosecond;
            Double.isNaN(d3);
            int iFloor2 = ((int) Math.floor((d3 * d4) + 0.5d)) + this.m_startPadding;
            if (iFloor2 > iFloor) {
                next.m_x = iFloor;
                next.m_width = iFloor2 - iFloor;
                float f = next.m_thumbnailAspectRatio;
                if (f <= 0.0f) {
                    f = this.m_thumbnailAspectRatio;
                }
                double d5 = height * f;
                Double.isNaN(d5);
                next.m_thumbnailWidth = (int) Math.floor(d5 + 0.5d);
                next.m_thumbnailWidth = Math.max(next.m_thumbnailWidth, 1);
                this.m_maxThumbnailWidth = Math.max(next.m_thumbnailWidth, this.m_maxThumbnailWidth);
                this.m_thumbnailSequenceMap.put(Integer.valueOf(iFloor), next);
                i = iFloor2;
            }
        }
        long j = this.m_maxTimelinePosToScroll;
        if (j <= 0) {
            i += this.m_endPadding;
        } else {
            double d6 = this.m_startPadding;
            double d7 = j;
            double d8 = this.m_pixelPerMicrosecond;
            Double.isNaN(d7);
            Double.isNaN(d6);
            int iFloor3 = (int) Math.floor(d6 + (d7 * d8) + 0.5d);
            if (iFloor3 < i) {
                i = iFloor3;
            }
        }
        this.m_contentWidth = i;
        this.m_contentView.layout(0, 0, this.m_contentWidth, getHeight());
        this.m_contentView.requestLayout();
        if (getWidth() + getScrollX() <= this.m_contentWidth || (iMax = Math.max(getScrollX() - ((getWidth() + getScrollX()) - this.m_contentWidth), 0)) == getScrollX()) {
            return;
        }
        scrollTo(iMax, 0);
    }

    private static class ClipImageView extends ImageView {
        private int m_clipWidth;

        ClipImageView(Context context, int i) {
            super(context);
            this.m_clipWidth = i;
        }

        @Override // android.widget.ImageView, android.view.View
        protected void onDraw(Canvas canvas) {
            canvas.clipRect(new Rect(0, 0, this.m_clipWidth, getHeight()));
            super.onDraw(canvas);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateThumbnails() {
        Drawable drawable;
        Bitmap bitmap;
        boolean z;
        if (this.m_iconGenerator == null) {
            return;
        }
        if (this.m_thumbnailSequenceMap.isEmpty()) {
            clearThumbnails();
            return;
        }
        int i = this.m_maxThumbnailWidth;
        int scrollX = getScrollX();
        int width = getWidth();
        int iMax = Math.max(scrollX - i, this.m_startPadding);
        int i2 = width + iMax + i;
        if (i2 <= iMax) {
            clearThumbnails();
            return;
        }
        Integer numFloorKey = this.m_thumbnailSequenceMap.floorKey(Integer.valueOf(iMax));
        if (numFloorKey == null) {
            numFloorKey = this.m_thumbnailSequenceMap.firstKey();
        }
        Iterator<Map.Entry<Integer, ThumbnailSequence>> it = this.m_thumbnailSequenceMap.tailMap(numFloorKey).entrySet().iterator();
        while (it.hasNext()) {
            ThumbnailSequence value = it.next().getValue();
            int i3 = value.m_x;
            if (value.m_width + i3 >= iMax) {
                if (i3 >= i2) {
                    break;
                }
                if (i3 < iMax) {
                    int i4 = value.m_thumbnailWidth;
                    i3 += ((iMax - i3) / i4) * i4;
                }
                int i5 = value.m_x + value.m_width;
                while (true) {
                    if (i3 >= i5) {
                        z = false;
                        break;
                    }
                    if (i3 >= i2) {
                        z = true;
                        break;
                    }
                    int i6 = value.m_thumbnailWidth;
                    if (i3 + i6 > i5) {
                        i6 = i5 - i3;
                    }
                    long jCalcTimestampFromX = value.calcTimestampFromX(i3);
                    ThumbnailId thumbnailId = new ThumbnailId(value.m_index, jCalcTimestampFromX);
                    Thumbnail thumbnail = this.m_thumbnailMap.get(thumbnailId);
                    if (thumbnail == null) {
                        Thumbnail thumbnail2 = new Thumbnail();
                        thumbnail2.m_owner = value;
                        thumbnail2.m_timestamp = jCalcTimestampFromX;
                        thumbnail2.m_imageViewUpToDate = false;
                        thumbnail2.m_touched = true;
                        this.m_thumbnailMap.put(thumbnailId, thumbnail2);
                        if (i6 == value.m_thumbnailWidth) {
                            thumbnail2.m_imageView = new ImageView(getContext());
                        } else {
                            thumbnail2.m_imageView = new ClipImageView(getContext(), i6);
                        }
                        int i7 = this.m_thumbnailImageFillMode;
                        if (i7 == 0) {
                            thumbnail2.m_imageView.setScaleType(ImageView.ScaleType.FIT_XY);
                        } else if (i7 == 1) {
                            thumbnail2.m_imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                        }
                        this.m_contentView.addView(thumbnail2.m_imageView);
                        thumbnail2.m_imageView.layout(i3, 0, value.m_thumbnailWidth + i3, this.m_contentView.getHeight());
                    } else {
                        thumbnail.m_touched = true;
                    }
                    i3 += i6;
                }
                if (z) {
                    break;
                }
            }
        }
        this.m_updatingThumbnail = true;
        TreeMap treeMap = new TreeMap();
        Iterator<Map.Entry<ThumbnailId, Thumbnail>> it2 = this.m_thumbnailMap.entrySet().iterator();
        boolean z2 = false;
        while (it2.hasNext()) {
            Map.Entry<ThumbnailId, Thumbnail> next = it2.next();
            Thumbnail value2 = next.getValue();
            ImageView imageView = value2.m_imageView;
            if (imageView != null && (drawable = imageView.getDrawable()) != null && (bitmap = ((BitmapDrawable) drawable).getBitmap()) != null) {
                this.m_placeholderBitmap = bitmap;
            }
            if (!value2.m_touched) {
                long j = value2.m_iconTaskId;
                if (j != 0) {
                    this.m_iconGenerator.cancelTask(j);
                }
                this.m_contentView.removeView(value2.m_imageView);
                it2.remove();
            } else {
                value2.m_touched = false;
                if (value2.m_imageViewUpToDate) {
                    treeMap.put(next.getKey(), ((BitmapDrawable) value2.m_imageView.getDrawable()).getBitmap());
                } else {
                    long j2 = value2.m_owner.m_stillImageHint ? 0L : value2.m_timestamp;
                    updateKeyframeOnlyModeForThumbnailSequence(value2.m_owner);
                    int i8 = (value2.m_owner.m_flags & 1) != 0 ? 1 : 0;
                    Bitmap iconFromCache = this.m_iconGenerator.getIconFromCache(value2.m_owner.m_mediaFilePath, j2, i8);
                    if (iconFromCache != null) {
                        treeMap.put(next.getKey(), iconFromCache);
                        if (setBitmapToThumbnail(iconFromCache, value2)) {
                            value2.m_imageViewUpToDate = true;
                            value2.m_iconTaskId = 0L;
                        }
                    } else {
                        value2.m_iconTaskId = this.m_iconGenerator.getIcon(value2.m_owner.m_mediaFilePath, j2, i8);
                        z2 = true;
                    }
                }
            }
        }
        this.m_updatingThumbnail = false;
        if (z2) {
            if (treeMap.isEmpty()) {
                if (this.m_placeholderBitmap != null) {
                    Iterator<Map.Entry<ThumbnailId, Thumbnail>> it3 = this.m_thumbnailMap.entrySet().iterator();
                    while (it3.hasNext()) {
                        Thumbnail value3 = it3.next().getValue();
                        if (!value3.m_imageViewUpToDate) {
                            setBitmapToThumbnail(this.m_placeholderBitmap, value3);
                        }
                    }
                    return;
                }
                return;
            }
            for (Map.Entry<ThumbnailId, Thumbnail> entry : this.m_thumbnailMap.entrySet()) {
                Thumbnail value4 = entry.getValue();
                if (!value4.m_imageViewUpToDate) {
                    Map.Entry entryCeilingEntry = treeMap.ceilingEntry(entry.getKey());
                    if (entryCeilingEntry != null) {
                        setBitmapToThumbnail((Bitmap) entryCeilingEntry.getValue(), value4);
                    } else {
                        setBitmapToThumbnail((Bitmap) treeMap.lastEntry().getValue(), value4);
                    }
                }
            }
        }
    }

    private void updateKeyframeOnlyModeForThumbnailSequence(ThumbnailSequence thumbnailSequence) {
        int i = thumbnailSequence.m_flags;
        if ((i & 2) != 0) {
            return;
        }
        if (thumbnailSequence.m_onlyDecodeKeyFrame) {
            thumbnailSequence.m_flags = i | 3;
            return;
        }
        double d = thumbnailSequence.m_thumbnailWidth;
        double d2 = this.m_pixelPerMicrosecond;
        Double.isNaN(d);
        if (shouldDecodecKeyFrameOnly(thumbnailSequence.m_mediaFilePath, Math.max((long) ((d / d2) + 0.5d), 1L))) {
            thumbnailSequence.m_flags |= 1;
        } else {
            thumbnailSequence.m_flags &= -2;
        }
        thumbnailSequence.m_flags |= 2;
    }

    private boolean shouldDecodecKeyFrameOnly(String str, long j) {
        NvsAVFileInfo aVFileInfo;
        NvsRational videoStreamFrameRate;
        NvsStreamingContext nvsStreamingContext = NvsStreamingContext.getInstance();
        if (nvsStreamingContext == null || (aVFileInfo = nvsStreamingContext.getAVFileInfo(str)) == null || aVFileInfo.getVideoStreamCount() < 1 || (videoStreamFrameRate = aVFileInfo.getVideoStreamFrameRate(0)) == null || videoStreamFrameRate.den <= 0 || videoStreamFrameRate.num <= 0 || aVFileInfo.getVideoStreamDuration(0) < j) {
            return false;
        }
        int iDetectVideoFileKeyframeInterval = nvsStreamingContext.detectVideoFileKeyframeInterval(str);
        if (iDetectVideoFileKeyframeInterval == 0) {
            iDetectVideoFileKeyframeInterval = 30;
        } else if (iDetectVideoFileKeyframeInterval == 1) {
            return false;
        }
        double d = iDetectVideoFileKeyframeInterval;
        double d2 = videoStreamFrameRate.den;
        double d3 = videoStreamFrameRate.num;
        Double.isNaN(d2);
        Double.isNaN(d3);
        Double.isNaN(d);
        int i = (int) (d * (d2 / d3) * 1000000.0d);
        if (iDetectVideoFileKeyframeInterval <= 30) {
            double d4 = j;
            double d5 = i;
            Double.isNaN(d5);
            if (d4 > d5 * 0.9d) {
                return true;
            }
        } else if (iDetectVideoFileKeyframeInterval <= 60) {
            double d6 = j;
            double d7 = i;
            Double.isNaN(d7);
            if (d6 > d7 * 0.8d) {
                return true;
            }
        } else if (iDetectVideoFileKeyframeInterval <= 100) {
            double d8 = j;
            double d9 = i;
            Double.isNaN(d9);
            if (d8 > d9 * 0.7d) {
                return true;
            }
        } else if (iDetectVideoFileKeyframeInterval <= 150) {
            double d10 = j;
            double d11 = i;
            Double.isNaN(d11);
            if (d10 > d11 * 0.5d) {
                return true;
            }
        } else if (iDetectVideoFileKeyframeInterval <= 250) {
            double d12 = j;
            double d13 = i;
            Double.isNaN(d13);
            if (d12 > d13 * 0.3d) {
                return true;
            }
        } else {
            double d14 = j;
            double d15 = i;
            Double.isNaN(d15);
            if (d14 > d15 * 0.2d) {
                return true;
            }
        }
        return false;
    }

    private boolean setBitmapToThumbnail(Bitmap bitmap, Thumbnail thumbnail) {
        ImageView imageView;
        if (bitmap == null || (imageView = thumbnail.m_imageView) == null) {
            return false;
        }
        imageView.setImageBitmap(bitmap);
        return true;
    }

    private void clearThumbnailSequences() {
        cancelIconTask();
        clearThumbnails();
        this.m_thumbnailSequenceArray.clear();
        this.m_thumbnailSequenceMap.clear();
        this.m_contentWidth = 0;
    }

    private void clearThumbnails() {
        Iterator<Map.Entry<ThumbnailId, Thumbnail>> it = this.m_thumbnailMap.entrySet().iterator();
        while (it.hasNext()) {
            this.m_contentView.removeView(it.next().getValue().m_imageView);
        }
        this.m_thumbnailMap.clear();
    }

    private void cancelIconTask() {
        NvsIconGenerator nvsIconGenerator = this.m_iconGenerator;
        if (nvsIconGenerator != null) {
            nvsIconGenerator.cancelTask(0L);
        }
    }

    @Override // com.meicam.sdk.NvsIconGenerator.IconCallback
    public void onIconReady(Bitmap bitmap, long j, long j2) {
        if (!this.m_updatingThumbnail) {
            updateThumbnails();
        } else {
            new Handler().post(new Runnable() { // from class: com.meicam.sdk.NvsMultiThumbnailSequenceView.2
                @Override // java.lang.Runnable
                public void run() {
                    NvsMultiThumbnailSequenceView.this.updateThumbnails();
                }
            });
        }
    }
}
