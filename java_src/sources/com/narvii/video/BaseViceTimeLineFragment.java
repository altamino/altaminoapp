package com.narvii.video;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.video.interfaces.ITimelineClip;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.BaseClipInfoPack;
import com.narvii.video.widget.MediaTimeLineComponent;
import com.narvii.video.widget.ViceTimeLineWrapperView;
import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BaseViceTimeLineFragment extends ScrollingTimeLineFragment {

    @NotNull
    private final ArrayList<BaseClipInfoPack> clipListForViceTracks = new ArrayList<>();
    private LayoutInflater inflater;
    private boolean viceTimeLineInitialized;
    protected LinearLayout viceTimeLinePanel;

    @NotNull
    public abstract List<BaseClipInfoPack> getTargetClipListForViceTracks();

    public abstract int getViceTrackDataType(int i10);

    protected final int getViewIndexOfTrackIndex(int i10) {
        if (i10 == -1) {
            return -1;
        }
        return (this.clipListForViceTracks.size() - i10) - 1;
    }

    protected final void initViceTimeLine() {
        this.viceTimeLineInitialized = true;
        ArrayList arrayList = new ArrayList();
        List<BaseClipInfoPack> targetClipListForViceTracks = getTargetClipListForViceTracks();
        int size = targetClipListForViceTracks.size();
        for (int i10 = 0; i10 < size; i10++) {
            int i11 = targetClipListForViceTracks.get(i10).startOffsetToMainTrackInMs;
            arrayList.add(Integer.valueOf(i11 > 0 ? -i11 : 0));
        }
        updateViceTimeLinePanel$default(this, false, arrayList, false, 5, null);
    }

    public abstract void onViceTrackClicked(int i10);

    public abstract void onViceTrackOffsetChanged(int i10);

    protected final void setViceTimeLinePanel(@NotNull LinearLayout linearLayout) {
        kotlin.jvm.internal.t.j(linearLayout, "<set-?>");
        this.viceTimeLinePanel = linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void innerInitViceTimeLine(final int i10, int i11, boolean z6, int i12, int i13) {
        final int viewIndexOfTrackIndex = getViewIndexOfTrackIndex(i10);
        View childAt = getViceTimeLinePanel().getChildAt(viewIndexOfTrackIndex);
        final MediaTimeLineComponent mediaTimeLineComponent = childAt instanceof MediaTimeLineComponent ? (MediaTimeLineComponent) childAt : null;
        if (mediaTimeLineComponent == null) {
            return;
        }
        BaseClipInfoPack baseClipInfoPack = this.clipListForViceTracks.get(i10);
        kotlin.jvm.internal.t.i(baseClipInfoPack, "get(...)");
        BaseClipInfoPack baseClipInfoPack2 = baseClipInfoPack;
        ViceTimeLineWrapperView viceTimeLineWrapperView = (ViceTimeLineWrapperView) mediaTimeLineComponent.findViewById(com.narvii.mediaeditor.R.id.vice_time_line_wrapper);
        int viceTrackDataType = getViceTrackDataType(i10);
        mediaTimeLineComponent.initTimeLine(viceTrackDataType, 202, false, kotlin.collections.u.e(baseClipInfoPack2), null, (40704 & 32) != 0 ? null : viceTrackDataType == 104 ? getFrameRetrieverManager() : null, baseClipInfoPack2.visibleDurationInMs, (40704 & 128) != 0 ? 3000 : null, (40704 & 256) != 0 ? -1.0f : 1000.0f, (40704 & 512) != 0 ? false : true, (40704 & 1024) != 0 ? -1 : i11, (40704 & 2048) != 0 ? false : true, (40704 & 4096) != 0, (40704 & 8192) != 0 ? 0 : 0, (40704 & 16384) != 0 ? null : null, (40704 & 32768) != 0 ? false : z6);
        viceTimeLineWrapperView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.w
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseViceTimeLineFragment.innerInitViceTimeLine$lambda$3(this.f2964a, i10, view);
            }
        });
        MediaTimeLineComponent mainTimeLineComponent = getMainTimeLineComponent();
        int totalFrameCount = mainTimeLineComponent != null ? mainTimeLineComponent.getTotalFrameCount() : 0;
        int totalFrameCount2 = totalFrameCount > mediaTimeLineComponent.getTotalFrameCount() ? totalFrameCount - mediaTimeLineComponent.getTotalFrameCount() : 0;
        MediaTimeLineComponent mainTimeLineComponent2 = getMainTimeLineComponent();
        mediaTimeLineComponent.updateAdditionalFrameOffset(totalFrameCount, totalFrameCount2, (mainTimeLineComponent2 != null ? mainTimeLineComponent2.getFrameCellWidth() : 0) * totalFrameCount);
        if (i12 != 0) {
            int i14 = baseClipInfoPack2.startOffsetToMainTrackInMs;
            MediaTimeLineComponent.scrollTimeLine$default(mediaTimeLineComponent, i12 + i14, false, false, false, true, i14, false, 78, null);
        } else {
            MediaTimeLineComponent.scrollTimeLine$default(mediaTimeLineComponent, 0, true, false, false, false, 0, false, 125, null);
        }
        viceTimeLineWrapperView.bindViceTimeLine(mediaTimeLineComponent, getViceTrackDataType(i10), baseClipInfoPack2);
        String trackContent = baseClipInfoPack2.getTrackContent();
        kotlin.jvm.internal.t.i(trackContent, "getTrackContent(...)");
        viceTimeLineWrapperView.setTrackContent(trackContent);
        MediaTimeLineComponent mainTimeLineComponent3 = getMainTimeLineComponent();
        int timelineVisibleSectionWidth = mainTimeLineComponent3 != null ? mainTimeLineComponent3.getTimelineVisibleSectionWidth() : 0;
        MediaTimeLineComponent mainTimeLineComponent4 = getMainTimeLineComponent();
        viceTimeLineWrapperView.updateScrollingRange(i13 - (timelineVisibleSectionWidth - (mainTimeLineComponent4 != null ? mainTimeLineComponent4.getFrameCellWidth() : 0)), i13);
        viceTimeLineWrapperView.addTimeLineOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.narvii.video.BaseViceTimeLineFragment.innerInitViceTimeLine.2
            private int scrolledDx;

            public final int getScrolledDx() {
                return this.scrolledDx;
            }

            public final void setScrolledDx(int i15) {
                this.scrolledDx = i15;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(@NotNull RecyclerView recyclerView, int i15) {
                kotlin.jvm.internal.t.j(recyclerView, "recyclerView");
                Log.i("onScrollStateChanged", "view-" + i15);
                if (i10 >= this.clipListForViceTracks.size()) {
                    return;
                }
                if (i15 != 0 || this.scrolledDx == 0) {
                    if (i15 > 0) {
                        BaseMediaEditorFragment.changeVideoPlaybackStatus$default(this, true, false, 2, null);
                        if (i15 == 1) {
                            this.scrolledDx = 0;
                            return;
                        }
                        return;
                    }
                    return;
                }
                MediaTimeLineComponent mainTimeLineComponent5 = this.getMainTimeLineComponent();
                int timeLineScrolledDx$default = mainTimeLineComponent5 != null ? MediaTimeLineComponent.getTimeLineScrolledDx$default(mainTimeLineComponent5, false, 1, null) : 0;
                int timeLineScrolledDx$default2 = MediaTimeLineComponent.getTimeLineScrolledDx$default(mediaTimeLineComponent, false, 1, null) - mediaTimeLineComponent.getAdditionalFramePreOffsetDx();
                MediaTimeLineComponent mainTimeLineComponent6 = this.getMainTimeLineComponent();
                ((BaseClipInfoPack) this.clipListForViceTracks.get(i10)).startOffsetToMainTrackInMs = mainTimeLineComponent6 != null ? MediaTimeLineComponent.getSectionDurationInMs$default(mainTimeLineComponent6, Math.abs(timeLineScrolledDx$default - timeLineScrolledDx$default2), 0, false, 2, null) : 0;
                this.onViceTrackOffsetChanged(i10);
                if (this.getAutoPlaying()) {
                    BaseMediaEditorFragment.changeVideoPlaybackStatus$default(this, false, false, 2, null);
                }
                this.changeSeekStatus(false);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(@NotNull RecyclerView recyclerView, int i15, int i16) {
                kotlin.jvm.internal.t.j(recyclerView, "recyclerView");
                super.onScrolled(recyclerView, i15, i16);
                if (viewIndexOfTrackIndex >= this.clipListForViceTracks.size()) {
                    return;
                }
                if (i15 == 0 && i16 == 0) {
                    return;
                }
                this.scrolledDx += i15;
                BaseViceTimeLineFragment.onViceTrackScrolled$default(this, viewIndexOfTrackIndex, false, 2, null);
            }
        });
    }

    public static /* synthetic */ void onViceTrackScrolled$default(BaseViceTimeLineFragment baseViceTimeLineFragment, int i10, boolean z6, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onViceTrackScrolled");
        }
        if ((i11 & 1) != 0) {
            i10 = -1;
        }
        if ((i11 & 2) != 0) {
            z6 = false;
        }
        baseViceTimeLineFragment.onViceTrackScrolled(i10, z6);
    }

    private final void updateViceClipComposition(BaseClipInfoPack baseClipInfoPack, ArrayList<Integer> arrayList) {
        ArrayList arrayList2 = new ArrayList();
        int i10 = baseClipInfoPack.startOffsetToMainTrackInMs;
        int iIntValue = 0;
        int i11 = 0;
        for (Integer num : arrayList) {
            kotlin.jvm.internal.t.g(num);
            if (i10 < num.intValue() + iIntValue) {
                int iIntValue2 = i10 > 0 ? num.intValue() - (i10 - iIntValue) : num.intValue();
                int i12 = i11 + iIntValue2;
                int i13 = baseClipInfoPack.visibleDurationInMs;
                if (i12 > i13) {
                    arrayList2.add(Integer.valueOf(i13 - i11));
                    break;
                }
                arrayList2.add(Integer.valueOf(iIntValue2));
                if (i12 == baseClipInfoPack.visibleDurationInMs) {
                    break;
                }
                i11 = i12;
                i10 = 0;
            } else {
                iIntValue += num.intValue();
            }
        }
        int iM0 = kotlin.collections.d0.M0(arrayList2);
        int i14 = baseClipInfoPack.visibleDurationInMs;
        if (iM0 < i14) {
            arrayList2.add(Integer.valueOf(i14 - iM0));
        }
        baseClipInfoPack.setClipLengthComposition(arrayList2);
        baseClipInfoPack.setMainTrackClipComposition(arrayList);
    }

    public static /* synthetic */ void updateViceTimeLine$default(BaseViceTimeLineFragment baseViceTimeLineFragment, BaseClipInfoPack baseClipInfoPack, int i10, boolean z6, int i11, boolean z10, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateViceTimeLine");
        }
        baseViceTimeLineFragment.updateViceTimeLine(baseClipInfoPack, i10, (i12 & 4) != 0 ? false : z6, i11, (i12 & 16) != 0 ? false : z10);
    }

    public static /* synthetic */ void updateViceTimeLinePanel$default(BaseViceTimeLineFragment baseViceTimeLineFragment, boolean z6, List list, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateViceTimeLinePanel");
        }
        if ((i10 & 1) != 0) {
            z6 = false;
        }
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        baseViceTimeLineFragment.updateViceTimeLinePanel(z6, list, z10);
    }

    protected final int getTrackIndexOfViewIndex(int i10) {
        return (this.clipListForViceTracks.size() - i10) - 1;
    }

    @NotNull
    protected final LinearLayout getViceTimeLinePanel() {
        LinearLayout linearLayout = this.viceTimeLinePanel;
        if (linearLayout != null) {
            return linearLayout;
        }
        kotlin.jvm.internal.t.B("viceTimeLinePanel");
        return null;
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onFrameLocatedDuringMove(int i10, int i11) {
        super.onFrameLocatedDuringMove(i10, i11);
        int childCount = getViceTimeLinePanel().getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            int trackIndexOfViewIndex = getTrackIndexOfViewIndex(i12);
            View childAt = getViceTimeLinePanel().getChildAt(i12);
            kotlin.jvm.internal.t.h(childAt, "null cannot be cast to non-null type com.narvii.video.widget.MediaTimeLineComponent");
            MediaTimeLineComponent.scrollTimeLine$default((MediaTimeLineComponent) childAt, i10, false, false, false, true, this.clipListForViceTracks.get(trackIndexOfViewIndex).startOffsetToMainTrackInMs, false, 78, null);
        }
        onViceTrackScrolled$default(this, 0, false, 3, null);
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onPlayerTick(long j6, long j10) {
        super.onPlayerTick(j6, j10);
        int childCount = getViceTimeLinePanel().getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            int trackIndexOfViewIndex = getTrackIndexOfViewIndex(i10);
            View childAt = getViceTimeLinePanel().getChildAt(i10);
            kotlin.jvm.internal.t.h(childAt, "null cannot be cast to non-null type com.narvii.video.widget.MediaTimeLineComponent");
            MediaTimeLineComponent.scrollTimeLine$default((MediaTimeLineComponent) childAt, (int) j6, false, false, false, true, this.clipListForViceTracks.get(trackIndexOfViewIndex).startOffsetToMainTrackInMs, false, 78, null);
        }
    }

    protected final void onViceTrackScrolled(int i10, boolean z6) {
        MediaTimeLineComponent mainTimeLineComponent = getMainTimeLineComponent();
        int frameCellWidth = mainTimeLineComponent != null ? mainTimeLineComponent.getFrameCellWidth() : 0;
        MediaTimeLineComponent mainTimeLineComponent2 = getMainTimeLineComponent();
        int realFrameTimelineWidth = mainTimeLineComponent2 != null ? mainTimeLineComponent2.getRealFrameTimelineWidth() : 0;
        MediaTimeLineComponent mainTimeLineComponent3 = getMainTimeLineComponent();
        int firstFrameStartDx$default = mainTimeLineComponent3 != null ? MediaTimeLineComponent.getFirstFrameStartDx$default(mainTimeLineComponent3, false, 1, null) : 0;
        int i11 = getRtl() ? firstFrameStartDx$default - realFrameTimelineWidth : firstFrameStartDx$default + realFrameTimelineWidth;
        if (i10 != -1) {
            if (i10 < 0 || i10 >= getViceTimeLinePanel().getChildCount()) {
                return;
            }
            View childAt = getViceTimeLinePanel().getChildAt(i10);
            kotlin.jvm.internal.t.h(childAt, "null cannot be cast to non-null type com.narvii.video.widget.MediaTimeLineComponent");
            MediaTimeLineComponent mediaTimeLineComponent = (MediaTimeLineComponent) childAt;
            ((ViceTimeLineWrapperView) mediaTimeLineComponent.findViewById(com.narvii.mediaeditor.R.id.vice_time_line_wrapper)).updateVisibleContentSection(mediaTimeLineComponent.getFirstFrameStartDx(false), mediaTimeLineComponent.getRealFrameTimelineWidth(), frameCellWidth, realFrameTimelineWidth, firstFrameStartDx$default, i11, z6);
            return;
        }
        int childCount = getViceTimeLinePanel().getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt2 = getViceTimeLinePanel().getChildAt(i12);
            kotlin.jvm.internal.t.h(childAt2, "null cannot be cast to non-null type com.narvii.video.widget.MediaTimeLineComponent");
            MediaTimeLineComponent mediaTimeLineComponent2 = (MediaTimeLineComponent) childAt2;
            ((ViceTimeLineWrapperView) mediaTimeLineComponent2.findViewById(com.narvii.mediaeditor.R.id.vice_time_line_wrapper)).updateVisibleContentSection(mediaTimeLineComponent2.getFirstFrameStartDx(false), mediaTimeLineComponent2.getRealFrameTimelineWidth(), frameCellWidth, realFrameTimelineWidth, firstFrameStartDx$default, i11, z6);
        }
    }

    protected final void updateViceTimeLinePanel(boolean z6, @NotNull List<Integer> autoScrollToMsList, final boolean z10) {
        kotlin.jvm.internal.t.j(autoScrollToMsList, "autoScrollToMsList");
        this.clipListForViceTracks.clear();
        this.clipListForViceTracks.addAll(getTargetClipListForViceTracks());
        ArrayList<Integer> arrayListD = getTotalVisibleVideoDurationInMs().d();
        for (BaseClipInfoPack baseClipInfoPack : this.clipListForViceTracks) {
            kotlin.jvm.internal.t.g(baseClipInfoPack);
            updateViceClipComposition(baseClipInfoPack, arrayListD);
        }
        if (this.clipListForViceTracks.isEmpty()) {
            getViceTimeLinePanel().removeAllViews();
            getViceTimeLinePanel().setVisibility(4);
            return;
        }
        getViceTimeLinePanel().setVisibility(0);
        int size = this.clipListForViceTracks.size();
        int childCount = getViceTimeLinePanel().getChildCount();
        if (childCount > size) {
            int i10 = childCount - size;
            for (int i11 = 0; i11 < i10; i11++) {
                getViceTimeLinePanel().removeViewAt(i11);
            }
        } else if (childCount < size) {
            int i12 = size - childCount;
            for (int i13 = 0; i13 < i12; i13++) {
                LayoutInflater layoutInflater = this.inflater;
                if (layoutInflater == null) {
                    kotlin.jvm.internal.t.B("inflater");
                    layoutInflater = null;
                }
                layoutInflater.inflate(com.narvii.mediaeditor.R.layout.component_vice_time_line, (ViewGroup) getViceTimeLinePanel(), true);
            }
        }
        MediaTimeLineComponent mainTimeLineComponent = getMainTimeLineComponent();
        int timeLineScrolledDx$default = mainTimeLineComponent != null ? MediaTimeLineComponent.getTimeLineScrolledDx$default(mainTimeLineComponent, false, 1, null) : 0;
        int childCount2 = getViceTimeLinePanel().getChildCount();
        for (int i14 = 0; i14 < childCount2; i14++) {
            int trackIndexOfViewIndex = getTrackIndexOfViewIndex(i14);
            updateViceTimelineStyle(trackIndexOfViewIndex, z6, autoScrollToMsList.get(trackIndexOfViewIndex).intValue(), timeLineScrolledDx$default);
        }
        Utils.postDelayed(new Runnable() { // from class: com.narvii.video.x
            @Override // java.lang.Runnable
            public final void run() {
                BaseViceTimeLineFragment.updateViceTimeLinePanel$lambda$2(this.f2991a, z10);
            }
        }, 50L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void innerInitViceTimeLine$lambda$3(BaseViceTimeLineFragment this$0, int i10, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.onViceTrackClicked(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onTimeLineScrolledOffsetChanged$lambda$0(BaseViceTimeLineFragment this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        onViceTrackScrolled$default(this$0, 0, false, 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateViceTimeLine$lambda$1(BaseViceTimeLineFragment this$0, int i10, boolean z6) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.onViceTrackScrolled(this$0.getViewIndexOfTrackIndex(i10), z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateViceTimeLinePanel$lambda$2(BaseViceTimeLineFragment this$0, boolean z6) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        onViceTrackScrolled$default(this$0, 0, z6, 1, null);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0045  */
    private final void updateViceTimelineStyle(final int i10, boolean z6, final int i11, final int i12) {
        MediaTimeLineComponent mediaTimeLineComponent;
        int i13;
        View childAt = getViceTimeLinePanel().getChildAt(getViewIndexOfTrackIndex(i10));
        if (childAt instanceof MediaTimeLineComponent) {
            mediaTimeLineComponent = (MediaTimeLineComponent) childAt;
        } else {
            mediaTimeLineComponent = null;
        }
        if (mediaTimeLineComponent == null) {
            return;
        }
        switch (getViceTrackDataType(i10)) {
            case 101:
                if (this.clipListForViceTracks.get(i10) instanceof AVClipInfoPack) {
                    BaseClipInfoPack baseClipInfoPack = this.clipListForViceTracks.get(i10);
                    kotlin.jvm.internal.t.h(baseClipInfoPack, "null cannot be cast to non-null type com.narvii.video.model.AVClipInfoPack");
                    if (((AVClipInfoPack) baseClipInfoPack).isSfx) {
                        i13 = com.narvii.mediaeditor.R.color.media_timeline_sfx_frame_color;
                    } else {
                        i13 = com.narvii.mediaeditor.R.color.media_timeline_audio_frame_color;
                    }
                } else {
                    i13 = com.narvii.mediaeditor.R.color.media_timeline_audio_frame_color;
                }
                break;
            case 102:
                i13 = com.narvii.mediaeditor.R.color.media_timeline_caption_frame_color;
                break;
            case 103:
                i13 = com.narvii.mediaeditor.R.color.media_timeline_sticker_frame_color;
                break;
            default:
                i13 = com.narvii.mediaeditor.R.color.media_timeline_audio_frame_color;
                break;
        }
        final int color = getResources().getColor(i13);
        if (mediaTimeLineComponent.getHeight() > 0) {
            innerInitViceTimeLine(i10, color, z6, i11, i12);
        } else {
            mediaTimeLineComponent.setTimeLineCallback(new MediaTimeLineComponent.TimeLineCallback() { // from class: com.narvii.video.BaseViceTimeLineFragment.updateViceTimelineStyle.1
                @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
                public void onControllerActive() {
                    MediaTimeLineComponent.TimeLineCallback.DefaultImpls.onControllerActive(this);
                }

                @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
                public void onFrameLocatedDuringMove(int i14, int i15) {
                    MediaTimeLineComponent.TimeLineCallback.DefaultImpls.onFrameLocatedDuringMove(this, i14, i15);
                }

                @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
                public void onPlayerTick(long j6, long j10) {
                    MediaTimeLineComponent.TimeLineCallback.DefaultImpls.onPlayerTick(this, j6, j10);
                }

                @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
                public void onReplayTriggered(int i14, int i15, int i16) {
                    MediaTimeLineComponent.TimeLineCallback.DefaultImpls.onReplayTriggered(this, i14, i15, i16);
                }

                @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
                public void onTimeLineClicked(@NotNull ITimelineClip iTimelineClip) {
                    MediaTimeLineComponent.TimeLineCallback.DefaultImpls.onTimeLineClicked(this, iTimelineClip);
                }

                @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
                public void onTimeLineLayout() {
                    MediaTimeLineComponent.TimeLineCallback.DefaultImpls.onTimeLineLayout(this);
                    BaseViceTimeLineFragment.this.innerInitViceTimeLine(i10, color, true, i11, i12);
                }

                @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
                public void onTimeLineScrolledOffsetChanged(int i14) {
                    MediaTimeLineComponent.TimeLineCallback.DefaultImpls.onTimeLineScrolledOffsetChanged(this, i14);
                }
            });
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    public void initComponent() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        kotlin.jvm.internal.t.i(layoutInflaterFrom, "from(...)");
        this.inflater = layoutInflaterFrom;
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    protected void onAVClipsPrepared() {
        super.onAVClipsPrepared();
        if (!this.viceTimeLineInitialized) {
            initViceTimeLine();
        }
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onTimeLineLayout() {
        super.onTimeLineLayout();
        if (!this.viceTimeLineInitialized) {
            initViceTimeLine();
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onTimeLineScrolledOffsetChanged(int i10) {
        int timelineVisibleSectionWidth;
        int frameCellWidth;
        super.onTimeLineScrolledOffsetChanged(i10);
        MediaTimeLineComponent mainTimeLineComponent = getMainTimeLineComponent();
        if (mainTimeLineComponent != null) {
            timelineVisibleSectionWidth = mainTimeLineComponent.getTimelineVisibleSectionWidth();
        } else {
            timelineVisibleSectionWidth = 0;
        }
        MediaTimeLineComponent mainTimeLineComponent2 = getMainTimeLineComponent();
        if (mainTimeLineComponent2 != null) {
            frameCellWidth = mainTimeLineComponent2.getFrameCellWidth();
        } else {
            frameCellWidth = 0;
        }
        int i11 = i10 - (timelineVisibleSectionWidth - frameCellWidth);
        int childCount = getViceTimeLinePanel().getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getViceTimeLinePanel().getChildAt(i12);
            kotlin.jvm.internal.t.h(childAt, "null cannot be cast to non-null type com.narvii.video.widget.MediaTimeLineComponent");
            ((ViceTimeLineWrapperView) ((MediaTimeLineComponent) childAt).findViewById(com.narvii.mediaeditor.R.id.vice_time_line_wrapper)).updateScrollingRange(i11, i10);
        }
        Utils.postDelayed(new Runnable() { // from class: com.narvii.video.y
            @Override // java.lang.Runnable
            public final void run() {
                BaseViceTimeLineFragment.onTimeLineScrolledOffsetChanged$lambda$0(this.f2993a);
            }
        }, 50L);
    }

    protected final void updateViceTimeLine(@NotNull BaseClipInfoPack viceClip, final int i10, boolean z6, int i11, final boolean z10) {
        kotlin.jvm.internal.t.j(viceClip, "viceClip");
        updateViceClipComposition(viceClip, getTotalVisibleVideoDurationInMs().d());
        MediaTimeLineComponent mainTimeLineComponent = getMainTimeLineComponent();
        int timeLineScrolledDx$default = 0;
        if (mainTimeLineComponent != null) {
            timeLineScrolledDx$default = MediaTimeLineComponent.getTimeLineScrolledDx$default(mainTimeLineComponent, false, 1, null);
        }
        updateViceTimelineStyle(i10, z6, i11, timeLineScrolledDx$default);
        Utils.postDelayed(new Runnable() { // from class: com.narvii.video.z
            @Override // java.lang.Runnable
            public final void run() {
                BaseViceTimeLineFragment.updateViceTimeLine$lambda$1(this.f2994a, i10, z10);
            }
        }, 50L);
    }
}
