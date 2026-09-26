package com.narvii.video.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.mediaeditor.R;
import com.narvii.mediaeditor.databinding.ItemMediaRetrieverBinding;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.video.interfaces.IAVClipInfoPack;
import com.narvii.video.interfaces.IPreviewPlayer;
import com.narvii.video.interfaces.ITimeLineControllerCallback;
import com.narvii.video.interfaces.ITimelineClip;
import com.narvii.video.interfaces.IVideoServiceCallback;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.services.FrameRetrieverManager;
import com.narvii.video.widget.videoview.MediaEventListenerImpl;
import com.narvii.widget.HorizontalRecyclerView;
import com.narvii.widget.NVImageView;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.d0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.u;

/* JADX INFO: loaded from: classes4.dex */
public final class MediaTimeLineComponent extends FrameLayout implements ITimeLineControllerCallback {

    @NotNull
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

    @NotNull
    private final ArrayList<Float> accurateCompositionVisibleFrameCountList;

    @NotNull
    private final ArrayList<Float> accurateMainTrackCompositionFrameCountList;
    private int activeClipIndex;
    private int additionalFramePostOffset;
    private int additionalFramePreOffset;
    private int additionalFramePreOffsetDx;

    @NotNull
    private final AttributeSet attributes;
    private int borderColor;
    private final int bottomGapSize;
    private float componentCenterX;

    @NotNull
    private final ArrayList<Integer> compositionLengthMsList;

    @NotNull
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

    @Nullable
    private FrameRetrieverManager frameRetrieverManager;
    private boolean interceptedByController;
    private boolean isForAudioWave;
    private int lastOffsetRecord;

    @NotNull
    private final Handler mainHandler;

    @NotNull
    private final ArrayList<Integer> mainTrackCompositionLengthMsList;

    @NotNull
    private final ArrayList<Float> mainTrackCompositionTailFrameLengthInMsList;
    private int maxVisibleSectionIntervalInMs;

    @NotNull
    private ArrayList<ITimelineClip> mediaClipList;
    private int mediaLengthInMs;

    @Nullable
    private IPreviewPlayer mediaPlayer;
    private int minOutputLength;

    @Nullable
    private PendingInitTask pendingInitTask;
    private Runnable playbackTimer;
    private int realFrameTimelineWidth;
    private int realTailFrameWidth;

    @Nullable
    private MediaRetrieveController retrieveCutter;

    @NotNull
    private final ArrayList<Integer> roundCompositionVisibleFrameCountList;

    @NotNull
    private final ArrayList<Integer> roundMainTrackCompositionFrameCountList;
    private final boolean rtl;
    private boolean seeking;

    @NotNull
    private final Paint sideShadowPaint;

    @NotNull
    private final Rect sideShadowRect;

    @Nullable
    private HorizontalRecyclerView timeLine;

    @Nullable
    private TimeLineAdapter timeLineAdapter;

    @Nullable
    private TimeLineCallback timeLineCallback;
    private float timeLineItemFrameLengthInMs;
    private int timeLineType;
    private int totalVisibleFrameCountForAdapter;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    private final class PendingInitTask implements Runnable {
        private final int borderColor;

        @Nullable
        private final TimeLineCallback callback;
        private final int cutterInitIntervalInMs;
        private final int dataType;

        @Nullable
        private final FrameRetrieverManager frameRetrieverManager;
        private final boolean isForAudioWave;
        private final float itemFrameLengthInMs;
        private final int maxOutputLengthInMs;

        @NotNull
        private final List<ITimelineClip> mediaClipList;

        @Nullable
        private final IPreviewPlayer mediaPlayer;

        @Nullable
        private final Integer minOutputLengthInMs;
        private final boolean resetTimeLine;
        private final boolean showAdditionalBorderAtTail;
        private final boolean showFrameBorder;
        private final boolean showRoundCorner;
        final /* synthetic */ MediaTimeLineComponent this$0;
        private final int timeLineType;

        /* JADX WARN: Multi-variable type inference failed */
        public PendingInitTask(MediaTimeLineComponent mediaTimeLineComponent, int i10, int i11, @NotNull boolean z6, @Nullable List<? extends ITimelineClip> mediaClipList, @Nullable IPreviewPlayer iPreviewPlayer, FrameRetrieverManager frameRetrieverManager, @Nullable int i12, Integer num, float f, boolean z10, int i13, boolean z11, boolean z12, @Nullable int i14, TimeLineCallback timeLineCallback, boolean z13) {
            t.j(mediaClipList, "mediaClipList");
            this.this$0 = mediaTimeLineComponent;
            this.dataType = i10;
            this.timeLineType = i11;
            this.isForAudioWave = z6;
            this.mediaClipList = mediaClipList;
            this.mediaPlayer = iPreviewPlayer;
            this.frameRetrieverManager = frameRetrieverManager;
            this.maxOutputLengthInMs = i12;
            this.minOutputLengthInMs = num;
            this.itemFrameLengthInMs = f;
            this.showFrameBorder = z10;
            this.borderColor = i13;
            this.showRoundCorner = z11;
            this.showAdditionalBorderAtTail = z12;
            this.cutterInitIntervalInMs = i14;
            this.callback = timeLineCallback;
            this.resetTimeLine = z13;
        }

        public final int getBorderColor() {
            return this.borderColor;
        }

        @Nullable
        public final TimeLineCallback getCallback() {
            return this.callback;
        }

        public final int getCutterInitIntervalInMs() {
            return this.cutterInitIntervalInMs;
        }

        public final int getDataType() {
            return this.dataType;
        }

        @Nullable
        public final FrameRetrieverManager getFrameRetrieverManager() {
            return this.frameRetrieverManager;
        }

        public final float getItemFrameLengthInMs() {
            return this.itemFrameLengthInMs;
        }

        public final int getMaxOutputLengthInMs() {
            return this.maxOutputLengthInMs;
        }

        @NotNull
        public final List<ITimelineClip> getMediaClipList() {
            return this.mediaClipList;
        }

        @Nullable
        public final IPreviewPlayer getMediaPlayer() {
            return this.mediaPlayer;
        }

        @Nullable
        public final Integer getMinOutputLengthInMs() {
            return this.minOutputLengthInMs;
        }

        public final boolean getResetTimeLine() {
            return this.resetTimeLine;
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

        public final int getTimeLineType() {
            return this.timeLineType;
        }

        public final boolean isForAudioWave() {
            return this.isForAudioWave;
        }

        public /* synthetic */ PendingInitTask(MediaTimeLineComponent mediaTimeLineComponent, int i10, int i11, boolean z6, List list, IPreviewPlayer iPreviewPlayer, FrameRetrieverManager frameRetrieverManager, int i12, Integer num, float f, boolean z10, int i13, boolean z11, boolean z12, int i14, TimeLineCallback timeLineCallback, boolean z13, int i15, kotlin.jvm.internal.k kVar) {
            this(mediaTimeLineComponent, i10, i11, z6, list, iPreviewPlayer, (i15 & 32) != 0 ? null : frameRetrieverManager, i12, (i15 & 128) != 0 ? 3000 : num, (i15 & 256) != 0 ? -1.0f : f, (i15 & 512) != 0 ? false : z10, (i15 & 1024) != 0 ? -1 : i13, (i15 & 2048) != 0 ? false : z11, (i15 & 4096) != 0 ? true : z12, (i15 & 8192) != 0 ? 0 : i14, (i15 & 16384) != 0 ? null : timeLineCallback, (i15 & 32768) != 0 ? false : z13);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.this$0.initTimeLine(this.dataType, this.timeLineType, this.isForAudioWave, this.mediaClipList, this.mediaPlayer, this.frameRetrieverManager, this.maxOutputLengthInMs, this.minOutputLengthInMs, this.itemFrameLengthInMs, this.showFrameBorder, this.borderColor, this.showRoundCorner, this.showAdditionalBorderAtTail, this.cutterInitIntervalInMs, this.callback, this.resetTimeLine);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class TimeLineAdapter extends RecyclerView.Adapter<TimeLineItemHolder> {
        private final int VIEW_TYPE_FAKE_TAIL_PREFIX;
        private final int VIEW_TYPE_NORMAL;
        private final int VIEW_TYPE_PRE_OFFSET;
        private final int VIEW_TYPE_TAIL_PREFIX;
        private final int itemHeight;
        private final boolean showAdditionalBorderAtTail;
        private final boolean showItemBorder;
        private final boolean showRoundCorner;

        public /* synthetic */ TimeLineAdapter(MediaTimeLineComponent mediaTimeLineComponent, boolean z6, boolean z10, boolean z11, int i10, kotlin.jvm.internal.k kVar) {
            this((i10 & 1) != 0 ? false : z6, (i10 & 2) != 0 ? false : z10, (i10 & 4) != 0 ? true : z11);
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

        public TimeLineAdapter(boolean z6, boolean z10, boolean z11) {
            this.showItemBorder = z6;
            this.showRoundCorner = z10;
            this.showAdditionalBorderAtTail = z11;
            this.VIEW_TYPE_NORMAL = 1;
            this.VIEW_TYPE_PRE_OFFSET = 2;
            this.VIEW_TYPE_TAIL_PREFIX = 100;
            this.VIEW_TYPE_FAKE_TAIL_PREFIX = 200;
            this.itemHeight = MediaTimeLineComponent.this.getResources().getDimensionPixelSize(R.dimen.scene_editor_time_line_item_height);
        }

        private final u<ITimelineClip, Integer> getFrameTimeByPosition(int i10) {
            if (i10 < MediaTimeLineComponent.this.frameOffset + MediaTimeLineComponent.this.additionalFramePreOffset || i10 >= (getItemCount() - MediaTimeLineComponent.this.frameOffset) - MediaTimeLineComponent.this.additionalFramePostOffset) {
                return new u<>(null, Integer.valueOf(i10));
            }
            int size = MediaTimeLineComponent.this.compositionLengthMsList.size();
            int iIntValue = 0;
            for (int i11 = 0; i11 < size; i11++) {
                Object obj = MediaTimeLineComponent.this.roundCompositionVisibleFrameCountList.get(i11);
                t.i(obj, "get(...)");
                iIntValue += ((Number) obj).intValue();
                if ((i10 - MediaTimeLineComponent.this.frameOffset) - MediaTimeLineComponent.this.additionalFramePreOffset < iIntValue) {
                    int i12 = ((i10 - MediaTimeLineComponent.this.frameOffset) - MediaTimeLineComponent.this.additionalFramePreOffset) - iIntValue;
                    Object obj2 = MediaTimeLineComponent.this.roundCompositionVisibleFrameCountList.get(i11);
                    t.i(obj2, "get(...)");
                    int iIntValue2 = i12 + ((Number) obj2).intValue();
                    float f = (iIntValue2 - 1) * MediaTimeLineComponent.this.timeLineItemFrameLengthInMs;
                    Float fValueOf = iIntValue2 == ((Number) MediaTimeLineComponent.this.roundCompositionVisibleFrameCountList.get(i11)).intValue() + (-1) ? (Float) MediaTimeLineComponent.this.compositionTailFrameLengthInMsList.get(i11) : Float.valueOf(MediaTimeLineComponent.this.timeLineItemFrameLengthInMs);
                    t.g(fValueOf);
                    float fFloatValue = f + fValueOf.floatValue();
                    int i13 = 0;
                    for (ITimelineClip iTimelineClip : MediaTimeLineComponent.this.mediaClipList) {
                        int size2 = iTimelineClip.clipLengthComposition().size();
                        for (int i14 = 0; i14 < size2; i14++) {
                            if (i13 == i11) {
                                return new u<>(iTimelineClip, Integer.valueOf((int) fFloatValue));
                            }
                            i13++;
                        }
                    }
                }
            }
            return new u<>(null, Integer.valueOf(i10));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return MediaTimeLineComponent.this.totalVisibleFrameCountForAdapter + (MediaTimeLineComponent.this.frameOffset * 2) + MediaTimeLineComponent.this.additionalFramePreOffset + MediaTimeLineComponent.this.additionalFramePostOffset;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i10) {
            if (i10 >= 0 && i10 < MediaTimeLineComponent.this.additionalFramePreOffset) {
                return this.VIEW_TYPE_PRE_OFFSET;
            }
            ITimelineClip iTimelineClipC = getFrameTimeByPosition(i10).c();
            if (iTimelineClipC != null) {
                MediaTimeLineComponent mediaTimeLineComponent = MediaTimeLineComponent.this;
                if (iTimelineClipC.clipLengthComposition().size() == 1) {
                    List listSubList = mediaTimeLineComponent.roundCompositionVisibleFrameCountList.subList(0, iTimelineClipC.indexInScene() + 1);
                    t.i(listSubList, "subList(...)");
                    return i10 == ((d0.M0(listSubList) + mediaTimeLineComponent.frameOffset) + mediaTimeLineComponent.additionalFramePreOffset) - 1 ? this.VIEW_TYPE_TAIL_PREFIX + iTimelineClipC.indexInScene() : this.VIEW_TYPE_NORMAL;
                }
                ArrayList arrayList = new ArrayList();
                Iterator<Integer> it = iTimelineClipC.clipLengthComposition().iterator();
                while (it.hasNext()) {
                    arrayList.add(Integer.valueOf((int) ((it.next().intValue() / mediaTimeLineComponent.timeLineItemFrameLengthInMs) + 0.99f)));
                }
                int size = arrayList.size();
                int i11 = 0;
                int iIntValue = 0;
                while (i11 < size) {
                    Object obj = arrayList.get(i11);
                    t.i(obj, "get(...)");
                    iIntValue += ((Number) obj).intValue();
                    if ((i10 - mediaTimeLineComponent.frameOffset) - mediaTimeLineComponent.additionalFramePreOffset < iIntValue) {
                        List listSubList2 = arrayList.subList(0, i11 + 1);
                        t.i(listSubList2, "subList(...)");
                        if (i10 == ((d0.M0(listSubList2) + mediaTimeLineComponent.frameOffset) + mediaTimeLineComponent.additionalFramePreOffset) - 1) {
                            return i11 == arrayList.size() - 1 ? this.VIEW_TYPE_TAIL_PREFIX + iTimelineClipC.indexInScene() : this.VIEW_TYPE_FAKE_TAIL_PREFIX + i11;
                        }
                        return this.VIEW_TYPE_NORMAL;
                    }
                    i11++;
                }
            }
            return this.VIEW_TYPE_NORMAL;
        }

        @NotNull
        public final u<Integer, Integer> getTailFrameItemInfo(int i10) {
            List listSubList = MediaTimeLineComponent.this.roundCompositionVisibleFrameCountList.subList(0, i10 + 1);
            t.i(listSubList, "subList(...)");
            return new u<>(Integer.valueOf(d0.M0(listSubList) - 1), Integer.valueOf(MediaTimeLineComponent.this.getFrameCellWidth()));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull TimeLineItemHolder holder, int i10) {
            float frameCellWidth;
            int i11;
            t.j(holder, "holder");
            if (i10 < MediaTimeLineComponent.this.frameOffset + MediaTimeLineComponent.this.additionalFramePreOffset || i10 >= (getItemCount() - MediaTimeLineComponent.this.frameOffset) - MediaTimeLineComponent.this.additionalFramePostOffset) {
                holder.setTag(-1);
                holder.setBlankFrame();
                holder.setOnItemClickedListener(null);
                return;
            }
            u<ITimelineClip, Integer> frameTimeByPosition = getFrameTimeByPosition(i10);
            final ITimelineClip iTimelineClipA = frameTimeByPosition.a();
            int iIntValue = frameTimeByPosition.b().intValue();
            final MediaTimeLineComponent mediaTimeLineComponent = MediaTimeLineComponent.this;
            holder.setOnItemClickedListener(new View.OnClickListener() { // from class: com.narvii.video.widget.p
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MediaTimeLineComponent.TimeLineAdapter.onBindViewHolder$lambda$3(iTimelineClipA, mediaTimeLineComponent, view);
                }
            });
            int itemViewType = getItemViewType(i10);
            boolean z6 = i10 == MediaTimeLineComponent.this.frameOffset + MediaTimeLineComponent.this.additionalFramePreOffset || (getItemViewType(i10 + (-1)) / 100) * 100 == this.VIEW_TYPE_TAIL_PREFIX;
            int i12 = (itemViewType / 100) * 100;
            int i13 = this.VIEW_TYPE_TAIL_PREFIX;
            boolean z10 = i12 == i13;
            if (z10 && itemViewType % i13 == MediaTimeLineComponent.this.mediaClipList.size() - 1) {
                frameCellWidth = MediaTimeLineComponent.this.getRealTailFrameWidth() * 1.0f;
            } else {
                int i14 = i10 + 1;
                frameCellWidth = (i14 < getItemCount() && (getItemViewType(i14) / 100) * 100 == this.VIEW_TYPE_TAIL_PREFIX && getItemViewType(i14) % this.VIEW_TYPE_TAIL_PREFIX == MediaTimeLineComponent.this.mediaClipList.size() - 1) ? MediaTimeLineComponent.this.getFrameCellWidth() + MediaTimeLineComponent.this.getRealTailFrameWidth() : -1000.0f;
            }
            float f = frameCellWidth;
            if (MediaTimeLineComponent.this.frameRetrieverManager != null && (MediaTimeLineComponent.this.dataType == 100 || MediaTimeLineComponent.this.dataType == 104 || MediaTimeLineComponent.this.isForAudioWave)) {
                if (iTimelineClipA instanceof IAVClipInfoPack) {
                    IAVClipInfoPack iAVClipInfoPack = (IAVClipInfoPack) iTimelineClipA;
                    holder.retrieveFrame(iAVClipInfoPack, iIntValue + (iAVClipInfoPack.hasInvisibleFrames() ? iAVClipInfoPack.trimStartInMsWithSpeed() : 0), MediaTimeLineComponent.this.getFrameCellWidth(), this.itemHeight, z6, z10, f);
                    return;
                }
                return;
            }
            switch (MediaTimeLineComponent.this.dataType) {
                case 101:
                    i11 = (!(iTimelineClipA instanceof AVClipInfoPack) || !((AVClipInfoPack) iTimelineClipA).isSfx) ? R.color.media_timeline_audio_frame_color : R.color.media_timeline_sfx_frame_color;
                    break;
                case 102:
                    i11 = R.color.media_timeline_caption_frame_color;
                    break;
                case 103:
                    i11 = R.color.media_timeline_sticker_frame_color;
                    break;
                default:
                    i11 = R.color.media_timeline_audio_frame_color;
                    break;
            }
            holder.setDrawableFrame(new ColorDrawable(MediaTimeLineComponent.this.getResources().getColor(i11)), z6, z10, f);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public TimeLineItemHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
            t.j(parent, "parent");
            boolean z6 = false;
            ItemMediaRetrieverBinding itemMediaRetrieverBindingInflate = ItemMediaRetrieverBinding.inflate(LayoutInflater.from(MediaTimeLineComponent.this.getContext()), parent, false);
            t.i(itemMediaRetrieverBindingInflate, "inflate(...)");
            int i11 = (i10 / 100) * 100;
            int i12 = this.VIEW_TYPE_TAIL_PREFIX;
            boolean z10 = i11 == i12;
            if (z10 && i10 % i12 == MediaTimeLineComponent.this.mediaClipList.size() - 1) {
                z6 = true;
            }
            int realTailFrameWidth = z6 ? MediaTimeLineComponent.this.getRealTailFrameWidth() : MediaTimeLineComponent.this.getFrameCellWidth();
            FrameLayout frameLayoutM1603getRoot = itemMediaRetrieverBindingInflate.getRoot();
            ViewGroup.LayoutParams layoutParams = frameLayoutM1603getRoot.getLayoutParams();
            layoutParams.width = realTailFrameWidth;
            frameLayoutM1603getRoot.setLayoutParams(layoutParams);
            if (z10 && !z6 && this.showAdditionalBorderAtTail) {
                FrameItemMaskView frameItemMaskView = itemMediaRetrieverBindingInflate.frameMask;
                MediaTimeLineComponent mediaTimeLineComponent = MediaTimeLineComponent.this;
                ViewGroup.LayoutParams layoutParams2 = frameItemMaskView.getLayoutParams();
                layoutParams2.width = (int) (mediaTimeLineComponent.getFrameCellWidth() * 0.7f);
                frameItemMaskView.setLayoutParams(layoutParams2);
            }
            TimeLineItemHolder timeLineItemHolder = new TimeLineItemHolder(MediaTimeLineComponent.this, itemMediaRetrieverBindingInflate, this.showItemBorder, this.showRoundCorner);
            itemMediaRetrieverBindingInflate.getRoot().setTag(timeLineItemHolder);
            return timeLineItemHolder;
        }

        public final void refreshVisibleArea() {
            HorizontalRecyclerView horizontalRecyclerView = MediaTimeLineComponent.this.timeLine;
            RecyclerView.LayoutManager layoutManager = horizontalRecyclerView != null ? horizontalRecyclerView.getLayoutManager() : null;
            LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
            if (linearLayoutManager != null) {
                int iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition() + 1;
                for (int iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition(); iFindFirstVisibleItemPosition < iFindLastVisibleItemPosition; iFindFirstVisibleItemPosition++) {
                    View viewFindViewByPosition = linearLayoutManager.findViewByPosition(iFindFirstVisibleItemPosition);
                    if (viewFindViewByPosition != null && (viewFindViewByPosition.getTag() instanceof TimeLineItemHolder)) {
                        Object tag = viewFindViewByPosition.getTag();
                        t.h(tag, "null cannot be cast to non-null type com.narvii.video.widget.MediaTimeLineComponent.TimeLineItemHolder");
                        onBindViewHolder((TimeLineItemHolder) tag, iFindFirstVisibleItemPosition);
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onBindViewHolder$lambda$3(ITimelineClip iTimelineClip, MediaTimeLineComponent this$0, View view) {
            TimeLineCallback timeLineCallback;
            t.j(this$0, "this$0");
            if (iTimelineClip != null && (timeLineCallback = this$0.timeLineCallback) != null) {
                timeLineCallback.onTimeLineClicked(iTimelineClip);
            }
        }
    }

    public interface TimeLineCallback {

        public static final class DefaultImpls {
            public static void onControllerActive(@NotNull TimeLineCallback timeLineCallback) {
            }

            public static void onFrameLocatedDuringMove(@NotNull TimeLineCallback timeLineCallback, int i10, int i11) {
            }

            public static void onPlayerTick(@NotNull TimeLineCallback timeLineCallback, long j6, long j10) {
            }

            public static void onReplayTriggered(@NotNull TimeLineCallback timeLineCallback, int i10, int i11, int i12) {
            }

            public static void onTimeLineClicked(@NotNull TimeLineCallback timeLineCallback, @NotNull ITimelineClip clipInfo) {
                t.j(clipInfo, "clipInfo");
            }

            public static void onTimeLineLayout(@NotNull TimeLineCallback timeLineCallback) {
            }

            public static void onTimeLineScrolledOffsetChanged(@NotNull TimeLineCallback timeLineCallback, int i10) {
            }
        }

        void onControllerActive();

        void onFrameLocatedDuringMove(int i10, int i11);

        void onPlayerTick(long j6, long j10);

        void onReplayTriggered(int i10, int i11, int i12);

        void onTimeLineClicked(@NotNull ITimelineClip iTimelineClip);

        void onTimeLineLayout();

        void onTimeLineScrolledOffsetChanged(int i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class TimeLineItemHolder extends RecyclerView.ViewHolder {

        @NotNull
        private final ItemMediaRetrieverBinding binding;

        @NotNull
        private final FrameItemMaskView frameMaskView;

        @NotNull
        private final NVImageView frameView;
        private final boolean showItemBorder;
        private final boolean showRoundCorner;
        private int tag;
        final /* synthetic */ MediaTimeLineComponent this$0;
        private int viewHeight;
        private int viewWidth;

        public final boolean getShowItemBorder() {
            return this.showItemBorder;
        }

        public final boolean getShowRoundCorner() {
            return this.showRoundCorner;
        }

        public final int getTag() {
            return this.tag;
        }

        public final void setTag(int i10) {
            this.tag = i10;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TimeLineItemHolder(@NotNull MediaTimeLineComponent mediaTimeLineComponent, ItemMediaRetrieverBinding binding, boolean z6, boolean z10) {
            super(binding.getRoot());
            t.j(binding, "binding");
            this.this$0 = mediaTimeLineComponent;
            this.binding = binding;
            this.showItemBorder = z6;
            this.showRoundCorner = z10;
            View viewFindViewById = this.itemView.findViewById(R.id.frame_pic);
            t.i(viewFindViewById, "findViewById(...)");
            NVImageView nVImageView = (NVImageView) viewFindViewById;
            this.frameView = nVImageView;
            View viewFindViewById2 = this.itemView.findViewById(R.id.frame_mask);
            t.i(viewFindViewById2, "findViewById(...)");
            FrameItemMaskView frameItemMaskView = (FrameItemMaskView) viewFindViewById2;
            this.frameMaskView = frameItemMaskView;
            this.tag = -1;
            nVImageView.setShowPressedMask(false);
            frameItemMaskView.setBorderStyle(mediaTimeLineComponent.borderColor, mediaTimeLineComponent.frameItemCornerRadius);
            FrameItemMaskView.updateBorder$default(frameItemMaskView, z10, z6, false, false, 0.0f, 28, null);
        }

        public final void retrieveFrame(@NotNull IAVClipInfoPack inputClip, int i10, int i11, int i12, final boolean z6, final boolean z10, final float f) {
            FrameRetrieverManager frameRetrieverManager;
            t.j(inputClip, "inputClip");
            String strInputPath = inputClip.inputPath();
            File file = strInputPath != null ? new File(strInputPath) : null;
            if (file == null || file.exists()) {
                final boolean z11 = this.showItemBorder && inputClip.indexInScene() == this.this$0.activeClipIndex;
                FrameItemMaskView.updateBorder$default(this.frameMaskView, this.showRoundCorner, z11, z6, z10, 0.0f, 16, null);
                this.tag = i10;
                this.viewWidth = i11;
                this.viewHeight = i12;
                if (this.this$0.getCurRecyclerViewState() < 0 || (frameRetrieverManager = this.this$0.frameRetrieverManager) == null) {
                    return;
                }
                FrameRetrieverManager.retrieveFrame$default(frameRetrieverManager, inputClip, i10, false, new IVideoServiceCallback() { // from class: com.narvii.video.widget.MediaTimeLineComponent$TimeLineItemHolder$retrieveFrame$1
                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onFrameBitmapLoaded(int i13, @Nullable Bitmap bitmap) {
                        if (this.this$0.getTag() == i13) {
                            this.this$0.frameView.setImageBitmap(bitmap);
                            this.this$0.frameMaskView.updateBorder(this.this$0.getShowRoundCorner(), z11, z6, z10, f);
                        }
                    }

                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onActionCancelled() {
                        IVideoServiceCallback.DefaultImpls.onActionCancelled(this);
                    }

                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onActionFailed(@Nullable Exception exc) {
                        IVideoServiceCallback.DefaultImpls.onActionFailed(this, exc);
                    }

                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onActionStarted() {
                        IVideoServiceCallback.DefaultImpls.onActionStarted(this);
                    }

                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onExecutingTaskChanged(@NotNull g7.d dVar) {
                        IVideoServiceCallback.DefaultImpls.onExecutingTaskChanged(this, dVar);
                    }

                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onFramePicturesLoaded(int i13, @Nullable File file2) {
                        IVideoServiceCallback.DefaultImpls.onFramePicturesLoaded(this, i13, file2);
                    }

                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onProgress(float f6, @Nullable String str) {
                        IVideoServiceCallback.DefaultImpls.onProgress(this, f6, str);
                    }

                    @Override // com.narvii.video.interfaces.IVideoServiceCallback
                    public void onVideoProcessed(@NotNull String str) {
                        IVideoServiceCallback.DefaultImpls.onVideoProcessed(this, str);
                    }
                }, this.viewWidth, this.viewHeight, 4, null);
            }
        }

        public final void setBlankFrame() {
            this.frameView.setImageDrawable(null);
            FrameItemMaskView.updateBorder$default(this.frameMaskView, false, false, false, false, 0.0f, 28, null);
        }

        public final void setDrawableFrame(@NotNull Drawable drawable, boolean z6, boolean z10, float f) {
            t.j(drawable, "drawable");
            this.frameView.setImageDrawable(drawable);
            this.frameMaskView.updateBorder(this.showRoundCorner, this.showItemBorder, z6, z10, f);
        }

        public final void setOnItemClickedListener(@Nullable View.OnClickListener onClickListener) {
            this.itemView.setOnClickListener(onClickListener);
        }
    }

    public static /* synthetic */ int getFirstFrameStartDx$default(MediaTimeLineComponent mediaTimeLineComponent, boolean z6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = true;
        }
        return mediaTimeLineComponent.getFirstFrameStartDx(z6);
    }

    public static /* synthetic */ int getTimeLineScrolledDx$default(MediaTimeLineComponent mediaTimeLineComponent, boolean z6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = true;
        }
        return mediaTimeLineComponent.getTimeLineScrolledDx(z6);
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

    public final int getAdditionalFramePostOffsetDx() {
        return this.additionalFramePreOffsetDx - this.realFrameTimelineWidth;
    }

    public final int getAdditionalFramePreOffsetDx() {
        return this.additionalFramePreOffsetDx;
    }

    @NotNull
    public final AttributeSet getAttributes() {
        return this.attributes;
    }

    @NotNull
    public final int[] getCurCutPosition() {
        int i10 = this.curFirstVideoFrameTimeInMs;
        return new int[]{this.curControllerStartTimeOffsetInMs + i10, i10 + this.curControllerEndTimeOffsetInMs};
    }

    public final int getCurRecyclerViewState() {
        return this.curRecyclerViewState;
    }

    public final int getFrameCellWidth() {
        return this.frameCellWidth;
    }

    public final int getMediaLengthInMs() {
        return this.mediaLengthInMs;
    }

    public final int getRealFrameTimelineWidth() {
        return this.realFrameTimelineWidth;
    }

    public final int getRealTailFrameWidth() {
        return this.realTailFrameWidth;
    }

    public final boolean getSeeking() {
        return this.seeking;
    }

    public final int getTimelineVisibleSectionWidth() {
        return this.realFrameTimelineWidth;
    }

    public final int getTotalFrameCount() {
        return this.totalVisibleFrameCountForAdapter;
    }

    public final int initTimeLine(int i10, int i11, boolean z6, @NotNull List<? extends ITimelineClip> mediaClipList, @Nullable IPreviewPlayer iPreviewPlayer, @Nullable FrameRetrieverManager frameRetrieverManager, int i12, @Nullable Integer num, float f, boolean z10, int i13, boolean z11, boolean z12, int i14, @Nullable TimeLineCallback timeLineCallback, boolean z13) {
        int iClipLength;
        t.j(mediaClipList, "mediaClipList");
        if (mediaClipList.isEmpty()) {
            return 0;
        }
        if (this.frameCellWidth == 0) {
            this.pendingInitTask = new PendingInitTask(this, i10, i11, z6, mediaClipList, iPreviewPlayer, frameRetrieverManager, i12, num, f, z10, i13, z11, z12, i14, timeLineCallback, z13);
            return 0;
        }
        resetGlobalVariables();
        this.dataType = i10;
        this.timeLineType = i11;
        this.isForAudioWave = z6;
        this.mediaClipList.clear();
        int size = mediaClipList.size();
        for (int i15 = 0; i15 < size; i15++) {
            ITimelineClip iTimelineClipCopy = mediaClipList.get(i15).copy();
            iTimelineClipCopy.setIndexInScene(i15);
            this.mediaClipList.add(iTimelineClipCopy);
            this.mediaLengthInMs += iTimelineClipCopy.clipLength();
        }
        t.g(num);
        this.minOutputLength = num.intValue();
        this.curPlaybackTimeBase = 0L;
        this.curFirstVideoFrameTimeInMs = 0;
        this.borderColor = i13;
        this.mediaPlayer = iPreviewPlayer;
        int i16 = i12 + 1;
        int i17 = this.mediaLengthInMs;
        int i18 = (1 > i17 || i17 >= i16) ? i12 > 0 ? i12 : 15000 : i17;
        this.maxVisibleSectionIntervalInMs = (1 > i17 || i17 >= i16) ? i18 : (int) (this.frameCountInBaseRect * this.timeLineItemFrameLengthInMs);
        this.timeLineItemFrameLengthInMs = f > 0.0f ? f : i18 / this.frameCountInHighlightRect;
        Utils.post(new Runnable() { // from class: com.narvii.video.widget.l
            @Override // java.lang.Runnable
            public final void run() {
                MediaTimeLineComponent.initTimeLine$lambda$4(this.f2985a);
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
        this.totalVisibleFrameCountForAdapter = d0.M0(this.roundCompositionVisibleFrameCountList);
        this.timeLineCallback = timeLineCallback;
        this.curControllerEndTimeOffsetInMs = i18;
        if (frameRetrieverManager != null) {
            frameRetrieverManager.setFrameRetrieveInterval(this.timeLineItemFrameLengthInMs);
        }
        initComponent(z11, z10, z12, z13, i14, i18);
        return Math.abs(this.curControllerEndTimeOffsetInMs - this.curControllerStartTimeOffsetInMs);
    }

    @NotNull
    public final u<Boolean, Integer> isTailFrameCellPlaying() {
        int timeLineScrolledDx$default = getTimeLineScrolledDx$default(this, false, 1, null);
        int i10 = (this.additionalFramePreOffset + this.totalVisibleFrameCountForAdapter) - 1;
        int i11 = this.frameCellWidth;
        int i12 = timeLineScrolledDx$default - (i10 * i11);
        boolean z6 = i11 > 0 && i12 >= 0;
        return new u<>(Boolean.valueOf(z6), Integer.valueOf(z6 ? getSectionDurationInMs$default(this, i12, 0, false, 2, null) : 0));
    }

    public final void setCurRecyclerViewState(int i10) {
        this.curRecyclerViewState = i10;
    }

    public final void setFrameCellWidth(int i10) {
        this.frameCellWidth = i10;
    }

    public final void setMediaLengthInMs(int i10) {
        this.mediaLengthInMs = i10;
    }

    public final void setRealFrameTimelineWidth(int i10) {
        this.realFrameTimelineWidth = i10;
    }

    public final void setRealTailFrameWidth(int i10) {
        this.realTailFrameWidth = i10;
    }

    public final void setSeeking(boolean z6) {
        this.seeking = z6;
    }

    public final void setTimeLineCallback(@Nullable TimeLineCallback timeLineCallback) {
        this.timeLineCallback = timeLineCallback;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaTimeLineComponent(@NotNull Context context, @NotNull AttributeSet attributes) {
        super(context, attributes);
        t.j(context, "context");
        t.j(attributes, "attributes");
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
        Paint paint = new Paint();
        this.sideShadowPaint = paint;
        this.mainHandler = new Handler(Looper.getMainLooper());
        this.bottomGapSize = getResources().getDimensionPixelSize(R.dimen.media_retrieve_controller_text_size);
        this.mediaClipList = new ArrayList<>();
        this.rtl = Utils.isRtl();
        this.frameItemCornerRadius = getResources().getDimensionPixelSize(R.dimen.scene_editor_time_line_item_corner_radius);
        setClipChildren(false);
        setClipToPadding(false);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributes, R.styleable.MediaTimeLineComponent, 0, 0);
        t.i(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        int i10 = typedArrayObtainStyledAttributes.getInt(R.styleable.MediaTimeLineComponent_frameCountInHighlightRect, 15);
        this.frameCountInHighlightRect = i10;
        int i11 = typedArrayObtainStyledAttributes.getInt(R.styleable.MediaTimeLineComponent_frameCountInBaseRect, 21);
        this.frameCountInBaseRect = i11;
        this.controllerHandlerWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.MediaTimeLineComponent_controllerHandlerWidth, getResources().getDimensionPixelSize(R.dimen.video_editor_controller_handler_width));
        this.frameOffset = typedArrayObtainStyledAttributes.getInt(R.styleable.MediaTimeLineComponent_frameOffset, (i11 - i10) / 2);
        typedArrayObtainStyledAttributes.recycle();
        setWillNotDraw(false);
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(getResources().getColor(R.color.media_timeline_side_shadow_color));
        this.playbackTimer = new Runnable() { // from class: com.narvii.video.widget.n
            @Override // java.lang.Runnable
            public final void run() {
                MediaTimeLineComponent._init_$lambda$1(this.f2987a);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getCurFirstMediaFrameTime() {
        LinearLayoutManager linearLayoutManager;
        View viewFindViewByPosition;
        View viewFindViewByPosition2;
        u<Integer, Integer> tailFrameItemInfo;
        HorizontalRecyclerView horizontalRecyclerView = this.timeLine;
        RecyclerView.LayoutManager layoutManager = horizontalRecyclerView != null ? horizontalRecyclerView.getLayoutManager() : null;
        LinearLayoutManager linearLayoutManager2 = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
        int left = 0;
        int iFindFirstVisibleItemPosition = (linearLayoutManager2 != null ? linearLayoutManager2.findFirstVisibleItemPosition() : 0) - this.additionalFramePreOffset;
        int size = this.compositionLengthMsList.size();
        int i10 = 0;
        boolean z6 = false;
        for (int i11 = 0; i11 < size; i11++) {
            TimeLineAdapter timeLineAdapter = this.timeLineAdapter;
            Integer numC = (timeLineAdapter == null || (tailFrameItemInfo = timeLineAdapter.getTailFrameItemInfo(i11)) == null) ? null : tailFrameItemInfo.c();
            if (numC != null) {
                int iIntValue = numC.intValue();
                if (iFindFirstVisibleItemPosition > iIntValue) {
                    i10++;
                }
                if (iFindFirstVisibleItemPosition == iIntValue) {
                    z6 = true;
                }
            }
        }
        float fFloatValue = (iFindFirstVisibleItemPosition - i10) * this.timeLineItemFrameLengthInMs;
        for (int i12 = 0; i12 < i10; i12++) {
            Float f = this.compositionTailFrameLengthInMsList.get(i12);
            t.i(f, "get(...)");
            fFloatValue += f.floatValue();
        }
        if (Utils.isRtl()) {
            HorizontalRecyclerView horizontalRecyclerView2 = this.timeLine;
            RecyclerView.LayoutManager layoutManager2 = horizontalRecyclerView2 != null ? horizontalRecyclerView2.getLayoutManager() : null;
            linearLayoutManager = layoutManager2 instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager2 : null;
            left = ((linearLayoutManager == null || (viewFindViewByPosition2 = linearLayoutManager.findViewByPosition(iFindFirstVisibleItemPosition)) == null) ? getWidth() : viewFindViewByPosition2.getRight()) - getWidth();
        } else {
            HorizontalRecyclerView horizontalRecyclerView3 = this.timeLine;
            RecyclerView.LayoutManager layoutManager3 = horizontalRecyclerView3 != null ? horizontalRecyclerView3.getLayoutManager() : null;
            linearLayoutManager = layoutManager3 instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager3 : null;
            if (linearLayoutManager != null && (viewFindViewByPosition = linearLayoutManager.findViewByPosition(iFindFirstVisibleItemPosition)) != null) {
                left = viewFindViewByPosition.getLeft();
            }
        }
        return Math.min((int) (fFloatValue + (getSectionDurationInMs$default(this, Math.abs(left), 0, false, 2, null) * ((!z6 || i10 >= this.compositionTailFrameLengthInMsList.size()) ? 1.0f : this.compositionTailFrameLengthInMsList.get(i10).floatValue() / this.timeLineItemFrameLengthInMs))), this.mediaLengthInMs);
    }

    public static /* synthetic */ int getSectionDurationInMs$default(MediaTimeLineComponent mediaTimeLineComponent, int i10, int i11, boolean z6, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        return mediaTimeLineComponent.getSectionDurationInMs(i10, i11, z6);
    }

    private final void initComponent(boolean z6, boolean z10, boolean z11, boolean z12, int i10, int i11) {
        this.realFrameTimelineWidth = ((d0.M0(this.roundCompositionVisibleFrameCountList) - 1) * this.frameCellWidth) + this.realTailFrameWidth;
        final HorizontalRecyclerView horizontalRecyclerView = this.timeLine;
        int iTrimStartInMsWithSpeed = 0;
        if (horizontalRecyclerView != null) {
            horizontalRecyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
            ViewCompat.J0(horizontalRecyclerView, Utils.isRtl() ? 1 : 0);
            horizontalRecyclerView.clearOnScrollListeners();
            horizontalRecyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.narvii.video.widget.MediaTimeLineComponent$initComponent$1$1
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrollStateChanged(@NotNull RecyclerView recyclerView, int i12) {
                    FrameRetrieverManager frameRetrieverManager;
                    RecyclerView.Adapter adapter;
                    t.j(recyclerView, "recyclerView");
                    this.this$0.setCurRecyclerViewState(i12);
                    if (i12 == 0) {
                        HorizontalRecyclerView horizontalRecyclerView2 = this.this$0.timeLine;
                        RecyclerView.LayoutManager layoutManager = horizontalRecyclerView2 != null ? horizontalRecyclerView2.getLayoutManager() : null;
                        LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
                        int iFindLastCompletelyVisibleItemPosition = linearLayoutManager != null ? linearLayoutManager.findLastCompletelyVisibleItemPosition() : 0;
                        HorizontalRecyclerView horizontalRecyclerView3 = this.this$0.timeLine;
                        boolean z13 = iFindLastCompletelyVisibleItemPosition == ((horizontalRecyclerView3 == null || (adapter = horizontalRecyclerView3.getAdapter()) == null) ? 0 : adapter.getItemCount()) - 1;
                        int mediaLengthInMs = (z13 && this.this$0.timeLineType == 202) ? this.this$0.getMediaLengthInMs() : this.this$0.getCurFirstMediaFrameTime();
                        if (mediaLengthInMs == 0 || mediaLengthInMs != this.this$0.curFirstVideoFrameTimeInMs || z13) {
                            if (Math.abs(mediaLengthInMs - this.this$0.curFirstVideoFrameTimeInMs) >= this.this$0.maxVisibleSectionIntervalInMs && (frameRetrieverManager = this.this$0.frameRetrieverManager) != null) {
                                frameRetrieverManager.abortFlyingFrameRetrievers();
                            }
                            RecyclerView.Adapter adapter2 = horizontalRecyclerView.getAdapter();
                            MediaTimeLineComponent.TimeLineAdapter timeLineAdapter = adapter2 instanceof MediaTimeLineComponent.TimeLineAdapter ? (MediaTimeLineComponent.TimeLineAdapter) adapter2 : null;
                            if (timeLineAdapter != null) {
                                timeLineAdapter.refreshVisibleArea();
                            }
                            MediaRetrieveController mediaRetrieveController = this.this$0.retrieveCutter;
                            if (mediaRetrieveController != null) {
                                mediaRetrieveController.updateMediaSectionStartTime(mediaLengthInMs);
                            }
                            MediaTimeLineComponent.TimeLineCallback timeLineCallback = this.this$0.timeLineCallback;
                            if (timeLineCallback != null) {
                                timeLineCallback.onFrameLocatedDuringMove(this.this$0.curControllerStartTimeOffsetInMs + mediaLengthInMs, -1);
                            }
                            this.this$0.curFirstVideoFrameTimeInMs = mediaLengthInMs;
                            MediaTimeLineComponent.TimeLineCallback timeLineCallback2 = this.this$0.timeLineCallback;
                            if (timeLineCallback2 != null) {
                                timeLineCallback2.onTimeLineScrolledOffsetChanged(MediaTimeLineComponent.getTimeLineScrolledDx$default(this.this$0, false, 1, null));
                            }
                            MediaTimeLineComponent mediaTimeLineComponent = this.this$0;
                            mediaTimeLineComponent.replay(mediaTimeLineComponent.curFirstVideoFrameTimeInMs + this.this$0.curControllerStartTimeOffsetInMs, this.this$0.curFirstVideoFrameTimeInMs + this.this$0.curControllerEndTimeOffsetInMs, 3);
                        }
                    }
                }

                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(@NotNull RecyclerView recyclerView, int i12, int i13) {
                    RecyclerView.Adapter adapter;
                    FrameRetrieverManager frameRetrieverManager;
                    t.j(recyclerView, "recyclerView");
                    if (i12 == 0 && i13 == 0) {
                        return;
                    }
                    if (this.this$0.getCurRecyclerViewState() == 0) {
                        if (Math.abs(this.this$0.getCurFirstMediaFrameTime() - this.this$0.curFirstVideoFrameTimeInMs) < this.this$0.maxVisibleSectionIntervalInMs || (frameRetrieverManager = this.this$0.frameRetrieverManager) == null) {
                            return;
                        }
                        frameRetrieverManager.abortFlyingFrameRetrievers();
                        return;
                    }
                    HorizontalRecyclerView horizontalRecyclerView2 = this.this$0.timeLine;
                    RecyclerView.LayoutManager layoutManager = horizontalRecyclerView2 != null ? horizontalRecyclerView2.getLayoutManager() : null;
                    LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
                    int itemCount = 0;
                    int iFindLastCompletelyVisibleItemPosition = linearLayoutManager != null ? linearLayoutManager.findLastCompletelyVisibleItemPosition() : 0;
                    HorizontalRecyclerView horizontalRecyclerView3 = this.this$0.timeLine;
                    if (horizontalRecyclerView3 != null && (adapter = horizontalRecyclerView3.getAdapter()) != null) {
                        itemCount = adapter.getItemCount();
                    }
                    int mediaLengthInMs = (iFindLastCompletelyVisibleItemPosition == itemCount + (-1) && this.this$0.timeLineType == 202) ? this.this$0.getMediaLengthInMs() : this.this$0.getCurFirstMediaFrameTime();
                    MediaRetrieveController mediaRetrieveController = this.this$0.retrieveCutter;
                    if (mediaRetrieveController != null) {
                        mediaRetrieveController.updateMediaSectionStartTime(mediaLengthInMs);
                    }
                    MediaTimeLineComponent.TimeLineCallback timeLineCallback = this.this$0.timeLineCallback;
                    if (timeLineCallback != null) {
                        timeLineCallback.onFrameLocatedDuringMove(this.this$0.curControllerStartTimeOffsetInMs + mediaLengthInMs, -1);
                    }
                    MediaTimeLineComponent mediaTimeLineComponent = this.this$0;
                    MediaTimeLineComponent.scrollTimeLine$default(mediaTimeLineComponent, mediaLengthInMs + mediaTimeLineComponent.curControllerStartTimeOffsetInMs, false, false, false, false, 0, true, 62, null);
                }
            });
            TimeLineAdapter timeLineAdapter = new TimeLineAdapter(z10, z6, z11);
            this.timeLineAdapter = timeLineAdapter;
            if (z12) {
                horizontalRecyclerView.setAdapter(timeLineAdapter);
            }
        }
        MediaRetrieveController mediaRetrieveController = this.retrieveCutter;
        if (mediaRetrieveController != null) {
            if (i10 > 0) {
                this.curControllerStartTimeOffsetInMs = 0;
                this.curControllerEndTimeOffsetInMs = i10;
            }
            mediaRetrieveController.initComponent(this.minOutputLength, i11, this, i10 == i11 ? -1 : (int) (((i10 / this.mediaLengthInMs) * this.realFrameTimelineWidth) + 0.5f), i10);
            if (!this.mediaClipList.isEmpty()) {
                ITimelineClip iTimelineClip = this.mediaClipList.get(0);
                t.i(iTimelineClip, "get(...)");
                ITimelineClip iTimelineClip2 = iTimelineClip;
                iTrimStartInMsWithSpeed = iTimelineClip2 instanceof AVClipInfoPack ? ((AVClipInfoPack) iTimelineClip2).trimStartInMsWithSpeed() : iTimelineClip2.trimStartInMs();
            }
            mediaRetrieveController.updateMediaSectionStartTime(iTrimStartInMsWithSpeed);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void replay(int i10, int i11, int i12) {
        Handler handler = this.mainHandler;
        Runnable runnable = this.playbackTimer;
        if (runnable == null) {
            t.B("playbackTimer");
            runnable = null;
        }
        handler.removeCallbacks(runnable);
        TimeLineCallback timeLineCallback = this.timeLineCallback;
        if (timeLineCallback != null) {
            timeLineCallback.onReplayTriggered(i10, Math.min(i11, this.mediaLengthInMs), i12);
        }
        this.curPlaybackTimeBase = i10;
        this.mainHandler.postDelayed(new Runnable() { // from class: com.narvii.video.widget.o
            @Override // java.lang.Runnable
            public final void run() {
                MediaTimeLineComponent.replay$lambda$10(this.f2988a);
            }
        }, 1000L);
    }

    public static /* synthetic */ void scrollTimeLine$default(MediaTimeLineComponent mediaTimeLineComponent, int i10, boolean z6, boolean z10, boolean z11, boolean z12, int i11, boolean z13, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            z6 = false;
        }
        if ((i12 & 4) != 0) {
            z10 = false;
        }
        if ((i12 & 8) != 0) {
            z11 = false;
        }
        if ((i12 & 16) != 0) {
            z12 = false;
        }
        if ((i12 & 32) != 0) {
            i11 = 0;
        }
        if ((i12 & 64) != 0) {
            z13 = false;
        }
        mediaTimeLineComponent.scrollTimeLine(i10, z6, z10, z11, z12, i11, z13);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void scrollTimeLine$lambda$8$lambda$7(HorizontalRecyclerView it) {
        t.j(it, "$it");
        RecyclerView.Adapter adapter = it.getAdapter();
        t.h(adapter, "null cannot be cast to non-null type com.narvii.video.widget.MediaTimeLineComponent.TimeLineAdapter");
        ((TimeLineAdapter) adapter).refreshVisibleArea();
    }

    public static /* synthetic */ int scrollTimeLineToClip$default(MediaTimeLineComponent mediaTimeLineComponent, int i10, int i11, boolean z6, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        if ((i12 & 4) != 0) {
            z6 = true;
        }
        return mediaTimeLineComponent.scrollTimeLineToClip(i10, i11, z6);
    }

    public final void addTimeLineOnScrollListener(@NotNull RecyclerView.OnScrollListener listener) {
        t.j(listener, "listener");
        HorizontalRecyclerView horizontalRecyclerView = this.timeLine;
        if (horizontalRecyclerView != null) {
            horizontalRecyclerView.addOnScrollListener(listener);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(@NotNull Canvas canvas) {
        t.j(canvas, "canvas");
        super.dispatchDraw(canvas);
        int i10 = this.controllerWidthOffset;
        if (i10 > 0) {
            this.sideShadowRect.set(0, 0, i10, getHeight() - this.bottomGapSize);
            canvas.drawRect(this.sideShadowRect, this.sideShadowPaint);
            this.sideShadowRect.set(getWidth() - this.controllerWidthOffset, 0, getWidth(), getHeight() - this.bottomGapSize);
            canvas.drawRect(this.sideShadowRect, this.sideShadowPaint);
        }
    }

    public final int getFirstFrameStartDx(boolean z6) {
        return this.rtl ? getWidth() + ((getTimeLineScrolledDx(z6) - (this.frameOffset * this.frameCellWidth)) - this.additionalFramePreOffsetDx) : -((getTimeLineScrolledDx(z6) - (this.frameOffset * this.frameCellWidth)) - this.additionalFramePreOffsetDx);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:37:? A[RETURN, SYNTHETIC] */
    public final int getSectionDurationInMs(int i10, int i11, boolean z6) {
        float fFloatValue;
        float f;
        float fFloatValue2;
        Iterator<Integer> it = this.roundMainTrackCompositionFrameCountList.iterator();
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int iIntValue = 0;
        while (it.hasNext()) {
            i13++;
            int iFloatValue = i13 == this.roundMainTrackCompositionFrameCountList.size() + (-1) ? (int) (this.accurateMainTrackCompositionFrameCountList.get(i13).floatValue() * this.frameCellWidth) : it.next().intValue() * this.frameCellWidth;
            int i15 = i14 + iFloatValue;
            if (i11 >= i15) {
                i14 = i15;
            } else {
                if (iFloatValue >= i10) {
                    if (i13 == this.roundMainTrackCompositionFrameCountList.size() - 1) {
                        f = i10 / iFloatValue;
                        Integer num = this.mainTrackCompositionLengthMsList.get(i13);
                        t.i(num, "get(...)");
                        fFloatValue2 = num.floatValue();
                    } else {
                        if (z6) {
                            fFloatValue = 1.0f;
                        } else {
                            float fFloatValue3 = this.roundMainTrackCompositionFrameCountList.get(i13).floatValue();
                            Float f6 = this.accurateMainTrackCompositionFrameCountList.get(i13);
                            t.i(f6, "get(...)");
                            fFloatValue = fFloatValue3 / f6.floatValue();
                        }
                        f = (i10 * fFloatValue) / iFloatValue;
                        Integer num2 = this.mainTrackCompositionLengthMsList.get(i13);
                        t.i(num2, "get(...)");
                        fFloatValue2 = num2.floatValue();
                    }
                    iIntValue += (int) (f * fFloatValue2);
                    if (i12 > 0) {
                        return iIntValue + ((int) ((i12 / this.realFrameTimelineWidth) * this.mediaLengthInMs));
                    }
                    return iIntValue;
                }
                if (i11 > 0) {
                    int i16 = iFloatValue - (i11 - i14);
                    Integer num3 = this.mainTrackCompositionLengthMsList.get(i13);
                    t.i(num3, "get(...)");
                    iIntValue += (int) ((i16 / iFloatValue) * num3.floatValue());
                    i10 -= i16;
                    i11 = 0;
                } else {
                    Integer num4 = this.mainTrackCompositionLengthMsList.get(i13);
                    t.i(num4, "get(...)");
                    iIntValue += num4.intValue();
                    i10 -= iFloatValue;
                }
            }
        }
        i12 = i10;
        if (i12 > 0) {
            return iIntValue + ((int) ((i12 / this.realFrameTimelineWidth) * this.mediaLengthInMs));
        }
        return iIntValue;
    }

    public final int getTimeLineScrolledDx(boolean z6) {
        LinearLayoutManager linearLayoutManager;
        View viewFindViewByPosition;
        View viewFindViewByPosition2;
        HorizontalRecyclerView horizontalRecyclerView = this.timeLine;
        RecyclerView.LayoutManager layoutManager = horizontalRecyclerView != null ? horizontalRecyclerView.getLayoutManager() : null;
        LinearLayoutManager linearLayoutManager2 = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
        int left = 0;
        int iMax = Math.max(0, linearLayoutManager2 != null ? linearLayoutManager2.findFirstVisibleItemPosition() : 0);
        int i10 = (this.totalVisibleFrameCountForAdapter + this.additionalFramePreOffset) - 1;
        if (Utils.isRtl()) {
            HorizontalRecyclerView horizontalRecyclerView2 = this.timeLine;
            RecyclerView.LayoutManager layoutManager2 = horizontalRecyclerView2 != null ? horizontalRecyclerView2.getLayoutManager() : null;
            linearLayoutManager = layoutManager2 instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager2 : null;
            left = ((linearLayoutManager == null || (viewFindViewByPosition2 = linearLayoutManager.findViewByPosition(iMax)) == null) ? getWidth() : viewFindViewByPosition2.getRight()) - getWidth();
        } else {
            HorizontalRecyclerView horizontalRecyclerView3 = this.timeLine;
            RecyclerView.LayoutManager layoutManager3 = horizontalRecyclerView3 != null ? horizontalRecyclerView3.getLayoutManager() : null;
            linearLayoutManager = layoutManager3 instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager3 : null;
            if (linearLayoutManager != null && (viewFindViewByPosition = linearLayoutManager.findViewByPosition(iMax)) != null) {
                left = viewFindViewByPosition.getLeft();
            }
        }
        return ((!z6 || iMax < i10) ? iMax * this.frameCellWidth : ((iMax - 1) * this.frameCellWidth) + this.realTailFrameWidth) + Math.abs(left);
    }

    @Override // com.narvii.video.interfaces.ITimeLineControllerCallback
    public void onControllerMoved(int i10, int i11, boolean z6, boolean z10) {
        int i12;
        int i13;
        int i14 = (i10 / 100) * 100;
        this.curControllerStartTimeOffsetInMs = i14;
        int iRound = i14 + (Math.round((i11 - i10) / 100.0f) * 100);
        this.curControllerEndTimeOffsetInMs = iRound;
        if (!z10) {
            int i15 = this.curFirstVideoFrameTimeInMs;
            replay(this.curControllerStartTimeOffsetInMs + i15, i15 + iRound, 2);
            return;
        }
        TimeLineCallback timeLineCallback = this.timeLineCallback;
        if (timeLineCallback != null) {
            if (z6) {
                i12 = this.curFirstVideoFrameTimeInMs;
                i13 = Utils.isRtl() ? this.curControllerEndTimeOffsetInMs : this.curControllerStartTimeOffsetInMs;
            } else {
                i12 = this.curFirstVideoFrameTimeInMs;
                i13 = Utils.isRtl() ? this.curControllerStartTimeOffsetInMs : this.curControllerEndTimeOffsetInMs;
            }
            timeLineCallback.onFrameLocatedDuringMove(i12 + i13, Math.abs(this.curControllerStartTimeOffsetInMs - this.curControllerEndTimeOffsetInMs));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        HorizontalRecyclerView horizontalRecyclerView = this.timeLine;
        if (horizontalRecyclerView != null) {
            horizontalRecyclerView.clearOnScrollListeners();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(@NotNull MotionEvent ev) {
        TimeLineCallback timeLineCallback;
        t.j(ev, "ev");
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
    public boolean onTouchEvent(@NotNull MotionEvent event) {
        t.j(event, "event");
        if (event.getActionMasked() == 1 || event.getActionMasked() == 3) {
            this.interceptedByController = false;
        }
        MediaRetrieveController mediaRetrieveController = this.retrieveCutter;
        if (mediaRetrieveController != null) {
            mediaRetrieveController.onSlideHandlerMove(event);
        }
        return true;
    }

    public final void playbackStatusChanged(boolean z6) {
        Handler handler = this.mainHandler;
        Runnable runnable = this.playbackTimer;
        Runnable runnable2 = null;
        if (runnable == null) {
            t.B("playbackTimer");
            runnable = null;
        }
        handler.removeCallbacks(runnable);
        if (z6) {
            Handler handler2 = this.mainHandler;
            Runnable runnable3 = this.playbackTimer;
            if (runnable3 == null) {
                t.B("playbackTimer");
            } else {
                runnable2 = runnable3;
            }
            handler2.post(runnable2);
        }
    }

    public final void refreshTimeLine() {
        TimeLineAdapter timeLineAdapter = this.timeLineAdapter;
        if (timeLineAdapter != null) {
            timeLineAdapter.refreshVisibleArea();
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x022b  */
    /* JADX WARN: Code duplicated, block: B:101:0x022d  */
    /* JADX WARN: Code duplicated, block: B:105:0x0237  */
    /* JADX WARN: Code duplicated, block: B:107:0x023d  */
    /* JADX WARN: Code duplicated, block: B:109:0x0241  */
    /* JADX WARN: Code duplicated, block: B:74:0x0199  */
    /* JADX WARN: Code duplicated, block: B:75:0x019b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:76:0x019d  */
    /* JADX WARN: Code duplicated, block: B:78:0x01a3 A[LOOP:1: B:77:0x01a1->B:78:0x01a3, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:80:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:82:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:89:0x0206  */
    /* JADX WARN: Code duplicated, block: B:93:0x0219 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:94:0x021b  */
    /* JADX WARN: Code duplicated, block: B:96:0x0223  */
    /* JADX WARN: Code duplicated, block: B:97:0x0226  */
    /* JADX WARN: Code duplicated, block: B:99:0x0229 A[DONT_INVERT] */
    public final void scrollTimeLine(int i10, boolean z6, boolean z10, boolean z11, boolean z12, int i11, boolean z13) {
        int i12;
        float fFloatValue;
        int i13;
        float f;
        int i14;
        int i15;
        float f6;
        int iIntValue;
        int iIntValue2;
        int i16;
        int i17;
        int iIntValue3;
        int i18;
        float fFloatValue2;
        int i19;
        int i20;
        int i21;
        RecyclerView.LayoutManager layoutManager;
        LinearLayoutManager linearLayoutManager;
        int i22;
        FrameRetrieverManager frameRetrieverManager;
        final HorizontalRecyclerView horizontalRecyclerView = this.timeLine;
        if (horizontalRecyclerView != null) {
            if (z6) {
                int i23 = this.additionalFramePreOffset;
                this.curScrollToPosition = i23;
                this.lastOffsetRecord = 0;
                if (!z13) {
                    horizontalRecyclerView.scrollToPosition(i23);
                    if (horizontalRecyclerView.getAdapter() instanceof TimeLineAdapter) {
                        Utils.post(new Runnable() { // from class: com.narvii.video.widget.m
                            @Override // java.lang.Runnable
                            public final void run() {
                                MediaTimeLineComponent.scrollTimeLine$lambda$8$lambda$7(horizontalRecyclerView);
                            }
                        });
                    }
                }
            } else if (z10) {
                this.lastOffsetRecord = 0;
                int i24 = this.additionalFramePreOffset + this.totalVisibleFrameCountForAdapter;
                if (i24 != this.curScrollToPosition) {
                    this.curScrollToPosition = i24;
                    if (!z13) {
                        horizontalRecyclerView.scrollToPosition(i24);
                    }
                }
                if (!z13) {
                    horizontalRecyclerView.scrollBy(this.frameCellWidth, 0);
                    if (horizontalRecyclerView.getAdapter() instanceof TimeLineAdapter) {
                        RecyclerView.Adapter adapter = horizontalRecyclerView.getAdapter();
                        t.h(adapter, "null cannot be cast to non-null type com.narvii.video.widget.MediaTimeLineComponent.TimeLineAdapter");
                        ((TimeLineAdapter) adapter).refreshVisibleArea();
                    }
                }
            } else {
                float fFloatValue3 = this.additionalFramePreOffset;
                ArrayList<Integer> arrayList = z12 ? this.mainTrackCompositionLengthMsList : this.compositionLengthMsList;
                ArrayList<Integer> arrayList2 = z12 ? this.roundMainTrackCompositionFrameCountList : this.roundCompositionVisibleFrameCountList;
                ArrayList<Float> arrayList3 = z12 ? this.mainTrackCompositionTailFrameLengthInMsList : this.compositionTailFrameLengthInMsList;
                if (z12) {
                    Iterator<Integer> it = this.mainTrackCompositionLengthMsList.iterator();
                    int i25 = 0;
                    int iIntValue4 = 0;
                    fFloatValue = 0.0f;
                    while (it.hasNext()) {
                        int i26 = i25 + 1;
                        iIntValue4 += it.next().intValue();
                        if (iIntValue4 >= i11) {
                            break;
                        }
                        float fFloatValue4 = this.roundMainTrackCompositionFrameCountList.get(i25).floatValue();
                        Float f7 = this.accurateMainTrackCompositionFrameCountList.get(i25);
                        t.i(f7, "get(...)");
                        fFloatValue += (fFloatValue4 - f7.floatValue()) * this.timeLineItemFrameLengthInMs;
                        i25 = i26;
                    }
                    i12 = (int) ((i10 - i11) - fFloatValue);
                } else {
                    i12 = i10;
                    fFloatValue = 0.0f;
                }
                boolean z14 = i12 >= d0.M0(this.compositionLengthMsList);
                if (z12 || !z14) {
                    int i27 = z12 ? i11 : 0;
                    int size = arrayList.size();
                    float fMin = 0.0f;
                    i13 = 0;
                    int i28 = 0;
                    int i29 = 0;
                    int i30 = 0;
                    while (true) {
                        if (i13 < size) {
                            Integer num = arrayList.get(i13);
                            t.i(num, "get(...)");
                            int iIntValue5 = i28 + num.intValue();
                            if (iIntValue5 <= i27) {
                                i30++;
                                i15 = size;
                                int iIntValue6 = (arrayList.get(i13).intValue() / 1000) * 1000;
                                if (arrayList.get(i13).intValue() % 1000 != 0) {
                                    f6 = fFloatValue;
                                    float f10 = i12 + fFloatValue + i27;
                                    float f11 = iIntValue6;
                                    if (f10 > f11) {
                                        float f12 = f10 - f11;
                                        Float f13 = arrayList3.get(i13);
                                        t.i(f13, "get(...)");
                                        fMin += Math.min(f12 / f13.floatValue(), 0.9f);
                                    }
                                } else {
                                    f6 = fFloatValue;
                                }
                            } else {
                                i15 = size;
                                f6 = fFloatValue;
                                if (i29 == 0) {
                                    iIntValue = iIntValue5 - i27;
                                } else {
                                    Integer num2 = arrayList.get(i13);
                                    t.i(num2, "get(...)");
                                    iIntValue = num2.intValue();
                                }
                                int i31 = iIntValue + i29;
                                if (i31 >= i12) {
                                    i12 -= i29;
                                    f = fMin;
                                    i14 = i30;
                                    break;
                                } else {
                                    Integer num3 = arrayList.get(i13);
                                    t.i(num3, "get(...)");
                                    float fFloatValue5 = iIntValue / num3.floatValue();
                                    Integer num4 = arrayList2.get(i13);
                                    t.i(num4, "get(...)");
                                    fFloatValue3 += fFloatValue5 * num4.floatValue();
                                    i29 = i31;
                                }
                            }
                            i13++;
                            size = i15;
                            fFloatValue = f6;
                            i28 = iIntValue5;
                        } else {
                            f = fMin;
                            i14 = i30;
                            i12 = 0;
                        }
                    }
                    if (arrayList.isEmpty()) {
                        iIntValue2 = 0;
                    } else if (i13 == i14) {
                        i16 = i13 + 1;
                        iIntValue3 = 0;
                        for (i17 = 0; i17 < i16; i17++) {
                            Integer num5 = arrayList.get(i17);
                            t.i(num5, "get(...)");
                            iIntValue3 += num5.intValue();
                        }
                        iIntValue2 = (iIntValue3 - i11) - (arrayList.get(i13).intValue() % 1000);
                    } else {
                        iIntValue2 = (arrayList.get(i13).intValue() / 1000) * 1000;
                    }
                    if (i12 > iIntValue2) {
                        i18 = 1;
                        if (i13 == arrayList3.size() - 1 && (!arrayList.isEmpty()) && arrayList.get(i13).intValue() % 1000 != 0) {
                            float f14 = iIntValue2 / this.timeLineItemFrameLengthInMs;
                            Float f15 = arrayList3.get(i13);
                            t.i(f15, "get(...)");
                            fFloatValue2 = f14 + ((i12 - iIntValue2) / f15.floatValue());
                        }
                        float f16 = fFloatValue3 + fFloatValue2 + f;
                        i19 = (int) f16;
                        i20 = (int) ((f16 - i19) * this.frameCellWidth);
                        if (i19 != this.curScrollToPosition) {
                            if (!z13) {
                                layoutManager = horizontalRecyclerView.getLayoutManager();
                                if (layoutManager instanceof LinearLayoutManager) {
                                    linearLayoutManager = (LinearLayoutManager) layoutManager;
                                } else {
                                    linearLayoutManager = null;
                                }
                                if (linearLayoutManager != null) {
                                    if (i20 == 0) {
                                        i22 = i18;
                                    } else {
                                        i22 = -i20;
                                    }
                                    linearLayoutManager.scrollToPositionWithOffset(i19, i22);
                                }
                            }
                            this.curScrollToPosition = i19;
                            this.lastOffsetRecord = i20;
                        }
                        if (i20 >= 0) {
                            i21 = i20 - this.lastOffsetRecord;
                            if (!z13) {
                                if (this.rtl) {
                                    i21 = -i21;
                                }
                                horizontalRecyclerView.scrollBy(i21, 0);
                            }
                            this.lastOffsetRecord = i20;
                        }
                    } else {
                        i18 = 1;
                    }
                    fFloatValue2 = i12 / this.timeLineItemFrameLengthInMs;
                    float f17 = fFloatValue3 + fFloatValue2 + f;
                    i19 = (int) f17;
                    i20 = (int) ((f17 - i19) * this.frameCellWidth);
                    if (i19 != this.curScrollToPosition) {
                        if (!z13) {
                            layoutManager = horizontalRecyclerView.getLayoutManager();
                            if (layoutManager instanceof LinearLayoutManager) {
                                linearLayoutManager = (LinearLayoutManager) layoutManager;
                            } else {
                                linearLayoutManager = null;
                            }
                            if (linearLayoutManager != null) {
                                if (i20 == 0) {
                                    i22 = i18;
                                } else {
                                    i22 = -i20;
                                }
                                linearLayoutManager.scrollToPositionWithOffset(i19, i22);
                            }
                        }
                        this.curScrollToPosition = i19;
                        this.lastOffsetRecord = i20;
                    }
                    if (i20 >= 0) {
                        i21 = i20 - this.lastOffsetRecord;
                        if (!z13) {
                            if (this.rtl) {
                                i21 = -i21;
                            }
                            horizontalRecyclerView.scrollBy(i21, 0);
                        }
                        this.lastOffsetRecord = i20;
                    }
                } else {
                    i14 = 0;
                    f = 0.0f;
                }
                i13 = 0;
                if (arrayList.isEmpty()) {
                    iIntValue2 = 0;
                } else if (i13 == i14) {
                    i16 = i13 + 1;
                    iIntValue3 = 0;
                    while (i17 < i16) {
                        Integer num6 = arrayList.get(i17);
                        t.i(num6, "get(...)");
                        iIntValue3 += num6.intValue();
                    }
                    iIntValue2 = (iIntValue3 - i11) - (arrayList.get(i13).intValue() % 1000);
                } else {
                    iIntValue2 = (arrayList.get(i13).intValue() / 1000) * 1000;
                }
                if (i12 > iIntValue2) {
                    i18 = 1;
                    if (i13 == arrayList3.size() - 1) {
                    }
                    float f18 = fFloatValue3 + fFloatValue2 + f;
                    i19 = (int) f18;
                    i20 = (int) ((f18 - i19) * this.frameCellWidth);
                    if (i19 != this.curScrollToPosition) {
                        if (!z13) {
                            layoutManager = horizontalRecyclerView.getLayoutManager();
                            if (layoutManager instanceof LinearLayoutManager) {
                                linearLayoutManager = (LinearLayoutManager) layoutManager;
                            } else {
                                linearLayoutManager = null;
                            }
                            if (linearLayoutManager != null) {
                                if (i20 == 0) {
                                    i22 = i18;
                                } else {
                                    i22 = -i20;
                                }
                                linearLayoutManager.scrollToPositionWithOffset(i19, i22);
                            }
                        }
                        this.curScrollToPosition = i19;
                        this.lastOffsetRecord = i20;
                    }
                    if (i20 >= 0) {
                        i21 = i20 - this.lastOffsetRecord;
                        if (!z13) {
                            if (this.rtl) {
                                i21 = -i21;
                            }
                            horizontalRecyclerView.scrollBy(i21, 0);
                        }
                        this.lastOffsetRecord = i20;
                    }
                } else {
                    i18 = 1;
                }
                fFloatValue2 = i12 / this.timeLineItemFrameLengthInMs;
                float f19 = fFloatValue3 + fFloatValue2 + f;
                i19 = (int) f19;
                i20 = (int) ((f19 - i19) * this.frameCellWidth);
                if (i19 != this.curScrollToPosition) {
                    if (!z13) {
                        layoutManager = horizontalRecyclerView.getLayoutManager();
                        if (layoutManager instanceof LinearLayoutManager) {
                            linearLayoutManager = (LinearLayoutManager) layoutManager;
                        } else {
                            linearLayoutManager = null;
                        }
                        if (linearLayoutManager != null) {
                            if (i20 == 0) {
                                i22 = i18;
                            } else {
                                i22 = -i20;
                            }
                            linearLayoutManager.scrollToPositionWithOffset(i19, i22);
                        }
                    }
                    this.curScrollToPosition = i19;
                    this.lastOffsetRecord = i20;
                }
                if (i20 >= 0) {
                    i21 = i20 - this.lastOffsetRecord;
                    if (!z13) {
                        if (this.rtl) {
                            i21 = -i21;
                        }
                        horizontalRecyclerView.scrollBy(i21, 0);
                    }
                    this.lastOffsetRecord = i20;
                }
            }
            if (z11) {
                this.curPlaybackTimeBase = i10;
                this.curFirstVideoFrameTimeInMs = i10;
                if (i10 < this.maxVisibleSectionIntervalInMs || (frameRetrieverManager = this.frameRetrieverManager) == null) {
                    return;
                }
                frameRetrieverManager.abortFlyingFrameRetrievers();
            }
        }
    }

    public final void scrollTimeLineBy(int i10) {
        HorizontalRecyclerView horizontalRecyclerView = this.timeLine;
        if (horizontalRecyclerView != null) {
            horizontalRecyclerView.scrollBy(i10, 0);
        }
    }

    public final int scrollTimeLineToClip(int i10, int i11, boolean z6) {
        if (i10 < 0 || i10 >= this.mediaClipList.size()) {
            return -1;
        }
        if (i10 == 0 && i11 == 0) {
            scrollTimeLine$default(this, 0, true, false, z6, false, 0, false, 117, null);
            return 0;
        }
        for (int i12 = 0; i12 < i10; i12++) {
            i11 += this.mediaClipList.get(i12).clipLength();
        }
        scrollTimeLine$default(this, i11 + 1, false, false, z6, false, 0, false, 118, null);
        return i11;
    }

    public final void setActiveClipInTrack(int i10) {
        if (this.activeClipIndex == i10) {
            return;
        }
        this.activeClipIndex = i10;
        TimeLineAdapter timeLineAdapter = this.timeLineAdapter;
        if (timeLineAdapter != null) {
            timeLineAdapter.refreshVisibleArea();
        }
    }

    public final void setOnTimeLineTouchListener(@NotNull View.OnTouchListener l) {
        t.j(l, "l");
        HorizontalRecyclerView horizontalRecyclerView = this.timeLine;
        if (horizontalRecyclerView != null) {
            horizontalRecyclerView.setOnTouchListener(l);
        }
    }

    public final void updateAdditionalFrameOffset(int i10, int i11, int i12) {
        if (this.additionalFramePreOffset == i10 && this.additionalFramePostOffset == i11) {
            return;
        }
        this.additionalFramePreOffset = i10;
        this.additionalFramePostOffset = i11;
        this.additionalFramePreOffsetDx = i12;
        TimeLineAdapter timeLineAdapter = this.timeLineAdapter;
        if (timeLineAdapter != null) {
            timeLineAdapter.notifyDataSetChanged();
        }
    }

    public final void updateClipComponent(@NotNull List<? extends ITimelineClip> mediaClipList) {
        t.j(mediaClipList, "mediaClipList");
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
                float f6 = iIntValue2;
                this.accurateMainTrackCompositionFrameCountList.add(Float.valueOf(f6 / this.timeLineItemFrameLengthInMs));
                this.roundMainTrackCompositionFrameCountList.add(Integer.valueOf((int) ((f6 / this.timeLineItemFrameLengthInMs) + 0.999f)));
                this.mainTrackCompositionLengthMsList.add(Integer.valueOf(iIntValue2));
            }
        }
        int size = this.compositionLengthMsList.size();
        for (int i10 = 0; i10 < size; i10++) {
            ArrayList<Float> arrayList = this.compositionTailFrameLengthInMsList;
            float fFloatValue = this.roundCompositionVisibleFrameCountList.get(i10).floatValue();
            Float f7 = this.accurateCompositionVisibleFrameCountList.get(i10);
            t.i(f7, "get(...)");
            arrayList.add(Float.valueOf((1.0f - (fFloatValue - f7.floatValue())) * this.timeLineItemFrameLengthInMs));
        }
        int size2 = this.mainTrackCompositionLengthMsList.size();
        for (int i11 = 0; i11 < size2; i11++) {
            ArrayList<Float> arrayList2 = this.mainTrackCompositionTailFrameLengthInMsList;
            float fFloatValue2 = this.roundMainTrackCompositionFrameCountList.get(i11).floatValue();
            Float f10 = this.accurateMainTrackCompositionFrameCountList.get(i11);
            t.i(f10, "get(...)");
            arrayList2.add(Float.valueOf((1.0f - (fFloatValue2 - f10.floatValue())) * this.timeLineItemFrameLengthInMs));
        }
    }

    public final void updatePlaybackTime(long j6) {
        MediaRetrieveController mediaRetrieveController;
        long j10 = j6 - ((long) (this.curFirstVideoFrameTimeInMs + this.curControllerStartTimeOffsetInMs));
        if (!this.seeking && (mediaRetrieveController = this.retrieveCutter) != null) {
            mediaRetrieveController.updatePointerPosition(j10 / this.timeLineItemFrameLengthInMs);
        }
        if (j6 >= Math.min(this.curFirstVideoFrameTimeInMs + this.curControllerEndTimeOffsetInMs, this.mediaLengthInMs)) {
            int i10 = this.curFirstVideoFrameTimeInMs;
            int i11 = this.curControllerEndTimeOffsetInMs;
            int i12 = i10 + i11;
            int i13 = this.mediaLengthInMs;
            if (i12 >= i13) {
                this.curFirstVideoFrameTimeInMs = 0;
            }
            int i14 = this.curFirstVideoFrameTimeInMs;
            replay(this.curControllerStartTimeOffsetInMs + i14, i14 + i11, i14 + i11 < i13 ? 4 : 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$1(MediaTimeLineComponent this$0) {
        boolean z6;
        int currentVideoPositionInTimeline;
        int currentVideoRawPositionInClip;
        MediaRetrieveController mediaRetrieveController;
        t.j(this$0, "this$0");
        IPreviewPlayer iPreviewPlayer = this$0.mediaPlayer;
        Runnable runnable = null;
        if (iPreviewPlayer != null) {
            int i10 = 1;
            if (this$0.dataType == 101) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (z6) {
                currentVideoPositionInTimeline = IPreviewPlayer.DefaultImpls.getCurrentAudioPositionInTimeline$default(iPreviewPlayer, 0, 1, null);
            } else {
                currentVideoPositionInTimeline = iPreviewPlayer.getCurrentVideoPositionInTimeline();
            }
            long j6 = currentVideoPositionInTimeline;
            if (z6) {
                currentVideoRawPositionInClip = IPreviewPlayer.DefaultImpls.getCurrentAudioRawPositionInClip$default(iPreviewPlayer, 0, 1, null);
            } else {
                currentVideoRawPositionInClip = iPreviewPlayer.getCurrentVideoRawPositionInClip();
            }
            long j10 = currentVideoRawPositionInClip;
            if (this$0.curRecyclerViewState == 0 && !this$0.interceptedByController && j6 >= this$0.curPlaybackTimeBase) {
                this$0.curPlaybackTimeBase = j6;
                TimeLineCallback timeLineCallback = this$0.timeLineCallback;
                if (timeLineCallback != null) {
                    timeLineCallback.onPlayerTick(j6, j10);
                }
                TimeLineCallback timeLineCallback2 = this$0.timeLineCallback;
                if (timeLineCallback2 != null) {
                    timeLineCallback2.onTimeLineScrolledOffsetChanged(getTimeLineScrolledDx$default(this$0, false, 1, null));
                }
                long j11 = j6 - ((long) (this$0.curFirstVideoFrameTimeInMs + this$0.curControllerStartTimeOffsetInMs));
                if (!this$0.seeking && (mediaRetrieveController = this$0.retrieveCutter) != null) {
                    mediaRetrieveController.updatePointerPosition(j11 / this$0.timeLineItemFrameLengthInMs);
                }
                Log.d("ScenesBackgroundMusicFragment", "curPlaybackTimeBase = " + this$0.curPlaybackTimeBase + "   timeOffsetInController / timeLineItemFrameLengthInMs = " + (j11 / this$0.timeLineItemFrameLengthInMs));
                if (j6 >= Math.min(this$0.curFirstVideoFrameTimeInMs + this$0.curControllerEndTimeOffsetInMs, this$0.mediaLengthInMs)) {
                    int i11 = this$0.curFirstVideoFrameTimeInMs;
                    int i12 = this$0.curControllerEndTimeOffsetInMs;
                    int i13 = i11 + i12;
                    int i14 = this$0.mediaLengthInMs;
                    if (i13 >= i14) {
                        this$0.curFirstVideoFrameTimeInMs = 0;
                    }
                    int i15 = this$0.curFirstVideoFrameTimeInMs;
                    if (i15 + i12 < i14) {
                        i10 = 4;
                    }
                    this$0.replay(this$0.curControllerStartTimeOffsetInMs + i15, i15 + i12, i10);
                }
            }
        }
        Handler handler = this$0.mainHandler;
        Runnable runnable2 = this$0.playbackTimer;
        if (runnable2 == null) {
            t.B("playbackTimer");
        } else {
            runnable = runnable2;
        }
        handler.postDelayed(runnable, 40L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initTimeLine$lambda$4(final MediaTimeLineComponent this$0) {
        t.j(this$0, "this$0");
        IPreviewPlayer iPreviewPlayer = this$0.mediaPlayer;
        if (iPreviewPlayer != null) {
            iPreviewPlayer.addMediaEventListener(new MediaEventListenerImpl() { // from class: com.narvii.video.widget.MediaTimeLineComponent$initTimeLine$1$1
                @Override // com.narvii.video.widget.videoview.MediaEventListenerImpl, com.narvii.video.interfaces.IMediaEventListener
                public void onVideoCompleted() {
                    super.onVideoCompleted();
                    if (this.this$0.curFirstVideoFrameTimeInMs + this.this$0.curControllerEndTimeOffsetInMs >= this.this$0.getMediaLengthInMs()) {
                        this.this$0.curFirstVideoFrameTimeInMs = 0;
                    }
                    MediaTimeLineComponent mediaTimeLineComponent = this.this$0;
                    mediaTimeLineComponent.replay(mediaTimeLineComponent.curFirstVideoFrameTimeInMs + this.this$0.curControllerStartTimeOffsetInMs, this.this$0.curFirstVideoFrameTimeInMs + this.this$0.curControllerEndTimeOffsetInMs, 1);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void replay$lambda$10(MediaTimeLineComponent this$0) {
        t.j(this$0, "this$0");
        IPreviewPlayer iPreviewPlayer = this$0.mediaPlayer;
        if (iPreviewPlayer != null && iPreviewPlayer.isVideoPlaying()) {
            Runnable runnable = this$0.playbackTimer;
            if (runnable == null) {
                t.B("playbackTimer");
                runnable = null;
            }
            runnable.run();
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        HorizontalRecyclerView horizontalRecyclerView = (HorizontalRecyclerView) findViewById(R.id.video_time_line);
        this.timeLine = horizontalRecyclerView;
        if (horizontalRecyclerView == null) {
            this.timeLine = (HorizontalRecyclerView) findViewById(R.id.audio_time_line);
        }
        HorizontalRecyclerView horizontalRecyclerView2 = this.timeLine;
        if (horizontalRecyclerView2 != null) {
            horizontalRecyclerView2.setNestedScrollingEnabled(false);
        }
        this.retrieveCutter = (MediaRetrieveController) findViewById(R.id.retrieve_controller);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        MediaRetrieveController mediaRetrieveController = this.retrieveCutter;
        if (mediaRetrieveController != null) {
            int width = (int) (((getWidth() - ((getWidth() * this.frameCountInHighlightRect) / this.frameCountInBaseRect)) / 2.0f) - this.controllerHandlerWidth);
            this.controllerWidthOffset = width;
            mediaRetrieveController.layoutRect(width, 0, getWidth() - this.controllerWidthOffset, getHeight() - this.bottomGapSize, this.controllerHandlerWidth);
        }
        int width2 = getWidth() / this.frameCountInBaseRect;
        this.frameCellWidth = width2;
        MediaRetrieveController mediaRetrieveController2 = this.retrieveCutter;
        if (mediaRetrieveController2 != null) {
            mediaRetrieveController2.setFrameCellWidth(width2);
        }
        HorizontalRecyclerView horizontalRecyclerView = this.timeLine;
        if (horizontalRecyclerView != null) {
            t.g(horizontalRecyclerView);
            if (horizontalRecyclerView.getAdapter() == null && this.timeLineAdapter != null) {
                HorizontalRecyclerView horizontalRecyclerView2 = this.timeLine;
                t.g(horizontalRecyclerView2);
                horizontalRecyclerView2.setAdapter(this.timeLineAdapter);
            }
        }
        this.componentCenterX = getWidth() / 2.0f;
        if (z6) {
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
}
