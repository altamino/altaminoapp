package com.narvii.video.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.narvii.mediaeditor.R;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.video.interfaces.IAVClipInfoPack;
import com.narvii.video.interfaces.IPreviewPlayer;
import com.narvii.video.interfaces.ITimeLineControllerCallback;
import com.narvii.video.interfaces.ITimelineClip;
import com.narvii.video.interfaces.IVideoServiceCallback;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.services.FrameRetrieverManager;
import com.narvii.video.widget.MediaTimeLineComponent;
import com.narvii.video.widget.videoview.MediaEventListenerImpl;
import com.narvii.widget.HorizontalRecyclerView;
import com.narvii.widget.NVImageView;
import ffmpeg.base.MediaEditingConfig;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MediaTimeLineComponent.kt */
/* loaded from: classes3.dex */
public final class MediaTimeLineComponent extends FrameLayout implements ITimeLineControllerCallback {
    public static final Companion Companion = new Companion(null);
    public static final int DATA_TYPE_AUDIO = 101;
    public static final int DATA_TYPE_CAPTION = 102;
    public static final int DATA_TYPE_PIP = 104;
    public static final int DATA_TYPE_STICKER = 103;
    public static final int DATA_TYPE_VIDEO = 100;
    public static final int REPLAY_TRIGGER_TYPE_ACTION_UP = 2;
    public static final int REPLAY_TRIGGER_TYPE_COMPLETE = 1;
    public static final int REPLAY_TRIGGER_TYPE_REACHED_TRIM_END = 4;
    public static final int REPLAY_TRIGGER_TYPE_SCROLL_IDLE = 3;
    public static final int TIMELINE_TYPE_SCROLLING = 202;
    public static final int TIMELINE_TYPE_TRIMMING = 201;
    private HashMap _$_findViewCache;
    private final ArrayList<Float> accurateCompositionVisibleFrameCountList;
    private final ArrayList<Float> accurateMainTrackCompositionFrameCountList;
    private int activeClipIndex;
    private int additionalFramePostOffset;
    private int additionalFramePreOffset;
    private int additionalFramePreOffsetDx;
    private final AttributeSet attributes;
    private int borderColor;
    private final int bottomGapSize;
    private float componentCenterX;
    private final ArrayList<Integer> compositionLengthMsList;
    private final ArrayList<Float> compositionTailFrameLengthInMsList;
    private int controllerHandlerWidth;
    private int controllerWidthOffset;
    private int curControllerEndTimeOffsetInMs;
    private int curControllerStartTimeOffsetInMs;
    private int curFirstVideoFrameTimeInMs;
    private long curPlaybackTimeBase;
    private int curRecyclerViewState;
    private int curScrollToPosition;
    private int dataType;
    private int frameCellWidth;
    private final int frameCountInBaseRect;
    private final int frameCountInHighlightRect;
    private final int frameItemCornerRadius;
    private int frameOffset;
    private FrameRetrieverManager frameRetrieverManager;
    private boolean interceptedByController;
    private boolean isForAudioWave;
    private int lastOffsetRecord;
    private final Handler mainHandler;
    private final ArrayList<Integer> mainTrackCompositionLengthMsList;
    private final ArrayList<Float> mainTrackCompositionTailFrameLengthInMsList;
    private int maxVisibleSectionIntervalInMs;
    private ArrayList<ITimelineClip> mediaClipList;
    private int mediaLengthInMs;
    private IPreviewPlayer mediaPlayer;
    private int minOutputLength;
    private PendingInitTask pendingInitTask;
    private Runnable playbackTimer;
    private int realFrameTimelineWidth;
    private int realTailFrameWidth;
    private MediaRetrieveController retrieveCutter;
    private final ArrayList<Integer> roundCompositionVisibleFrameCountList;
    private final ArrayList<Integer> roundMainTrackCompositionFrameCountList;
    private final boolean rtl;
    private boolean seeking;
    private final Paint sideShadowPaint;
    private final Rect sideShadowRect;
    private HorizontalRecyclerView timeLine;
    private TimeLineAdapter timeLineAdapter;
    private TimeLineCallback timeLineCallback;
    private float timeLineItemFrameLengthInMs;
    private int timeLineType;
    private int totalVisibleFrameCountForAdapter;

    /* compiled from: MediaTimeLineComponent.kt */
    public interface TimeLineCallback {

        /* compiled from: MediaTimeLineComponent.kt */
        public static final class DefaultImpls {
            public static void onControllerActive(TimeLineCallback timeLineCallback) {
            }

            public static void onFrameLocatedDuringMove(TimeLineCallback timeLineCallback, int i, int i2) {
            }

            public static void onPlayerTick(TimeLineCallback timeLineCallback, long j, long j2) {
            }

            public static void onReplayTriggered(TimeLineCallback timeLineCallback, int i, int i2, int i3) {
            }

            public static void onTimeLineClicked(TimeLineCallback timeLineCallback, ITimelineClip clipInfo) {
                Intrinsics.checkParameterIsNotNull(clipInfo, "clipInfo");
            }

            public static void onTimeLineLayout(TimeLineCallback timeLineCallback) {
            }

            public static void onTimeLineScrolledOffsetChanged(TimeLineCallback timeLineCallback, int i) {
            }
        }

        void onControllerActive();

        void onFrameLocatedDuringMove(int i, int i2);

        void onPlayerTick(long j, long j2);

        void onReplayTriggered(int i, int i2, int i3);

        void onTimeLineClicked(ITimelineClip iTimelineClip);

        void onTimeLineLayout();

        void onTimeLineScrolledOffsetChanged(int i);
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
    public MediaTimeLineComponent(Context context, AttributeSet attributes) {
        super(context, attributes);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributes, "attributes");
        this.attributes = attributes;
        this.timeLineItemFrameLengthInMs = 1000.0f;
        this.minOutputLength = 3000;
        this.compositionLengthMsList = new ArrayList<>();
        this.accurateCompositionVisibleFrameCountList = new ArrayList<>();
        this.roundCompositionVisibleFrameCountList = new ArrayList<>();
        this.compositionTailFrameLengthInMsList = new ArrayList<>();
        this.mainTrackCompositionLengthMsList = new ArrayList<>();
        this.roundMainTrackCompositionFrameCountList = new ArrayList<>();
        this.accurateMainTrackCompositionFrameCountList = new ArrayList<>();
        this.mainTrackCompositionTailFrameLengthInMsList = new ArrayList<>();
        this.borderColor = -1;
        this.sideShadowRect = new Rect();
        this.sideShadowPaint = new Paint();
        this.mainHandler = new Handler(Looper.getMainLooper());
        this.bottomGapSize = getResources().getDimensionPixelSize(R.dimen.media_retrieve_controller_text_size);
        this.mediaClipList = new ArrayList<>();
        this.rtl = Utils.isRtl();
        this.frameItemCornerRadius = getResources().getDimensionPixelSize(R.dimen.scene_editor_time_line_item_corner_radius);
        setClipChildren(false);
        setClipToPadding(false);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(this.attributes, R.styleable.MediaTimeLineComponent, 0, 0);
        this.frameCountInHighlightRect = typedArrayObtainStyledAttributes.getInt(R.styleable.MediaTimeLineComponent_frameCountInHighlightRect, 15);
        this.frameCountInBaseRect = typedArrayObtainStyledAttributes.getInt(R.styleable.MediaTimeLineComponent_frameCountInBaseRect, 21);
        this.controllerHandlerWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.MediaTimeLineComponent_controllerHandlerWidth, getResources().getDimensionPixelSize(R.dimen.video_editor_controller_handler_width));
        this.frameOffset = typedArrayObtainStyledAttributes.getInt(R.styleable.MediaTimeLineComponent_frameOffset, (this.frameCountInBaseRect - this.frameCountInHighlightRect) / 2);
        typedArrayObtainStyledAttributes.recycle();
        setWillNotDraw(false);
        this.sideShadowPaint.setAntiAlias(true);
        this.sideShadowPaint.setStyle(Paint.Style.FILL);
        this.sideShadowPaint.setColor(getResources().getColor(R.color.media_timeline_side_shadow_color));
        this.playbackTimer = new Runnable() { // from class: com.narvii.video.widget.MediaTimeLineComponent.1
            @Override // java.lang.Runnable
            public final void run() {
                MediaRetrieveController mediaRetrieveController;
                IPreviewPlayer iPreviewPlayer = MediaTimeLineComponent.this.mediaPlayer;
                if (iPreviewPlayer != null) {
                    boolean z = MediaTimeLineComponent.this.dataType == 101;
                    long currentAudioPositionInTimeline$default = z ? IPreviewPlayer.DefaultImpls.getCurrentAudioPositionInTimeline$default(iPreviewPlayer, 0, 1, null) : iPreviewPlayer.getCurrentVideoPositionInTimeline();
                    long currentAudioRawPositionInClip$default = z ? IPreviewPlayer.DefaultImpls.getCurrentAudioRawPositionInClip$default(iPreviewPlayer, 0, 1, null) : iPreviewPlayer.getCurrentVideoRawPositionInClip();
                    if (MediaTimeLineComponent.this.getCurRecyclerViewState() == 0 && !MediaTimeLineComponent.this.interceptedByController && currentAudioPositionInTimeline$default >= MediaTimeLineComponent.this.curPlaybackTimeBase) {
                        MediaTimeLineComponent.this.curPlaybackTimeBase = currentAudioPositionInTimeline$default;
                        TimeLineCallback timeLineCallback = MediaTimeLineComponent.this.timeLineCallback;
                        if (timeLineCallback != null) {
                            timeLineCallback.onPlayerTick(currentAudioPositionInTimeline$default, currentAudioRawPositionInClip$default);
                        }
                        TimeLineCallback timeLineCallback2 = MediaTimeLineComponent.this.timeLineCallback;
                        if (timeLineCallback2 != null) {
                            timeLineCallback2.onTimeLineScrolledOffsetChanged(MediaTimeLineComponent.getTimeLineScrolledDx$default(MediaTimeLineComponent.this, false, 1, null));
                        }
                        long j = currentAudioPositionInTimeline$default - (MediaTimeLineComponent.this.curFirstVideoFrameTimeInMs + MediaTimeLineComponent.this.curControllerStartTimeOffsetInMs);
                        if (!MediaTimeLineComponent.this.getSeeking() && (mediaRetrieveController = MediaTimeLineComponent.this.retrieveCutter) != null) {
                            mediaRetrieveController.updatePointerPosition(j / MediaTimeLineComponent.this.timeLineItemFrameLengthInMs);
                        }
                        Log.d("ScenesBackgroundMusicFragment", "curPlaybackTimeBase = " + MediaTimeLineComponent.this.curPlaybackTimeBase + "   timeOffsetInController / timeLineItemFrameLengthInMs = " + (j / MediaTimeLineComponent.this.timeLineItemFrameLengthInMs));
                        if (currentAudioPositionInTimeline$default >= Math.min(MediaTimeLineComponent.this.curFirstVideoFrameTimeInMs + MediaTimeLineComponent.this.curControllerEndTimeOffsetInMs, MediaTimeLineComponent.this.getMediaLengthInMs())) {
                            if (MediaTimeLineComponent.this.curFirstVideoFrameTimeInMs + MediaTimeLineComponent.this.curControllerEndTimeOffsetInMs >= MediaTimeLineComponent.this.getMediaLengthInMs()) {
                                MediaTimeLineComponent.this.curFirstVideoFrameTimeInMs = 0;
                            }
                            int i = MediaTimeLineComponent.this.curFirstVideoFrameTimeInMs + MediaTimeLineComponent.this.curControllerEndTimeOffsetInMs < MediaTimeLineComponent.this.getMediaLengthInMs() ? 4 : 1;
                            MediaTimeLineComponent mediaTimeLineComponent = MediaTimeLineComponent.this;
                            mediaTimeLineComponent.replay(mediaTimeLineComponent.curFirstVideoFrameTimeInMs + MediaTimeLineComponent.this.curControllerStartTimeOffsetInMs, MediaTimeLineComponent.this.curFirstVideoFrameTimeInMs + MediaTimeLineComponent.this.curControllerEndTimeOffsetInMs, i);
                        }
                    }
                }
                MediaTimeLineComponent.this.mainHandler.postDelayed(MediaTimeLineComponent.access$getPlaybackTimer$p(MediaTimeLineComponent.this), 40L);
            }
        };
    }

    public static final /* synthetic */ Runnable access$getPlaybackTimer$p(MediaTimeLineComponent mediaTimeLineComponent) {
        Runnable runnable = mediaTimeLineComponent.playbackTimer;
        if (runnable != null) {
            return runnable;
        }
        Intrinsics.throwUninitializedPropertyAccessException("playbackTimer");
        throw null;
    }

    public final AttributeSet getAttributes() {
        return this.attributes;
    }

    /* compiled from: MediaTimeLineComponent.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final boolean getSeeking() {
        return this.seeking;
    }

    public final void setSeeking(boolean z) {
        this.seeking = z;
    }

    public final int getCurRecyclerViewState() {
        return this.curRecyclerViewState;
    }

    public final void setCurRecyclerViewState(int i) {
        this.curRecyclerViewState = i;
    }

    public final int getMediaLengthInMs() {
        return this.mediaLengthInMs;
    }

    public final void setMediaLengthInMs(int i) {
        this.mediaLengthInMs = i;
    }

    public final int getFrameCellWidth() {
        return this.frameCellWidth;
    }

    public final void setFrameCellWidth(int i) {
        this.frameCellWidth = i;
    }

    public final int getRealTailFrameWidth() {
        return this.realTailFrameWidth;
    }

    public final void setRealTailFrameWidth(int i) {
        this.realTailFrameWidth = i;
    }

    public final int getRealFrameTimelineWidth() {
        return this.realFrameTimelineWidth;
    }

    public final void setRealFrameTimelineWidth(int i) {
        this.realFrameTimelineWidth = i;
    }

    @Override // com.narvii.video.interfaces.ITimeLineControllerCallback
    public void onControllerMoved(int i, int i2, boolean z, boolean z2) {
        int i3;
        int i4;
        this.curControllerStartTimeOffsetInMs = (i / 100) * 100;
        this.curControllerEndTimeOffsetInMs = this.curControllerStartTimeOffsetInMs + (Math.round((i2 - i) / 100.0f) * 100);
        if (z2) {
            TimeLineCallback timeLineCallback = this.timeLineCallback;
            if (timeLineCallback != null) {
                if (z) {
                    i3 = this.curFirstVideoFrameTimeInMs;
                    if (Utils.isRtl()) {
                        i4 = this.curControllerEndTimeOffsetInMs;
                    } else {
                        i4 = this.curControllerStartTimeOffsetInMs;
                    }
                } else {
                    i3 = this.curFirstVideoFrameTimeInMs;
                    if (Utils.isRtl()) {
                        i4 = this.curControllerStartTimeOffsetInMs;
                    } else {
                        i4 = this.curControllerEndTimeOffsetInMs;
                    }
                }
                timeLineCallback.onFrameLocatedDuringMove(i3 + i4, Math.abs(this.curControllerStartTimeOffsetInMs - this.curControllerEndTimeOffsetInMs));
                return;
            }
            return;
        }
        int i5 = this.curFirstVideoFrameTimeInMs;
        replay(this.curControllerStartTimeOffsetInMs + i5, i5 + this.curControllerEndTimeOffsetInMs, 2);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.timeLine = (HorizontalRecyclerView) findViewById(R.id.video_time_line);
        if (this.timeLine == null) {
            this.timeLine = (HorizontalRecyclerView) findViewById(R.id.audio_time_line);
        }
        HorizontalRecyclerView horizontalRecyclerView = this.timeLine;
        if (horizontalRecyclerView != null) {
            horizontalRecyclerView.setNestedScrollingEnabled(false);
        }
        this.retrieveCutter = (MediaRetrieveController) findViewById(R.id.retrieve_controller);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        TimeLineAdapter timeLineAdapter;
        super.onLayout(z, i, i2, i3, i4);
        MediaRetrieveController mediaRetrieveController = this.retrieveCutter;
        if (mediaRetrieveController != null) {
            this.controllerWidthOffset = (int) (((getWidth() - ((getWidth() * this.frameCountInHighlightRect) / this.frameCountInBaseRect)) / 2.0f) - this.controllerHandlerWidth);
            mediaRetrieveController.layoutRect(this.controllerWidthOffset, 0, getWidth() - this.controllerWidthOffset, getHeight() - this.bottomGapSize, this.controllerHandlerWidth);
        }
        this.frameCellWidth = getWidth() / this.frameCountInBaseRect;
        MediaRetrieveController mediaRetrieveController2 = this.retrieveCutter;
        if (mediaRetrieveController2 != null) {
            mediaRetrieveController2.setFrameCellWidth(this.frameCellWidth);
        }
        HorizontalRecyclerView horizontalRecyclerView = this.timeLine;
        if (horizontalRecyclerView != null) {
            if (horizontalRecyclerView == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            if (horizontalRecyclerView.getAdapter() == null && (timeLineAdapter = this.timeLineAdapter) != null) {
                HorizontalRecyclerView horizontalRecyclerView2 = this.timeLine;
                if (horizontalRecyclerView2 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                horizontalRecyclerView2.setAdapter(timeLineAdapter);
            }
        }
        this.componentCenterX = getWidth() / 2.0f;
        if (z) {
            if (getWidth() > 0 || getHeight() > 0) {
                PendingInitTask pendingInitTask = this.pendingInitTask;
                if (pendingInitTask != null) {
                    pendingInitTask.run();
                }
                this.pendingInitTask = null;
                TimeLineCallback timeLineCallback = this.timeLineCallback;
                if (timeLineCallback != null) {
                    timeLineCallback.onTimeLineLayout();
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Intrinsics.checkParameterIsNotNull(canvas, "canvas");
        super.dispatchDraw(canvas);
        int i = this.controllerWidthOffset;
        if (i > 0) {
            this.sideShadowRect.set(0, 0, i, getHeight() - this.bottomGapSize);
            canvas.drawRect(this.sideShadowRect, this.sideShadowPaint);
            this.sideShadowRect.set(getWidth() - this.controllerWidthOffset, 0, getWidth(), getHeight() - this.bottomGapSize);
            canvas.drawRect(this.sideShadowRect, this.sideShadowPaint);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        TimeLineCallback timeLineCallback;
        Intrinsics.checkParameterIsNotNull(ev, "ev");
        if (ev.getActionMasked() == 0) {
            MediaRetrieveController mediaRetrieveController = this.retrieveCutter;
            this.interceptedByController = mediaRetrieveController != null ? mediaRetrieveController.isTouchInSlideHandler(ev.getX()) : false;
        }
        if (this.interceptedByController && ev.getActionMasked() == 0 && (timeLineCallback = this.timeLineCallback) != null) {
            timeLineCallback.onControllerActive();
        }
        return this.interceptedByController;
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent event) {
        Intrinsics.checkParameterIsNotNull(event, "event");
        if (event.getActionMasked() == 1 || event.getActionMasked() == 3) {
            this.interceptedByController = false;
        }
        MediaRetrieveController mediaRetrieveController = this.retrieveCutter;
        if (mediaRetrieveController != null) {
            mediaRetrieveController.onSlideHandlerMove(event);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        HorizontalRecyclerView horizontalRecyclerView = this.timeLine;
        if (horizontalRecyclerView != null) {
            horizontalRecyclerView.clearOnScrollListeners();
        }
        super.onDetachedFromWindow();
    }

    private final void resetGlobalVariables() {
        this.additionalFramePreOffset = 0;
        this.additionalFramePostOffset = 0;
        this.mediaLengthInMs = 0;
        this.curFirstVideoFrameTimeInMs = 0;
        this.curControllerStartTimeOffsetInMs = 0;
        this.curControllerEndTimeOffsetInMs = 0;
        this.curPlaybackTimeBase = 0L;
        this.curScrollToPosition = 0;
        this.lastOffsetRecord = 0;
        this.compositionLengthMsList.clear();
        this.accurateCompositionVisibleFrameCountList.clear();
        this.roundCompositionVisibleFrameCountList.clear();
        this.compositionTailFrameLengthInMsList.clear();
        MediaRetrieveController mediaRetrieveController = this.retrieveCutter;
        if (mediaRetrieveController != null) {
            mediaRetrieveController.reset();
        }
    }

    public final void setTimeLineCallback(TimeLineCallback timeLineCallback) {
        this.timeLineCallback = timeLineCallback;
    }

    public final void setActiveClipInTrack(int i) {
        if (this.activeClipIndex == i) {
            return;
        }
        this.activeClipIndex = i;
        TimeLineAdapter timeLineAdapter = this.timeLineAdapter;
        if (timeLineAdapter != null) {
            timeLineAdapter.refreshVisibleArea();
        }
    }

    public final void updateClipComponent(List<? extends ITimelineClip> mediaClipList) {
        Intrinsics.checkParameterIsNotNull(mediaClipList, "mediaClipList");
        this.accurateCompositionVisibleFrameCountList.clear();
        this.roundCompositionVisibleFrameCountList.clear();
        this.compositionLengthMsList.clear();
        this.accurateMainTrackCompositionFrameCountList.clear();
        this.roundMainTrackCompositionFrameCountList.clear();
        this.mainTrackCompositionLengthMsList.clear();
        this.compositionTailFrameLengthInMsList.clear();
        this.mainTrackCompositionTailFrameLengthInMsList.clear();
        for (ITimelineClip iTimelineClip : mediaClipList) {
            Iterator<Integer> it = iTimelineClip.clipLengthComposition().iterator();
            while (it.hasNext()) {
                int iIntValue = it.next().intValue();
                float f = iIntValue;
                this.accurateCompositionVisibleFrameCountList.add(Float.valueOf(f / this.timeLineItemFrameLengthInMs));
                this.roundCompositionVisibleFrameCountList.add(Integer.valueOf((int) ((f / this.timeLineItemFrameLengthInMs) + 0.999f)));
                this.compositionLengthMsList.add(Integer.valueOf(iIntValue));
            }
            Iterator<Integer> it2 = iTimelineClip.mainTrackClipComposition().iterator();
            while (it2.hasNext()) {
                int iIntValue2 = it2.next().intValue();
                float f2 = iIntValue2;
                this.accurateMainTrackCompositionFrameCountList.add(Float.valueOf(f2 / this.timeLineItemFrameLengthInMs));
                this.roundMainTrackCompositionFrameCountList.add(Integer.valueOf((int) ((f2 / this.timeLineItemFrameLengthInMs) + 0.999f)));
                this.mainTrackCompositionLengthMsList.add(Integer.valueOf(iIntValue2));
            }
        }
        int size = this.compositionLengthMsList.size();
        for (int i = 0; i < size; i++) {
            ArrayList<Float> arrayList = this.compositionTailFrameLengthInMsList;
            float fFloatValue = this.roundCompositionVisibleFrameCountList.get(i).floatValue();
            Float f3 = this.accurateCompositionVisibleFrameCountList.get(i);
            Intrinsics.checkExpressionValueIsNotNull(f3, "accurateCompositionVisibleFrameCountList[index]");
            arrayList.add(Float.valueOf((1.0f - (fFloatValue - f3.floatValue())) * this.timeLineItemFrameLengthInMs));
        }
        int size2 = this.mainTrackCompositionLengthMsList.size();
        for (int i2 = 0; i2 < size2; i2++) {
            ArrayList<Float> arrayList2 = this.mainTrackCompositionTailFrameLengthInMsList;
            float fFloatValue2 = this.roundMainTrackCompositionFrameCountList.get(i2).floatValue();
            Float f4 = this.accurateMainTrackCompositionFrameCountList.get(i2);
            Intrinsics.checkExpressionValueIsNotNull(f4, "accurateMainTrackCompositionFrameCountList[index]");
            arrayList2.add(Float.valueOf((1.0f - (fFloatValue2 - f4.floatValue())) * this.timeLineItemFrameLengthInMs));
        }
    }

    public final int initTimeLine(int i, int i2, boolean z, List<? extends ITimelineClip> mediaClipList, IPreviewPlayer iPreviewPlayer, FrameRetrieverManager frameRetrieverManager, int i3, Integer num, float f, boolean z2, int i4, boolean z3, boolean z4, int i5, TimeLineCallback timeLineCallback, boolean z5) {
        int iClipLength;
        Intrinsics.checkParameterIsNotNull(mediaClipList, "mediaClipList");
        if (mediaClipList.isEmpty()) {
            return 0;
        }
        if (this.frameCellWidth == 0) {
            this.pendingInitTask = new PendingInitTask(this, i, i2, z, mediaClipList, iPreviewPlayer, frameRetrieverManager, i3, num, f, z2, i4, z3, z4, i5, timeLineCallback, z5);
            return 0;
        }
        resetGlobalVariables();
        this.dataType = i;
        this.timeLineType = i2;
        this.isForAudioWave = z;
        this.mediaClipList.clear();
        int size = mediaClipList.size();
        for (int i6 = 0; i6 < size; i6++) {
            ITimelineClip iTimelineClipCopy = mediaClipList.get(i6).copy();
            iTimelineClipCopy.setIndexInScene(i6);
            this.mediaClipList.add(iTimelineClipCopy);
            this.mediaLengthInMs += iTimelineClipCopy.clipLength();
        }
        if (num != null) {
            this.minOutputLength = num.intValue();
            this.curPlaybackTimeBase = 0L;
            this.curFirstVideoFrameTimeInMs = 0;
            this.borderColor = i4;
            this.mediaPlayer = iPreviewPlayer;
            int i7 = i3 + 1;
            int i8 = this.mediaLengthInMs;
            if (1 > i8 || i7 <= i8) {
                i8 = i3 > 0 ? i3 : 15000;
            }
            int i9 = this.mediaLengthInMs;
            this.maxVisibleSectionIntervalInMs = (1 <= i9 && i7 > i9) ? (int) (this.frameCountInBaseRect * this.timeLineItemFrameLengthInMs) : i8;
            this.timeLineItemFrameLengthInMs = f > ((float) 0) ? f : i8 / this.frameCountInHighlightRect;
            Utils.post(new Runnable() { // from class: com.narvii.video.widget.MediaTimeLineComponent.initTimeLine.1
                @Override // java.lang.Runnable
                public final void run() {
                    IPreviewPlayer iPreviewPlayer2 = MediaTimeLineComponent.this.mediaPlayer;
                    if (iPreviewPlayer2 != null) {
                        iPreviewPlayer2.addMediaEventListener(new MediaEventListenerImpl() { // from class: com.narvii.video.widget.MediaTimeLineComponent.initTimeLine.1.1
                            @Override // com.narvii.video.widget.videoview.MediaEventListenerImpl, com.narvii.video.interfaces.IMediaEventListener
                            public void onVideoCompleted() {
                                super.onVideoCompleted();
                                if (MediaTimeLineComponent.this.curFirstVideoFrameTimeInMs + MediaTimeLineComponent.this.curControllerEndTimeOffsetInMs >= MediaTimeLineComponent.this.getMediaLengthInMs()) {
                                    MediaTimeLineComponent.this.curFirstVideoFrameTimeInMs = 0;
                                }
                                MediaTimeLineComponent mediaTimeLineComponent = MediaTimeLineComponent.this;
                                mediaTimeLineComponent.replay(mediaTimeLineComponent.curFirstVideoFrameTimeInMs + MediaTimeLineComponent.this.curControllerStartTimeOffsetInMs, MediaTimeLineComponent.this.curFirstVideoFrameTimeInMs + MediaTimeLineComponent.this.curControllerEndTimeOffsetInMs, 1);
                            }
                        });
                    }
                }
            });
            this.frameRetrieverManager = frameRetrieverManager;
            updateClipComponent(mediaClipList);
            if (!this.accurateCompositionVisibleFrameCountList.isEmpty()) {
                ArrayList<Float> arrayList = this.accurateCompositionVisibleFrameCountList;
                iClipLength = ((int) (arrayList.get(arrayList.size() - 1).floatValue() * 1000)) % 1000;
            } else {
                iClipLength = mediaClipList.get(mediaClipList.size() - 1).clipLength() % 1000;
            }
            this.realTailFrameWidth = iClipLength == 0 ? this.frameCellWidth : (int) (this.frameCellWidth * (iClipLength / this.timeLineItemFrameLengthInMs));
            this.totalVisibleFrameCountForAdapter = CollectionsKt___CollectionsKt.sumOfInt(this.roundCompositionVisibleFrameCountList);
            this.timeLineCallback = timeLineCallback;
            this.curControllerEndTimeOffsetInMs = i8;
            if (frameRetrieverManager != null) {
                frameRetrieverManager.setFrameRetrieveInterval(this.timeLineItemFrameLengthInMs);
            }
            initComponent(z3, z2, z4, z5, i5, i8);
            return Math.abs(this.curControllerEndTimeOffsetInMs - this.curControllerStartTimeOffsetInMs);
        }
        Intrinsics.throwNpe();
        throw null;
    }

    private final void initComponent(final boolean z, final boolean z2, final boolean z3, final boolean z4, int i, int i2) {
        this.realFrameTimelineWidth = ((CollectionsKt___CollectionsKt.sumOfInt(this.roundCompositionVisibleFrameCountList) - 1) * this.frameCellWidth) + this.realTailFrameWidth;
        final HorizontalRecyclerView horizontalRecyclerView = this.timeLine;
        int iTrimStartInMs = 0;
        if (horizontalRecyclerView != null) {
            horizontalRecyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
            ViewCompat.setLayoutDirection(horizontalRecyclerView, Utils.isRtl() ? 1 : 0);
            horizontalRecyclerView.clearOnScrollListeners();
            horizontalRecyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.narvii.video.widget.MediaTimeLineComponent$initComponent$$inlined$let$lambda$1
                @Override // android.support.v7.widget.RecyclerView.OnScrollListener
                public void onScrollStateChanged(RecyclerView recyclerView, int i3) {
                    FrameRetrieverManager frameRetrieverManager;
                    RecyclerView.Adapter adapter;
                    Intrinsics.checkParameterIsNotNull(recyclerView, "recyclerView");
                    this.setCurRecyclerViewState(i3);
                    if (i3 == 0) {
                        HorizontalRecyclerView horizontalRecyclerView2 = this.timeLine;
                        RecyclerView.LayoutManager layoutManager = horizontalRecyclerView2 != null ? horizontalRecyclerView2.getLayoutManager() : null;
                        if (!(layoutManager instanceof LinearLayoutManager)) {
                            layoutManager = null;
                        }
                        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
                        int iFindLastCompletelyVisibleItemPosition = linearLayoutManager != null ? linearLayoutManager.findLastCompletelyVisibleItemPosition() : 0;
                        HorizontalRecyclerView horizontalRecyclerView3 = this.timeLine;
                        boolean z5 = iFindLastCompletelyVisibleItemPosition == ((horizontalRecyclerView3 == null || (adapter = horizontalRecyclerView3.getAdapter()) == null) ? 0 : adapter.getItemCount()) - 1;
                        int mediaLengthInMs = (z5 && this.timeLineType == 202) ? this.getMediaLengthInMs() : this.getCurFirstMediaFrameTime();
                        if (mediaLengthInMs == 0 || mediaLengthInMs != this.curFirstVideoFrameTimeInMs || z5) {
                            if (Math.abs(mediaLengthInMs - this.curFirstVideoFrameTimeInMs) >= this.maxVisibleSectionIntervalInMs && (frameRetrieverManager = this.frameRetrieverManager) != null) {
                                frameRetrieverManager.abortFlyingFrameRetrievers();
                            }
                            RecyclerView.Adapter adapter2 = horizontalRecyclerView.getAdapter();
                            if (!(adapter2 instanceof MediaTimeLineComponent.TimeLineAdapter)) {
                                adapter2 = null;
                            }
                            MediaTimeLineComponent.TimeLineAdapter timeLineAdapter = (MediaTimeLineComponent.TimeLineAdapter) adapter2;
                            if (timeLineAdapter != null) {
                                timeLineAdapter.refreshVisibleArea();
                            }
                            MediaRetrieveController mediaRetrieveController = this.retrieveCutter;
                            if (mediaRetrieveController != null) {
                                mediaRetrieveController.updateMediaSectionStartTime(mediaLengthInMs);
                            }
                            MediaTimeLineComponent.TimeLineCallback timeLineCallback = this.timeLineCallback;
                            if (timeLineCallback != null) {
                                timeLineCallback.onFrameLocatedDuringMove(this.curControllerStartTimeOffsetInMs + mediaLengthInMs, -1);
                            }
                            this.curFirstVideoFrameTimeInMs = mediaLengthInMs;
                            MediaTimeLineComponent.TimeLineCallback timeLineCallback2 = this.timeLineCallback;
                            if (timeLineCallback2 != null) {
                                timeLineCallback2.onTimeLineScrolledOffsetChanged(MediaTimeLineComponent.getTimeLineScrolledDx$default(this, false, 1, null));
                            }
                            MediaTimeLineComponent mediaTimeLineComponent = this;
                            mediaTimeLineComponent.replay(mediaTimeLineComponent.curFirstVideoFrameTimeInMs + this.curControllerStartTimeOffsetInMs, this.curFirstVideoFrameTimeInMs + this.curControllerEndTimeOffsetInMs, 3);
                        }
                    }
                }

                @Override // android.support.v7.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i3, int i4) {
                    RecyclerView.Adapter adapter;
                    FrameRetrieverManager frameRetrieverManager;
                    Intrinsics.checkParameterIsNotNull(recyclerView, "recyclerView");
                    if (i3 == 0 && i4 == 0) {
                        return;
                    }
                    if (this.getCurRecyclerViewState() == 0) {
                        if (Math.abs(this.getCurFirstMediaFrameTime() - this.curFirstVideoFrameTimeInMs) < this.maxVisibleSectionIntervalInMs || (frameRetrieverManager = this.frameRetrieverManager) == null) {
                            return;
                        }
                        frameRetrieverManager.abortFlyingFrameRetrievers();
                        return;
                    }
                    HorizontalRecyclerView horizontalRecyclerView2 = this.timeLine;
                    RecyclerView.LayoutManager layoutManager = horizontalRecyclerView2 != null ? horizontalRecyclerView2.getLayoutManager() : null;
                    if (!(layoutManager instanceof LinearLayoutManager)) {
                        layoutManager = null;
                    }
                    LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
                    int iFindLastCompletelyVisibleItemPosition = linearLayoutManager != null ? linearLayoutManager.findLastCompletelyVisibleItemPosition() : 0;
                    HorizontalRecyclerView horizontalRecyclerView3 = this.timeLine;
                    int mediaLengthInMs = ((iFindLastCompletelyVisibleItemPosition == ((horizontalRecyclerView3 == null || (adapter = horizontalRecyclerView3.getAdapter()) == null) ? 0 : adapter.getItemCount()) - 1) && this.timeLineType == 202) ? this.getMediaLengthInMs() : this.getCurFirstMediaFrameTime();
                    MediaRetrieveController mediaRetrieveController = this.retrieveCutter;
                    if (mediaRetrieveController != null) {
                        mediaRetrieveController.updateMediaSectionStartTime(mediaLengthInMs);
                    }
                    MediaTimeLineComponent.TimeLineCallback timeLineCallback = this.timeLineCallback;
                    if (timeLineCallback != null) {
                        timeLineCallback.onFrameLocatedDuringMove(this.curControllerStartTimeOffsetInMs + mediaLengthInMs, -1);
                    }
                    MediaTimeLineComponent mediaTimeLineComponent = this;
                    MediaTimeLineComponent.scrollTimeLine$default(mediaTimeLineComponent, mediaLengthInMs + mediaTimeLineComponent.curControllerStartTimeOffsetInMs, false, false, false, false, 0, true, 62, null);
                }
            });
            this.timeLineAdapter = new TimeLineAdapter(z2, z, z3);
            if (z4) {
                horizontalRecyclerView.setAdapter(this.timeLineAdapter);
            }
        }
        MediaRetrieveController mediaRetrieveController = this.retrieveCutter;
        if (mediaRetrieveController != null) {
            if (i > 0) {
                this.curControllerStartTimeOffsetInMs = 0;
                this.curControllerEndTimeOffsetInMs = i;
            }
            mediaRetrieveController.initComponent(this.minOutputLength, i2, this, i == i2 ? -1 : (int) (((i / this.mediaLengthInMs) * this.realFrameTimelineWidth) + 0.5f), i);
            if (!this.mediaClipList.isEmpty()) {
                ITimelineClip iTimelineClip = this.mediaClipList.get(0);
                Intrinsics.checkExpressionValueIsNotNull(iTimelineClip, "mediaClipList[0]");
                ITimelineClip iTimelineClip2 = iTimelineClip;
                if (iTimelineClip2 instanceof AVClipInfoPack) {
                    iTrimStartInMs = ((AVClipInfoPack) iTimelineClip2).trimStartInMsWithSpeed();
                } else {
                    iTrimStartInMs = iTimelineClip2.trimStartInMs();
                }
            }
            mediaRetrieveController.updateMediaSectionStartTime(iTrimStartInMs);
        }
    }

    public final void playbackStatusChanged(boolean z) {
        Handler handler = this.mainHandler;
        Runnable runnable = this.playbackTimer;
        if (runnable == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playbackTimer");
            throw null;
        }
        handler.removeCallbacks(runnable);
        if (z) {
            Handler handler2 = this.mainHandler;
            Runnable runnable2 = this.playbackTimer;
            if (runnable2 != null) {
                handler2.post(runnable2);
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("playbackTimer");
                throw null;
            }
        }
    }

    public final int[] getCurCutPosition() {
        int i = this.curFirstVideoFrameTimeInMs;
        return new int[]{this.curControllerStartTimeOffsetInMs + i, i + this.curControllerEndTimeOffsetInMs};
    }

    public final void updateAdditionalFrameOffset(int i, int i2, int i3) {
        if (this.additionalFramePreOffset == i && this.additionalFramePostOffset == i2) {
            return;
        }
        this.additionalFramePreOffset = i;
        this.additionalFramePostOffset = i2;
        this.additionalFramePreOffsetDx = i3;
        TimeLineAdapter timeLineAdapter = this.timeLineAdapter;
        if (timeLineAdapter != null) {
            timeLineAdapter.notifyDataSetChanged();
        }
    }

    public final int getTotalFrameCount() {
        return this.totalVisibleFrameCountForAdapter;
    }

    public final int getAdditionalFramePreOffsetDx() {
        return this.additionalFramePreOffsetDx;
    }

    public final int getAdditionalFramePostOffsetDx() {
        return this.additionalFramePreOffsetDx - this.realFrameTimelineWidth;
    }

    public final void scrollTimeLineBy(int i) {
        HorizontalRecyclerView horizontalRecyclerView = this.timeLine;
        if (horizontalRecyclerView != null) {
            horizontalRecyclerView.scrollBy(i, 0);
        }
    }

    public final void setOnTimeLineTouchListener(View.OnTouchListener l) {
        Intrinsics.checkParameterIsNotNull(l, "l");
        HorizontalRecyclerView horizontalRecyclerView = this.timeLine;
        if (horizontalRecyclerView != null) {
            horizontalRecyclerView.setOnTouchListener(l);
        }
    }

    public final void refreshTimeLine() {
        TimeLineAdapter timeLineAdapter = this.timeLineAdapter;
        if (timeLineAdapter != null) {
            timeLineAdapter.refreshVisibleArea();
        }
    }

    public final void updatePlaybackTime(long j) {
        MediaRetrieveController mediaRetrieveController;
        long j2 = j - (this.curFirstVideoFrameTimeInMs + this.curControllerStartTimeOffsetInMs);
        if (!this.seeking && (mediaRetrieveController = this.retrieveCutter) != null) {
            mediaRetrieveController.updatePointerPosition(j2 / this.timeLineItemFrameLengthInMs);
        }
        if (j >= Math.min(this.curFirstVideoFrameTimeInMs + this.curControllerEndTimeOffsetInMs, this.mediaLengthInMs)) {
            if (this.curFirstVideoFrameTimeInMs + this.curControllerEndTimeOffsetInMs >= this.mediaLengthInMs) {
                this.curFirstVideoFrameTimeInMs = 0;
            }
            int i = this.curFirstVideoFrameTimeInMs + this.curControllerEndTimeOffsetInMs < this.mediaLengthInMs ? 4 : 1;
            int i2 = this.curFirstVideoFrameTimeInMs;
            replay(this.curControllerStartTimeOffsetInMs + i2, i2 + this.curControllerEndTimeOffsetInMs, i);
        }
    }

    public static /* synthetic */ int scrollTimeLineToClip$default(MediaTimeLineComponent mediaTimeLineComponent, int i, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        if ((i3 & 4) != 0) {
            z = true;
        }
        return mediaTimeLineComponent.scrollTimeLineToClip(i, i2, z);
    }

    public final int scrollTimeLineToClip(int i, int i2, boolean z) {
        int size = this.mediaClipList.size();
        if (i < 0 || size <= i) {
            return -1;
        }
        if (i == 0 && i2 == 0) {
            scrollTimeLine$default(this, 0, true, false, z, false, 0, false, 117, null);
            return 0;
        }
        for (int i3 = 0; i3 < i; i3++) {
            i2 += this.mediaClipList.get(i3).clipLength();
        }
        scrollTimeLine$default(this, i2 + 1, false, false, z, false, 0, false, 118, null);
        return i2;
    }

    public static /* synthetic */ void scrollTimeLine$default(MediaTimeLineComponent mediaTimeLineComponent, int i, boolean z, boolean z2, boolean z3, boolean z4, int i2, boolean z5, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            z = false;
        }
        if ((i3 & 4) != 0) {
            z2 = false;
        }
        if ((i3 & 8) != 0) {
            z3 = false;
        }
        if ((i3 & 16) != 0) {
            z4 = false;
        }
        if ((i3 & 32) != 0) {
            i2 = 0;
        }
        if ((i3 & 64) != 0) {
            z5 = false;
        }
        mediaTimeLineComponent.scrollTimeLine(i, z, z2, z3, z4, i2, z5);
    }

    public final void scrollTimeLine(int i, boolean z, boolean z2, boolean z3, boolean z4, int i2, boolean z5) {
        int i3;
        float fFloatValue;
        float fFloatValue2;
        float fMin;
        int i4;
        float f;
        int iIntValue;
        int i5;
        ArrayList<Integer> arrayList;
        int iIntValue2;
        float fFloatValue3;
        FrameRetrieverManager frameRetrieverManager;
        final HorizontalRecyclerView horizontalRecyclerView = this.timeLine;
        if (horizontalRecyclerView != null) {
            int i6 = 0;
            if (z) {
                this.curScrollToPosition = this.additionalFramePreOffset;
                this.lastOffsetRecord = 0;
                if (!z5) {
                    horizontalRecyclerView.scrollToPosition(this.curScrollToPosition);
                    if (horizontalRecyclerView.getAdapter() instanceof TimeLineAdapter) {
                        Utils.post(new Runnable() { // from class: com.narvii.video.widget.MediaTimeLineComponent$scrollTimeLine$1$1
                            @Override // java.lang.Runnable
                            public final void run() {
                                RecyclerView.Adapter adapter = horizontalRecyclerView.getAdapter();
                                if (adapter == null) {
                                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.video.widget.MediaTimeLineComponent.TimeLineAdapter");
                                }
                                ((MediaTimeLineComponent.TimeLineAdapter) adapter).refreshVisibleArea();
                            }
                        });
                    }
                }
            } else if (z2) {
                this.lastOffsetRecord = 0;
                int i7 = this.additionalFramePreOffset + this.totalVisibleFrameCountForAdapter;
                if (i7 != this.curScrollToPosition) {
                    this.curScrollToPosition = i7;
                    if (!z5) {
                        horizontalRecyclerView.scrollToPosition(this.curScrollToPosition);
                    }
                }
                if (!z5) {
                    horizontalRecyclerView.scrollBy(this.frameCellWidth, 0);
                    if (horizontalRecyclerView.getAdapter() instanceof TimeLineAdapter) {
                        RecyclerView.Adapter adapter = horizontalRecyclerView.getAdapter();
                        if (adapter == null) {
                            throw new TypeCastException("null cannot be cast to non-null type com.narvii.video.widget.MediaTimeLineComponent.TimeLineAdapter");
                        }
                        ((TimeLineAdapter) adapter).refreshVisibleArea();
                    }
                }
            } else {
                float f2 = this.additionalFramePreOffset;
                ArrayList<Integer> arrayList2 = z4 ? this.mainTrackCompositionLengthMsList : this.compositionLengthMsList;
                ArrayList<Integer> arrayList3 = z4 ? this.roundMainTrackCompositionFrameCountList : this.roundCompositionVisibleFrameCountList;
                ArrayList<Float> arrayList4 = z4 ? this.mainTrackCompositionTailFrameLengthInMsList : this.compositionTailFrameLengthInMsList;
                if (z4) {
                    Iterator<T> it = this.mainTrackCompositionLengthMsList.iterator();
                    int iIntValue3 = 0;
                    fFloatValue = 0.0f;
                    int i8 = 0;
                    while (it.hasNext() && (iIntValue3 = iIntValue3 + ((Number) it.next()).intValue()) < i2) {
                        float fFloatValue4 = this.roundMainTrackCompositionFrameCountList.get(i8).floatValue();
                        Float f3 = this.accurateMainTrackCompositionFrameCountList.get(i8);
                        Intrinsics.checkExpressionValueIsNotNull(f3, "accurateMainTrackCompositionFrameCountList[index]");
                        fFloatValue += (fFloatValue4 - f3.floatValue()) * this.timeLineItemFrameLengthInMs;
                        i8++;
                    }
                    i3 = (int) ((i - i2) - fFloatValue);
                } else {
                    i3 = i;
                    fFloatValue = 0.0f;
                }
                boolean z6 = i3 >= CollectionsKt___CollectionsKt.sumOfInt(this.compositionLengthMsList);
                if (z4 || !z6) {
                    int i9 = z4 ? i2 : 0;
                    int size = arrayList2.size();
                    fFloatValue2 = f2;
                    int i10 = 0;
                    int iIntValue4 = 0;
                    int i11 = 0;
                    int i12 = 0;
                    fMin = 0.0f;
                    while (true) {
                        if (i10 >= size) {
                            i4 = i12;
                            i6 = 0;
                            i3 = 0;
                            break;
                        }
                        Integer num = arrayList2.get(i10);
                        Intrinsics.checkExpressionValueIsNotNull(num, "pickedCompositionList[index]");
                        iIntValue4 += num.intValue();
                        if (iIntValue4 <= i9) {
                            i12++;
                            int iIntValue5 = (arrayList2.get(i10).intValue() / 1000) * 1000;
                            if (arrayList2.get(i10).intValue() % 1000 != 0) {
                                f = fFloatValue;
                                float f4 = i3 + fFloatValue + i9;
                                float f5 = iIntValue5;
                                if (f4 > f5) {
                                    float f6 = f4 - f5;
                                    Float f7 = arrayList4.get(i10);
                                    Intrinsics.checkExpressionValueIsNotNull(f7, "pickedCompositionTailFrameLengthList[index]");
                                    fMin += Math.min(f6 / f7.floatValue(), 0.9f);
                                }
                            } else {
                                f = fFloatValue;
                            }
                            i5 = i11;
                            arrayList = arrayList3;
                        } else {
                            f = fFloatValue;
                            if (i11 == 0) {
                                iIntValue = iIntValue4 - i9;
                            } else {
                                Integer num2 = arrayList2.get(i10);
                                Intrinsics.checkExpressionValueIsNotNull(num2, "pickedCompositionList[index]");
                                iIntValue = num2.intValue();
                            }
                            i5 = iIntValue + i11;
                            if (i5 >= i3) {
                                i3 -= i11;
                                i6 = i10;
                                i4 = i12;
                                break;
                            } else {
                                Integer num3 = arrayList2.get(i10);
                                Intrinsics.checkExpressionValueIsNotNull(num3, "pickedCompositionList[index]");
                                float fFloatValue5 = iIntValue / num3.floatValue();
                                Integer num4 = arrayList3.get(i10);
                                arrayList = arrayList3;
                                Intrinsics.checkExpressionValueIsNotNull(num4, "pickedCompositionFrameCountList[index]");
                                fFloatValue2 += fFloatValue5 * num4.floatValue();
                            }
                        }
                        i10++;
                        fFloatValue = f;
                        arrayList3 = arrayList;
                        i11 = i5;
                    }
                } else {
                    fFloatValue2 = f2;
                    i4 = 0;
                    fMin = 0.0f;
                }
                if (arrayList2.isEmpty()) {
                    iIntValue2 = 0;
                } else if (i6 == i4) {
                    int i13 = i6 + 1;
                    int iIntValue6 = 0;
                    for (int i14 = 0; i14 < i13; i14++) {
                        Integer num5 = arrayList2.get(i14);
                        Intrinsics.checkExpressionValueIsNotNull(num5, "pickedCompositionList[index]");
                        iIntValue6 += num5.intValue();
                    }
                    iIntValue2 = (iIntValue6 - i2) - (arrayList2.get(i6).intValue() % 1000);
                } else {
                    iIntValue2 = (arrayList2.get(i6).intValue() / 1000) * 1000;
                }
                if (i3 > iIntValue2 && i6 != arrayList4.size() - 1 && (arrayList2.isEmpty() ^ true) && arrayList2.get(i6).intValue() % 1000 != 0) {
                    float f8 = iIntValue2 / this.timeLineItemFrameLengthInMs;
                    Float f9 = arrayList4.get(i6);
                    Intrinsics.checkExpressionValueIsNotNull(f9, "pickedCompositionTailFra…t[targetCompositionIndex]");
                    fFloatValue3 = f8 + ((i3 - iIntValue2) / f9.floatValue());
                } else {
                    fFloatValue3 = i3 / this.timeLineItemFrameLengthInMs;
                }
                float f10 = fFloatValue2 + fFloatValue3 + fMin;
                int i15 = (int) f10;
                int i16 = (int) ((f10 - i15) * this.frameCellWidth);
                if (i15 != this.curScrollToPosition) {
                    if (!z5) {
                        RecyclerView.LayoutManager layoutManager = horizontalRecyclerView.getLayoutManager();
                        if (!(layoutManager instanceof LinearLayoutManager)) {
                            layoutManager = null;
                        }
                        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
                        if (linearLayoutManager != null) {
                            linearLayoutManager.scrollToPositionWithOffset(i15, i16 == 0 ? 1 : -i16);
                        }
                    }
                    this.curScrollToPosition = i15;
                    this.lastOffsetRecord = i16;
                }
                if (i16 >= 0) {
                    int i17 = i16 - this.lastOffsetRecord;
                    if (!z5) {
                        if (this.rtl) {
                            i17 = -i17;
                        }
                        horizontalRecyclerView.scrollBy(i17, 0);
                    }
                    this.lastOffsetRecord = i16;
                }
            }
            if (z3) {
                this.curPlaybackTimeBase = i;
                this.curFirstVideoFrameTimeInMs = i;
                if (this.curFirstVideoFrameTimeInMs < this.maxVisibleSectionIntervalInMs || (frameRetrieverManager = this.frameRetrieverManager) == null) {
                    return;
                }
                frameRetrieverManager.abortFlyingFrameRetrievers();
            }
        }
    }

    public final Pair<Boolean, Integer> isTailFrameCellPlaying() {
        int timeLineScrolledDx$default = getTimeLineScrolledDx$default(this, false, 1, null);
        int i = (this.additionalFramePreOffset + this.totalVisibleFrameCountForAdapter) - 1;
        int i2 = this.frameCellWidth;
        int i3 = timeLineScrolledDx$default - (i * i2);
        boolean z = i2 > 0 && i3 >= 0;
        return new Pair<>(Boolean.valueOf(z), Integer.valueOf(z ? getSectionDurationInMs$default(this, i3, 0, false, 2, null) : 0));
    }

    public static /* synthetic */ int getFirstFrameStartDx$default(MediaTimeLineComponent mediaTimeLineComponent, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return mediaTimeLineComponent.getFirstFrameStartDx(z);
    }

    public final int getFirstFrameStartDx(boolean z) {
        if (this.rtl) {
            return getWidth() + ((getTimeLineScrolledDx(z) - (this.frameOffset * this.frameCellWidth)) - this.additionalFramePreOffsetDx);
        }
        return -((getTimeLineScrolledDx(z) - (this.frameOffset * this.frameCellWidth)) - this.additionalFramePreOffsetDx);
    }

    public final int getTimelineVisibleSectionWidth() {
        return this.realFrameTimelineWidth;
    }

    public static /* synthetic */ int getTimeLineScrolledDx$default(MediaTimeLineComponent mediaTimeLineComponent, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return mediaTimeLineComponent.getTimeLineScrolledDx(z);
    }

    public final int getTimeLineScrolledDx(boolean z) {
        View viewFindViewByPosition;
        int i;
        View viewFindViewByPosition2;
        HorizontalRecyclerView horizontalRecyclerView = this.timeLine;
        RecyclerView.LayoutManager layoutManager = horizontalRecyclerView != null ? horizontalRecyclerView.getLayoutManager() : null;
        if (!(layoutManager instanceof LinearLayoutManager)) {
            layoutManager = null;
        }
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
        int left = 0;
        int iMax = Math.max(0, linearLayoutManager != null ? linearLayoutManager.findFirstVisibleItemPosition() : 0);
        int i2 = (this.totalVisibleFrameCountForAdapter + this.additionalFramePreOffset) - 1;
        if (Utils.isRtl()) {
            HorizontalRecyclerView horizontalRecyclerView2 = this.timeLine;
            RecyclerView.LayoutManager layoutManager2 = horizontalRecyclerView2 != null ? horizontalRecyclerView2.getLayoutManager() : null;
            LinearLayoutManager linearLayoutManager2 = (LinearLayoutManager) (layoutManager2 instanceof LinearLayoutManager ? layoutManager2 : null);
            left = ((linearLayoutManager2 == null || (viewFindViewByPosition2 = linearLayoutManager2.findViewByPosition(iMax)) == null) ? getWidth() : viewFindViewByPosition2.getRight()) - getWidth();
        } else {
            HorizontalRecyclerView horizontalRecyclerView3 = this.timeLine;
            RecyclerView.LayoutManager layoutManager3 = horizontalRecyclerView3 != null ? horizontalRecyclerView3.getLayoutManager() : null;
            LinearLayoutManager linearLayoutManager3 = (LinearLayoutManager) (layoutManager3 instanceof LinearLayoutManager ? layoutManager3 : null);
            if (linearLayoutManager3 != null && (viewFindViewByPosition = linearLayoutManager3.findViewByPosition(iMax)) != null) {
                left = viewFindViewByPosition.getLeft();
            }
        }
        int iAbs = Math.abs(left);
        if (z && iMax >= i2) {
            i = ((iMax - 1) * this.frameCellWidth) + this.realTailFrameWidth;
        } else {
            i = iMax * this.frameCellWidth;
        }
        return i + iAbs;
    }

    public static /* synthetic */ int getSectionDurationInMs$default(MediaTimeLineComponent mediaTimeLineComponent, int i, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        return mediaTimeLineComponent.getSectionDurationInMs(i, i2, z);
    }

    public final int getSectionDurationInMs(int i, int i2, boolean z) {
        int iFloatValue;
        float fFloatValue;
        int iFloatValue2;
        Iterator<T> it = this.roundMainTrackCompositionFrameCountList.iterator();
        int i3 = 0;
        int i4 = i;
        int i5 = 0;
        int i6 = 0;
        int iIntValue = 0;
        while (true) {
            if (!it.hasNext()) {
                i3 = i4;
                break;
            }
            int iIntValue2 = ((Number) it.next()).intValue();
            if (i5 == this.roundMainTrackCompositionFrameCountList.size() - 1) {
                iFloatValue = (int) (this.accurateMainTrackCompositionFrameCountList.get(i5).floatValue() * this.frameCellWidth);
            } else {
                iFloatValue = iIntValue2 * this.frameCellWidth;
            }
            int i7 = i6 + iFloatValue;
            if (i2 >= i7) {
                i6 = i7;
            } else if (iFloatValue >= i4) {
                if (i5 == this.roundMainTrackCompositionFrameCountList.size() - 1) {
                    Integer num = this.mainTrackCompositionLengthMsList.get(i5);
                    Intrinsics.checkExpressionValueIsNotNull(num, "mainTrackCompositionLengthMsList[index]");
                    iFloatValue2 = (int) ((i4 / iFloatValue) * num.floatValue());
                } else {
                    if (z) {
                        fFloatValue = 1.0f;
                    } else {
                        float fFloatValue2 = this.roundMainTrackCompositionFrameCountList.get(i5).floatValue();
                        Float f = this.accurateMainTrackCompositionFrameCountList.get(i5);
                        Intrinsics.checkExpressionValueIsNotNull(f, "accurateMainTrackCompositionFrameCountList[index]");
                        fFloatValue = fFloatValue2 / f.floatValue();
                    }
                    Integer num2 = this.mainTrackCompositionLengthMsList.get(i5);
                    Intrinsics.checkExpressionValueIsNotNull(num2, "mainTrackCompositionLengthMsList[index]");
                    iFloatValue2 = (int) (((i4 * fFloatValue) / iFloatValue) * num2.floatValue());
                }
                iIntValue += iFloatValue2;
            } else if (i2 > 0) {
                int i8 = iFloatValue - (i2 - i6);
                float f2 = i8 / iFloatValue;
                Integer num3 = this.mainTrackCompositionLengthMsList.get(i5);
                Intrinsics.checkExpressionValueIsNotNull(num3, "mainTrackCompositionLengthMsList[index]");
                iIntValue += (int) (f2 * num3.floatValue());
                i4 -= i8;
                i2 = 0;
            } else {
                Integer num4 = this.mainTrackCompositionLengthMsList.get(i5);
                Intrinsics.checkExpressionValueIsNotNull(num4, "mainTrackCompositionLengthMsList[index]");
                iIntValue += num4.intValue();
                i4 -= iFloatValue;
            }
            i5++;
        }
        return i3 > 0 ? iIntValue + ((int) ((i3 / this.realFrameTimelineWidth) * this.mediaLengthInMs)) : iIntValue;
    }

    public final void addTimeLineOnScrollListener(RecyclerView.OnScrollListener listener) {
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        HorizontalRecyclerView horizontalRecyclerView = this.timeLine;
        if (horizontalRecyclerView != null) {
            horizontalRecyclerView.addOnScrollListener(listener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getCurFirstMediaFrameTime() {
        View viewFindViewByPosition;
        View viewFindViewByPosition2;
        Pair<Integer, Integer> tailFrameItemInfo;
        HorizontalRecyclerView horizontalRecyclerView = this.timeLine;
        RecyclerView.LayoutManager layoutManager = horizontalRecyclerView != null ? horizontalRecyclerView.getLayoutManager() : null;
        if (!(layoutManager instanceof LinearLayoutManager)) {
            layoutManager = null;
        }
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
        int left = 0;
        int iFindFirstVisibleItemPosition = (linearLayoutManager != null ? linearLayoutManager.findFirstVisibleItemPosition() : 0) - this.additionalFramePreOffset;
        int size = this.compositionLengthMsList.size();
        int i = 0;
        boolean z = false;
        for (int i2 = 0; i2 < size; i2++) {
            TimeLineAdapter timeLineAdapter = this.timeLineAdapter;
            Integer first = (timeLineAdapter == null || (tailFrameItemInfo = timeLineAdapter.getTailFrameItemInfo(i2)) == null) ? null : tailFrameItemInfo.getFirst();
            if (first != null) {
                int iIntValue = first.intValue();
                if (iFindFirstVisibleItemPosition > iIntValue) {
                    i++;
                }
                if (iFindFirstVisibleItemPosition == iIntValue) {
                    z = true;
                }
            }
        }
        float fFloatValue = (iFindFirstVisibleItemPosition - i) * this.timeLineItemFrameLengthInMs;
        for (int i3 = 0; i3 < i; i3++) {
            Float f = this.compositionTailFrameLengthInMsList.get(i3);
            Intrinsics.checkExpressionValueIsNotNull(f, "compositionTailFrameLengthInMsList[index]");
            fFloatValue += f.floatValue();
        }
        if (Utils.isRtl()) {
            HorizontalRecyclerView horizontalRecyclerView2 = this.timeLine;
            RecyclerView.LayoutManager layoutManager2 = horizontalRecyclerView2 != null ? horizontalRecyclerView2.getLayoutManager() : null;
            LinearLayoutManager linearLayoutManager2 = (LinearLayoutManager) (layoutManager2 instanceof LinearLayoutManager ? layoutManager2 : null);
            left = ((linearLayoutManager2 == null || (viewFindViewByPosition2 = linearLayoutManager2.findViewByPosition(iFindFirstVisibleItemPosition)) == null) ? getWidth() : viewFindViewByPosition2.getRight()) - getWidth();
        } else {
            HorizontalRecyclerView horizontalRecyclerView3 = this.timeLine;
            RecyclerView.LayoutManager layoutManager3 = horizontalRecyclerView3 != null ? horizontalRecyclerView3.getLayoutManager() : null;
            LinearLayoutManager linearLayoutManager3 = (LinearLayoutManager) (layoutManager3 instanceof LinearLayoutManager ? layoutManager3 : null);
            if (linearLayoutManager3 != null && (viewFindViewByPosition = linearLayoutManager3.findViewByPosition(iFindFirstVisibleItemPosition)) != null) {
                left = viewFindViewByPosition.getLeft();
            }
        }
        return Math.min((int) (fFloatValue + (getSectionDurationInMs$default(this, Math.abs(left), 0, false, 2, null) * ((!z || i >= this.compositionTailFrameLengthInMsList.size()) ? 1.0f : this.compositionTailFrameLengthInMsList.get(i).floatValue() / this.timeLineItemFrameLengthInMs))), this.mediaLengthInMs);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void replay(int i, int i2, int i3) {
        Handler handler = this.mainHandler;
        Runnable runnable = this.playbackTimer;
        if (runnable == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playbackTimer");
            throw null;
        }
        handler.removeCallbacks(runnable);
        TimeLineCallback timeLineCallback = this.timeLineCallback;
        if (timeLineCallback != null) {
            timeLineCallback.onReplayTriggered(i, Math.min(i2, this.mediaLengthInMs), i3);
        }
        this.curPlaybackTimeBase = i;
        this.mainHandler.postDelayed(new Runnable() { // from class: com.narvii.video.widget.MediaTimeLineComponent.replay.1
            @Override // java.lang.Runnable
            public final void run() {
                IPreviewPlayer iPreviewPlayer = MediaTimeLineComponent.this.mediaPlayer;
                if (iPreviewPlayer == null || !iPreviewPlayer.isVideoPlaying()) {
                    return;
                }
                MediaTimeLineComponent.access$getPlaybackTimer$p(MediaTimeLineComponent.this).run();
            }
        }, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MediaTimeLineComponent.kt */
    final class TimeLineItemHolder extends RecyclerView.ViewHolder {
        private final FrameItemMaskView frameMaskView;
        private final NVImageView frameView;
        private final boolean showItemBorder;
        private final boolean showRoundCorner;
        private int tag;
        final /* synthetic */ MediaTimeLineComponent this$0;
        private int viewHeight;
        private int viewWidth;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TimeLineItemHolder(MediaTimeLineComponent mediaTimeLineComponent, View itemView, boolean z, boolean z2) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            this.this$0 = mediaTimeLineComponent;
            this.showItemBorder = z;
            this.showRoundCorner = z2;
            View viewFindViewById = itemView.findViewById(R.id.frame_pic);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "itemView.findViewById(R.id.frame_pic)");
            this.frameView = (NVImageView) viewFindViewById;
            View viewFindViewById2 = itemView.findViewById(R.id.frame_mask);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "itemView.findViewById(R.id.frame_mask)");
            this.frameMaskView = (FrameItemMaskView) viewFindViewById2;
            this.tag = -1;
            this.frameView.setShowPressedMask(false);
            this.frameMaskView.setBorderStyle(mediaTimeLineComponent.borderColor, mediaTimeLineComponent.frameItemCornerRadius);
            this.frameMaskView.updateBorder(this.showRoundCorner, this.showItemBorder, (28 & 4) != 0 ? false : false, (28 & 8) != 0 ? false : false, (28 & 16) != 0 ? -1000.0f : 0.0f);
        }

        public final boolean getShowItemBorder() {
            return this.showItemBorder;
        }

        public final boolean getShowRoundCorner() {
            return this.showRoundCorner;
        }

        public final int getTag() {
            return this.tag;
        }

        public final void setTag(int i) {
            this.tag = i;
        }

        public final void setBlankFrame() {
            this.frameView.setImageDrawable(null);
            this.frameMaskView.updateBorder(false, false, (28 & 4) != 0 ? false : false, (28 & 8) != 0 ? false : false, (28 & 16) != 0 ? -1000.0f : 0.0f);
        }

        public final void setOnItemClickedListener(View.OnClickListener onClickListener) {
            this.itemView.setOnClickListener(onClickListener);
        }

        public final void setDrawableFrame(Drawable drawable, boolean z, boolean z2, float f) {
            Intrinsics.checkParameterIsNotNull(drawable, "drawable");
            this.frameView.setImageDrawable(drawable);
            this.frameMaskView.updateBorder(this.showRoundCorner, this.showItemBorder, z, z2, f);
        }

        public final void retrieveFrame(IAVClipInfoPack inputClip, int i, int i2, int i3, final boolean z, final boolean z2, final float f) {
            FrameRetrieverManager frameRetrieverManager;
            Intrinsics.checkParameterIsNotNull(inputClip, "inputClip");
            String strInputPath = inputClip.inputPath();
            File file = strInputPath != null ? new File(strInputPath) : null;
            if (file == null || file.exists()) {
                final boolean z3 = this.showItemBorder && inputClip.indexInScene() == this.this$0.activeClipIndex;
                this.frameMaskView.updateBorder(this.showRoundCorner, z3, (28 & 4) != 0 ? false : z, (28 & 8) != 0 ? false : z2, (28 & 16) != 0 ? -1000.0f : 0.0f);
                this.tag = i;
                this.viewWidth = i2;
                this.viewHeight = i3;
                if (this.this$0.getCurRecyclerViewState() < 0 || (frameRetrieverManager = this.this$0.frameRetrieverManager) == null) {
                    return;
                }
                frameRetrieverManager.retrieveFrame(inputClip, i, (4 & 4) != 0, new IVideoServiceCallback() { // from class: com.narvii.video.widget.MediaTimeLineComponent$TimeLineItemHolder$retrieveFrame$1
                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onActionCancelled() {
                        IVideoServiceCallback.DefaultImpls.onActionCancelled(this);
                    }

                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onActionFailed(Exception exc) {
                        IVideoServiceCallback.DefaultImpls.onActionFailed(this, exc);
                    }

                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onActionStarted() {
                        IVideoServiceCallback.DefaultImpls.onActionStarted(this);
                    }

                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onExecutingTaskChanged(MediaEditingConfig newTask) {
                        Intrinsics.checkParameterIsNotNull(newTask, "newTask");
                        IVideoServiceCallback.DefaultImpls.onExecutingTaskChanged(this, newTask);
                    }

                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onFramePicturesLoaded(int i4, File file2) {
                        IVideoServiceCallback.DefaultImpls.onFramePicturesLoaded(this, i4, file2);
                    }

                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onProgress(float f2, String str) {
                        IVideoServiceCallback.DefaultImpls.onProgress(this, f2, str);
                    }

                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onVideoProcessed(String path) {
                        Intrinsics.checkParameterIsNotNull(path, "path");
                        IVideoServiceCallback.DefaultImpls.onVideoProcessed(this, path);
                    }

                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onFrameBitmapLoaded(int i4, Bitmap bitmap) {
                        if (this.this$0.getTag() == i4) {
                            this.this$0.frameView.setImageBitmap(bitmap);
                            this.this$0.frameMaskView.updateBorder(this.this$0.getShowRoundCorner(), z3, z, z2, f);
                        }
                    }
                }, (4 & 16) != 0 ? -1 : this.viewWidth, (4 & 32) != 0 ? -1 : this.viewHeight);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MediaTimeLineComponent.kt */
    final class TimeLineAdapter extends RecyclerView.Adapter<TimeLineItemHolder> {
        private final int VIEW_TYPE_FAKE_TAIL_PREFIX;
        private final int VIEW_TYPE_NORMAL;
        private final int VIEW_TYPE_PRE_OFFSET;
        private final int VIEW_TYPE_TAIL_PREFIX;
        private final int itemHeight;
        private final boolean showAdditionalBorderAtTail;
        private final boolean showItemBorder;
        private final boolean showRoundCorner;

        public TimeLineAdapter(boolean z, boolean z2, boolean z3) {
            this.showItemBorder = z;
            this.showRoundCorner = z2;
            this.showAdditionalBorderAtTail = z3;
            this.VIEW_TYPE_NORMAL = 1;
            this.VIEW_TYPE_PRE_OFFSET = 2;
            this.VIEW_TYPE_TAIL_PREFIX = 100;
            this.VIEW_TYPE_FAKE_TAIL_PREFIX = 200;
            this.itemHeight = MediaTimeLineComponent.this.getResources().getDimensionPixelSize(R.dimen.scene_editor_time_line_item_height);
        }

        public /* synthetic */ TimeLineAdapter(MediaTimeLineComponent mediaTimeLineComponent, boolean z, boolean z2, boolean z3, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? false : z, (i & 2) != 0 ? false : z2, (i & 4) != 0 ? true : z3);
        }

        public final boolean getShowAdditionalBorderAtTail() {
            return this.showAdditionalBorderAtTail;
        }

        public final boolean getShowItemBorder() {
            return this.showItemBorder;
        }

        public final boolean getShowRoundCorner() {
            return this.showRoundCorner;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public TimeLineItemHolder onCreateViewHolder(ViewGroup parent, int i) {
            int frameCellWidth;
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            boolean z = false;
            View view = LayoutInflater.from(MediaTimeLineComponent.this.getContext()).inflate(R.layout.item_media_retriever, parent, false);
            boolean z2 = (i / 100) * 100 == this.VIEW_TYPE_TAIL_PREFIX;
            if (z2 && i % this.VIEW_TYPE_TAIL_PREFIX == MediaTimeLineComponent.this.mediaClipList.size() - 1) {
                z = true;
            }
            if (z) {
                frameCellWidth = MediaTimeLineComponent.this.getRealTailFrameWidth();
            } else {
                frameCellWidth = MediaTimeLineComponent.this.getFrameCellWidth();
            }
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.width = frameCellWidth;
            view.setLayoutParams(layoutParams);
            if (z2 && !z && this.showAdditionalBorderAtTail) {
                Intrinsics.checkExpressionValueIsNotNull(view, "view");
                FrameItemMaskView frameItemMaskView = (FrameItemMaskView) view.findViewById(R.id.frame_mask);
                ViewGroup.LayoutParams layoutParams2 = frameItemMaskView.getLayoutParams();
                layoutParams2.width = (int) (MediaTimeLineComponent.this.getFrameCellWidth() * 0.7f);
                frameItemMaskView.setLayoutParams(layoutParams2);
            }
            MediaTimeLineComponent mediaTimeLineComponent = MediaTimeLineComponent.this;
            Intrinsics.checkExpressionValueIsNotNull(view, "view");
            TimeLineItemHolder timeLineItemHolder = new TimeLineItemHolder(mediaTimeLineComponent, view, this.showItemBorder, this.showRoundCorner);
            view.setTag(timeLineItemHolder);
            return timeLineItemHolder;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return MediaTimeLineComponent.this.totalVisibleFrameCountForAdapter + (MediaTimeLineComponent.this.frameOffset * 2) + MediaTimeLineComponent.this.additionalFramePreOffset + MediaTimeLineComponent.this.additionalFramePostOffset;
        }

        /* JADX WARN: Removed duplicated region for block: B:51:0x0122  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x0125  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x0128  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x012b  */
        @Override // android.support.v7.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onBindViewHolder(com.narvii.video.widget.MediaTimeLineComponent.TimeLineItemHolder r13, int r14) {
            /*
                Method dump skipped, instructions count: 356
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.video.widget.MediaTimeLineComponent.TimeLineAdapter.onBindViewHolder(com.narvii.video.widget.MediaTimeLineComponent$TimeLineItemHolder, int):void");
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            int i2 = MediaTimeLineComponent.this.additionalFramePreOffset;
            if (i >= 0 && i2 > i) {
                return this.VIEW_TYPE_PRE_OFFSET;
            }
            ITimelineClip first = getFrameTimeByPosition(i).getFirst();
            if (first != null) {
                if (first.clipLengthComposition().size() == 1) {
                    List listSubList = MediaTimeLineComponent.this.roundCompositionVisibleFrameCountList.subList(0, first.indexInScene() + 1);
                    Intrinsics.checkExpressionValueIsNotNull(listSubList, "roundCompositionVisibleF…0, it.indexInScene() + 1)");
                    return i == ((CollectionsKt___CollectionsKt.sumOfInt(listSubList) + MediaTimeLineComponent.this.frameOffset) + MediaTimeLineComponent.this.additionalFramePreOffset) - 1 ? this.VIEW_TYPE_TAIL_PREFIX + first.indexInScene() : this.VIEW_TYPE_NORMAL;
                }
                ArrayList arrayList = new ArrayList();
                Iterator<Integer> it = first.clipLengthComposition().iterator();
                while (it.hasNext()) {
                    arrayList.add(Integer.valueOf((int) ((it.next().intValue() / MediaTimeLineComponent.this.timeLineItemFrameLengthInMs) + 0.99f)));
                }
                int size = arrayList.size();
                int i3 = 0;
                int iIntValue = 0;
                while (i3 < size) {
                    Object obj = arrayList.get(i3);
                    Intrinsics.checkExpressionValueIsNotNull(obj, "roundCompositionFrameCountList[index]");
                    iIntValue += ((Number) obj).intValue();
                    if ((i - MediaTimeLineComponent.this.frameOffset) - MediaTimeLineComponent.this.additionalFramePreOffset < iIntValue) {
                        List listSubList2 = arrayList.subList(0, i3 + 1);
                        Intrinsics.checkExpressionValueIsNotNull(listSubList2, "roundCompositionFrameCou…ist.subList(0, index + 1)");
                        if (i == ((CollectionsKt___CollectionsKt.sumOfInt(listSubList2) + MediaTimeLineComponent.this.frameOffset) + MediaTimeLineComponent.this.additionalFramePreOffset) - 1) {
                            return i3 == arrayList.size() - 1 ? this.VIEW_TYPE_TAIL_PREFIX + first.indexInScene() : this.VIEW_TYPE_FAKE_TAIL_PREFIX + i3;
                        }
                        return this.VIEW_TYPE_NORMAL;
                    }
                    i3++;
                }
            }
            return this.VIEW_TYPE_NORMAL;
        }

        public final void refreshVisibleArea() {
            HorizontalRecyclerView horizontalRecyclerView = MediaTimeLineComponent.this.timeLine;
            RecyclerView.LayoutManager layoutManager = horizontalRecyclerView != null ? horizontalRecyclerView.getLayoutManager() : null;
            if (!(layoutManager instanceof LinearLayoutManager)) {
                layoutManager = null;
            }
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            if (linearLayoutManager != null) {
                int iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition() + 1;
                for (int iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition(); iFindFirstVisibleItemPosition < iFindLastVisibleItemPosition; iFindFirstVisibleItemPosition++) {
                    View viewFindViewByPosition = linearLayoutManager.findViewByPosition(iFindFirstVisibleItemPosition);
                    if (viewFindViewByPosition != null && (viewFindViewByPosition.getTag() instanceof TimeLineItemHolder)) {
                        Object tag = viewFindViewByPosition.getTag();
                        if (tag == null) {
                            throw new TypeCastException("null cannot be cast to non-null type com.narvii.video.widget.MediaTimeLineComponent.TimeLineItemHolder");
                        }
                        onBindViewHolder((TimeLineItemHolder) tag, iFindFirstVisibleItemPosition);
                    }
                }
            }
        }

        public final Pair<Integer, Integer> getTailFrameItemInfo(int i) {
            Intrinsics.checkExpressionValueIsNotNull(MediaTimeLineComponent.this.roundCompositionVisibleFrameCountList.subList(0, i + 1), "roundCompositionVisibleF…(0, compositionIndex + 1)");
            return new Pair<>(Integer.valueOf(CollectionsKt___CollectionsKt.sumOfInt(r4) - 1), Integer.valueOf(MediaTimeLineComponent.this.getFrameCellWidth()));
        }

        private final Pair<ITimelineClip, Integer> getFrameTimeByPosition(int i) {
            if (i >= MediaTimeLineComponent.this.frameOffset + MediaTimeLineComponent.this.additionalFramePreOffset && i < (getItemCount() - MediaTimeLineComponent.this.frameOffset) - MediaTimeLineComponent.this.additionalFramePostOffset) {
                int size = MediaTimeLineComponent.this.compositionLengthMsList.size();
                int iIntValue = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    Object obj = MediaTimeLineComponent.this.roundCompositionVisibleFrameCountList.get(i2);
                    Intrinsics.checkExpressionValueIsNotNull(obj, "roundCompositionVisibleFrameCountList[index]");
                    iIntValue += ((Number) obj).intValue();
                    if ((i - MediaTimeLineComponent.this.frameOffset) - MediaTimeLineComponent.this.additionalFramePreOffset < iIntValue) {
                        int i3 = ((i - MediaTimeLineComponent.this.frameOffset) - MediaTimeLineComponent.this.additionalFramePreOffset) - iIntValue;
                        Object obj2 = MediaTimeLineComponent.this.roundCompositionVisibleFrameCountList.get(i2);
                        Intrinsics.checkExpressionValueIsNotNull(obj2, "roundCompositionVisibleFrameCountList[index]");
                        int iIntValue2 = i3 + ((Number) obj2).intValue();
                        float f = (iIntValue2 - 1) * MediaTimeLineComponent.this.timeLineItemFrameLengthInMs;
                        Float fValueOf = iIntValue2 == ((Number) MediaTimeLineComponent.this.roundCompositionVisibleFrameCountList.get(i2)).intValue() + (-1) ? (Float) MediaTimeLineComponent.this.compositionTailFrameLengthInMsList.get(i2) : Float.valueOf(MediaTimeLineComponent.this.timeLineItemFrameLengthInMs);
                        Intrinsics.checkExpressionValueIsNotNull(fValueOf, "if (inCompositionPositio…meLineItemFrameLengthInMs");
                        float fFloatValue = f + fValueOf.floatValue();
                        Iterator it = MediaTimeLineComponent.this.mediaClipList.iterator();
                        int i4 = 0;
                        while (it.hasNext()) {
                            ITimelineClip iTimelineClip = (ITimelineClip) it.next();
                            int size2 = iTimelineClip.clipLengthComposition().size();
                            int i5 = i4;
                            for (int i6 = 0; i6 < size2; i6++) {
                                if (i5 == i2) {
                                    return new Pair<>(iTimelineClip, Integer.valueOf((int) fFloatValue));
                                }
                                i5++;
                            }
                            i4 = i5;
                        }
                    }
                }
                return new Pair<>(null, Integer.valueOf(i));
            }
            return new Pair<>(null, Integer.valueOf(i));
        }
    }

    /* compiled from: MediaTimeLineComponent.kt */
    private final class PendingInitTask implements Runnable {
        private final int borderColor;
        private final TimeLineCallback callback;
        private final int cutterInitIntervalInMs;
        private final int dataType;
        private final FrameRetrieverManager frameRetrieverManager;
        private final boolean isForAudioWave;
        private final float itemFrameLengthInMs;
        private final int maxOutputLengthInMs;
        private final List<ITimelineClip> mediaClipList;
        private final IPreviewPlayer mediaPlayer;
        private final Integer minOutputLengthInMs;
        private final boolean resetTimeLine;
        private final boolean showAdditionalBorderAtTail;
        private final boolean showFrameBorder;
        private final boolean showRoundCorner;
        final /* synthetic */ MediaTimeLineComponent this$0;
        private final int timeLineType;

        /* JADX WARN: Multi-variable type inference failed */
        public PendingInitTask(MediaTimeLineComponent mediaTimeLineComponent, int i, int i2, boolean z, List<? extends ITimelineClip> mediaClipList, IPreviewPlayer iPreviewPlayer, FrameRetrieverManager frameRetrieverManager, int i3, Integer num, float f, boolean z2, int i4, boolean z3, boolean z4, int i5, TimeLineCallback timeLineCallback, boolean z5) {
            Intrinsics.checkParameterIsNotNull(mediaClipList, "mediaClipList");
            this.this$0 = mediaTimeLineComponent;
            this.dataType = i;
            this.timeLineType = i2;
            this.isForAudioWave = z;
            this.mediaClipList = mediaClipList;
            this.mediaPlayer = iPreviewPlayer;
            this.frameRetrieverManager = frameRetrieverManager;
            this.maxOutputLengthInMs = i3;
            this.minOutputLengthInMs = num;
            this.itemFrameLengthInMs = f;
            this.showFrameBorder = z2;
            this.borderColor = i4;
            this.showRoundCorner = z3;
            this.showAdditionalBorderAtTail = z4;
            this.cutterInitIntervalInMs = i5;
            this.callback = timeLineCallback;
            this.resetTimeLine = z5;
        }

        public final int getDataType() {
            return this.dataType;
        }

        public final List<ITimelineClip> getMediaClipList() {
            return this.mediaClipList;
        }

        public final IPreviewPlayer getMediaPlayer() {
            return this.mediaPlayer;
        }

        public final int getTimeLineType() {
            return this.timeLineType;
        }

        public final boolean isForAudioWave() {
            return this.isForAudioWave;
        }

        public /* synthetic */ PendingInitTask(MediaTimeLineComponent mediaTimeLineComponent, int i, int i2, boolean z, List list, IPreviewPlayer iPreviewPlayer, FrameRetrieverManager frameRetrieverManager, int i3, Integer num, float f, boolean z2, int i4, boolean z3, boolean z4, int i5, TimeLineCallback timeLineCallback, boolean z5, int i6, DefaultConstructorMarker defaultConstructorMarker) {
            this(mediaTimeLineComponent, i, i2, z, list, iPreviewPlayer, (i6 & 32) != 0 ? null : frameRetrieverManager, i3, (i6 & 128) != 0 ? 3000 : num, (i6 & 256) != 0 ? -1.0f : f, (i6 & 512) != 0 ? false : z2, (i6 & 1024) != 0 ? -1 : i4, (i6 & 2048) != 0 ? false : z3, (i6 & 4096) != 0 ? true : z4, (i6 & 8192) != 0 ? 0 : i5, (i6 & 16384) != 0 ? null : timeLineCallback, (i6 & 32768) != 0 ? false : z5);
        }

        public final FrameRetrieverManager getFrameRetrieverManager() {
            return this.frameRetrieverManager;
        }

        public final float getItemFrameLengthInMs() {
            return this.itemFrameLengthInMs;
        }

        public final int getMaxOutputLengthInMs() {
            return this.maxOutputLengthInMs;
        }

        public final Integer getMinOutputLengthInMs() {
            return this.minOutputLengthInMs;
        }

        public final int getBorderColor() {
            return this.borderColor;
        }

        public final boolean getShowAdditionalBorderAtTail() {
            return this.showAdditionalBorderAtTail;
        }

        public final boolean getShowFrameBorder() {
            return this.showFrameBorder;
        }

        public final boolean getShowRoundCorner() {
            return this.showRoundCorner;
        }

        public final TimeLineCallback getCallback() {
            return this.callback;
        }

        public final int getCutterInitIntervalInMs() {
            return this.cutterInitIntervalInMs;
        }

        public final boolean getResetTimeLine() {
            return this.resetTimeLine;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.this$0.initTimeLine(this.dataType, this.timeLineType, this.isForAudioWave, this.mediaClipList, this.mediaPlayer, this.frameRetrieverManager, this.maxOutputLengthInMs, this.minOutputLengthInMs, this.itemFrameLengthInMs, this.showFrameBorder, this.borderColor, this.showRoundCorner, this.showAdditionalBorderAtTail, this.cutterInitIntervalInMs, this.callback, this.resetTimeLine);
        }
    }
}
