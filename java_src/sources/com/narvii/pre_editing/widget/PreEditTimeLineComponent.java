package com.narvii.pre_editing.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.view.ViewCompat;
import com.narvii.mediaeditor.R;
import com.narvii.pre_editing.PreEditFrameRetriever;
import com.narvii.pre_editing.frame.VideoFrameReader;
import com.narvii.video.widget.MediaRetrieveController2;
import com.narvii.widget.NVImageView;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class PreEditTimeLineComponent extends FrameLayout implements MediaRetrieveController2.TimeLineControllerCallback {

    @Nullable
    private TimeLineCallback callback;
    private final int controllerHandlerWidth;
    private int controllerWidthOffset;
    private final int frameContainerHeight;

    @NotNull
    private LinearLayout frameItemContainer;
    private int frameItemCount;

    @NotNull
    private List<NVImageView> frameItemViews;
    private boolean interceptedByController;
    private final int leftMarginSize;
    private long maxOutputLength;
    private long mediaDuration;
    private long minOutputLength;

    @NotNull
    private MediaRetrieveController2 retrieveCutter;
    private final int topMarginSize;

    public interface TimeLineCallback {
        void onFrameLocatedDuringMove(long j6, long j10, boolean z6, boolean z10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PreEditTimeLineComponent(@NotNull Context context, @NotNull AttributeSet attr) {
        super(context, attr);
        t.j(context, "context");
        t.j(attr, "attr");
        this.frameItemContainer = new LinearLayout(context);
        this.retrieveCutter = new MediaRetrieveController2(context);
        this.frameItemViews = new ArrayList();
        this.controllerHandlerWidth = getResources().getDimensionPixelSize(R.dimen.video_editor_controller_handler_width);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.media_retrieve_boundary_left_size);
        this.leftMarginSize = dimensionPixelSize;
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.media_retrieve_boundary_top_size);
        this.topMarginSize = dimensionPixelSize2;
        int dimensionPixelSize3 = getResources().getDimensionPixelSize(R.dimen.media_retrieve_frame_height);
        this.frameContainerHeight = dimensionPixelSize3;
        setClipChildren(false);
        setClipToPadding(false);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attr, R.styleable.PreEditTimeLineComponent, 0, 0);
        t.i(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        this.frameItemCount = typedArrayObtainStyledAttributes.getInt(R.styleable.PreEditTimeLineComponent_frame_item_count, 12);
        typedArrayObtainStyledAttributes.recycle();
        LinearLayout linearLayout = new LinearLayout(context);
        this.frameItemContainer = linearLayout;
        linearLayout.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        this.frameItemContainer.setOrientation(0);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, dimensionPixelSize3);
        layoutParams.topMargin = dimensionPixelSize2;
        layoutParams.leftMargin = dimensionPixelSize;
        layoutParams.rightMargin = dimensionPixelSize;
        addView(this.frameItemContainer, layoutParams);
        int i10 = this.frameItemCount;
        for (int i11 = 0; i11 < i10; i11++) {
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

    public final long getCutterEndPosition() {
        return this.retrieveCutter.getCutterEndPosition();
    }

    public final long getCutterStartPosition() {
        return this.retrieveCutter.getCutterStartPosition();
    }

    public final void initTimeLine(long j6, long j10, long j11, long j12, long j13, @Nullable TimeLineCallback timeLineCallback, @Nullable PreEditFrameRetriever preEditFrameRetriever) {
        this.callback = timeLineCallback;
        this.mediaDuration = j6;
        this.maxOutputLength = j10;
        this.minOutputLength = j11;
        this.retrieveCutter.initComponent(j11, j10, this, 0L, j6, j12, j13);
        this.retrieveCutter.updateMediaSectionStartTime(0);
        long j14 = this.mediaDuration;
        int i10 = this.frameItemCount;
        final long j15 = j14 / ((long) i10);
        if (preEditFrameRetriever != null) {
            preEditFrameRetriever.retrieveFrame(j14, i10, new VideoFrameReader.FrameCallback() { // from class: com.narvii.pre_editing.widget.PreEditTimeLineComponent.initTimeLine.1
                @Override // com.narvii.pre_editing.frame.VideoFrameReader.FrameCallback
                public void onFrameBitmapLoaded(long j16, @Nullable Bitmap bitmap) {
                    int i11 = (int) (j16 / j15);
                    if (i11 < 0 || i11 >= this.frameItemViews.size()) {
                        return;
                    }
                    ((NVImageView) this.frameItemViews.get(i11)).setImageBitmap(bitmap);
                }
            });
        }
    }

    @Override // com.narvii.video.widget.MediaRetrieveController2.TimeLineControllerCallback
    public void onControllerMoved(long j6, long j10, boolean z6, boolean z10) {
        long j11 = 100;
        long j12 = (j6 / j11) * j11;
        long j13 = (j10 / j11) * j11;
        TimeLineCallback timeLineCallback = this.callback;
        if (timeLineCallback != null) {
            timeLineCallback.onFrameLocatedDuringMove(j12, j13, z6, !z10);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(@NotNull MotionEvent ev) {
        t.j(ev, "ev");
        if (ev.getActionMasked() == 0) {
            this.interceptedByController = this.retrieveCutter.isTouchInSlideHandler(ev.getX());
        }
        return this.interceptedByController;
    }

    @Override // android.view.View
    public boolean onTouchEvent(@NotNull MotionEvent event) {
        t.j(event, "event");
        if (event.getActionMasked() == 1 || event.getActionMasked() == 3) {
            this.interceptedByController = false;
        }
        this.retrieveCutter.onSlideHandlerMove(event);
        return true;
    }

    public final void updatePlaybackTime(long j6) {
        long cutterEndPosition = this.retrieveCutter.getCutterEndPosition();
        if (cutterEndPosition <= 0 || j6 >= cutterEndPosition) {
            return;
        }
        this.retrieveCutter.updatePointer((int) j6);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        int i14 = this.leftMarginSize - this.controllerHandlerWidth;
        this.controllerWidthOffset = i14;
        this.retrieveCutter.layoutRect(i14, 0, getWidth() - this.controllerWidthOffset, (this.topMarginSize * 2) + this.frameContainerHeight);
    }
}
