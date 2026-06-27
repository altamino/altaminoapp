package com.narvii.pre_editing.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.narvii.mediaeditor.R;
import com.narvii.pre_editing.PreEditFrameRetriever;
import com.narvii.pre_editing.frame.VideoFrameReader;
import com.narvii.video.widget.MediaRetrieveController2;
import com.narvii.widget.NVImageView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PreEditTimeLineComponent.kt */
/* loaded from: classes3.dex */
public final class PreEditTimeLineComponent extends FrameLayout implements MediaRetrieveController2.TimeLineControllerCallback {
    private HashMap _$_findViewCache;
    private TimeLineCallback callback;
    private final int controllerHandlerWidth;
    private int controllerWidthOffset;
    private final int frameContainerHeight;
    private LinearLayout frameItemContainer;
    private int frameItemCount;
    private List<NVImageView> frameItemViews;
    private boolean interceptedByController;
    private final int leftMarginSize;
    private long maxOutputLength;
    private long mediaDuration;
    private long minOutputLength;
    private MediaRetrieveController2 retrieveCutter;
    private final int topMarginSize;

    /* compiled from: PreEditTimeLineComponent.kt */
    public interface TimeLineCallback {
        void onFrameLocatedDuringMove(long j, long j2, boolean z, boolean z2);
    }

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PreEditTimeLineComponent(Context context, AttributeSet attr) {
        super(context, attr);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attr, "attr");
        this.frameItemContainer = new LinearLayout(context);
        this.retrieveCutter = new MediaRetrieveController2(context);
        this.frameItemViews = new ArrayList();
        this.controllerHandlerWidth = getResources().getDimensionPixelSize(R.dimen.video_editor_controller_handler_width);
        this.leftMarginSize = getResources().getDimensionPixelSize(R.dimen.media_retrieve_boundary_left_size);
        this.topMarginSize = getResources().getDimensionPixelSize(R.dimen.media_retrieve_boundary_top_size);
        this.frameContainerHeight = getResources().getDimensionPixelSize(R.dimen.media_retrieve_frame_height);
        setClipChildren(false);
        setClipToPadding(false);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attr, R.styleable.PreEditTimeLineComponent, 0, 0);
        this.frameItemCount = typedArrayObtainStyledAttributes.getInt(R.styleable.PreEditTimeLineComponent_frame_item_count, 12);
        typedArrayObtainStyledAttributes.recycle();
        this.frameItemContainer = new LinearLayout(context);
        this.frameItemContainer.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        this.frameItemContainer.setOrientation(0);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, this.frameContainerHeight);
        layoutParams.topMargin = this.topMarginSize;
        int i = this.leftMarginSize;
        layoutParams.leftMargin = i;
        layoutParams.rightMargin = i;
        addView(this.frameItemContainer, layoutParams);
        int i2 = this.frameItemCount;
        for (int i3 = 0; i3 < i2; i3++) {
            NVImageView nVImageView = new NVImageView(context);
            nVImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -1);
            layoutParams2.weight = 1.0f;
            this.frameItemContainer.addView(nVImageView, layoutParams2);
            this.frameItemViews.add(nVImageView);
        }
        this.retrieveCutter.setBoundaryMode(MediaRetrieveController2.BoundaryMode.SHIFT);
        addView(this.retrieveCutter, new FrameLayout.LayoutParams(-1, -1));
    }

    public final void initTimeLine(long j, long j2, long j3, long j4, long j5, TimeLineCallback timeLineCallback, PreEditFrameRetriever preEditFrameRetriever) {
        this.callback = timeLineCallback;
        this.mediaDuration = j;
        this.maxOutputLength = j2;
        this.minOutputLength = j3;
        this.retrieveCutter.initComponent(j3, j2, this, 0L, j, j4, j5);
        this.retrieveCutter.updateMediaSectionStartTime(0);
        long j6 = this.mediaDuration;
        int i = this.frameItemCount;
        final long j7 = j6 / i;
        if (preEditFrameRetriever != null) {
            preEditFrameRetriever.retrieveFrame(j6, i, new VideoFrameReader.FrameCallback() { // from class: com.narvii.pre_editing.widget.PreEditTimeLineComponent.initTimeLine.1
                @Override // com.narvii.pre_editing.frame.VideoFrameReader.FrameCallback
                public void onFrameBitmapLoaded(long j8, Bitmap bitmap) {
                    int i2 = (int) (j8 / j7);
                    int size = PreEditTimeLineComponent.this.frameItemViews.size();
                    if (i2 >= 0 && size > i2) {
                        ((NVImageView) PreEditTimeLineComponent.this.frameItemViews.get(i2)).setImageBitmap(bitmap);
                    }
                }
            });
        }
    }

    public final long getCutterStartPosition() {
        return this.retrieveCutter.getCutterStartPosition();
    }

    public final long getCutterEndPosition() {
        return this.retrieveCutter.getCutterEndPosition();
    }

    public final void updatePlaybackTime(long j) {
        long cutterEndPosition = this.retrieveCutter.getCutterEndPosition();
        if (cutterEndPosition <= 0 || j >= cutterEndPosition) {
            return;
        }
        this.retrieveCutter.updatePointer((int) j);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.controllerWidthOffset = this.leftMarginSize - this.controllerHandlerWidth;
        this.retrieveCutter.layoutRect(this.controllerWidthOffset, 0, getWidth() - this.controllerWidthOffset, (this.topMarginSize * 2) + this.frameContainerHeight);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        Intrinsics.checkParameterIsNotNull(ev, "ev");
        if (ev.getActionMasked() == 0) {
            this.interceptedByController = this.retrieveCutter.isTouchInSlideHandler(ev.getX());
        }
        return this.interceptedByController;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        Intrinsics.checkParameterIsNotNull(event, "event");
        if (event.getActionMasked() == 1 || event.getActionMasked() == 3) {
            this.interceptedByController = false;
        }
        this.retrieveCutter.onSlideHandlerMove(event);
        return true;
    }

    @Override // com.narvii.video.widget.MediaRetrieveController2.TimeLineControllerCallback
    public void onControllerMoved(long j, long j2, boolean z, boolean z2) {
        long j3 = 100;
        long j4 = (j / j3) * j3;
        long j5 = (j2 / j3) * j3;
        TimeLineCallback timeLineCallback = this.callback;
        if (timeLineCallback != null) {
            timeLineCallback.onFrameLocatedDuringMove(j4, j5, z, !z2);
        }
    }
}
