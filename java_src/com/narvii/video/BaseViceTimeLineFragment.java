package com.narvii.video;

import android.content.res.Resources;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.video.model.BaseClipInfoPack;
import com.narvii.video.widget.MediaTimeLineComponent;
import com.narvii.video.widget.ViceTimeLineWrapperView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BaseViceTimeLineFragment.kt */
/* loaded from: classes3.dex */
public abstract class BaseViceTimeLineFragment extends ScrollingTimeLineFragment {
    private HashMap _$_findViewCache;
    private final ArrayList<BaseClipInfoPack> clipListForViceTracks = new ArrayList<>();
    private LayoutInflater inflater;
    private boolean viceTimeLineInitialized;
    protected LinearLayout viceTimeLinePanel;

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.app.theme.NVThemeFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    public abstract List<BaseClipInfoPack> getTargetClipListForViceTracks();

    public abstract int getViceTrackDataType(int i);

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public abstract void onViceTrackClicked(int i);

    public abstract void onViceTrackOffsetChanged(int i);

    protected final LinearLayout getViceTimeLinePanel() {
        LinearLayout linearLayout = this.viceTimeLinePanel;
        if (linearLayout != null) {
            return linearLayout;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viceTimeLinePanel");
        throw null;
    }

    protected final void setViceTimeLinePanel(LinearLayout linearLayout) {
        Intrinsics.checkParameterIsNotNull(linearLayout, "<set-?>");
        this.viceTimeLinePanel = linearLayout;
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    public void initComponent() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        Intrinsics.checkExpressionValueIsNotNull(layoutInflaterFrom, "LayoutInflater.from(context)");
        this.inflater = layoutInflaterFrom;
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onFrameLocatedDuringMove(int i, int i2) {
        super.onFrameLocatedDuringMove(i, i2);
        LinearLayout linearLayout = this.viceTimeLinePanel;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viceTimeLinePanel");
            throw null;
        }
        int childCount = linearLayout.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            int trackIndexOfViewIndex = getTrackIndexOfViewIndex(i3);
            LinearLayout linearLayout2 = this.viceTimeLinePanel;
            if (linearLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viceTimeLinePanel");
                throw null;
            }
            View childAt = linearLayout2.getChildAt(i3);
            if (childAt == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.video.widget.MediaTimeLineComponent");
            }
            MediaTimeLineComponent.scrollTimeLine$default((MediaTimeLineComponent) childAt, i, false, false, false, true, this.clipListForViceTracks.get(trackIndexOfViewIndex).startOffsetToMainTrackInMs, false, 78, null);
        }
        onViceTrackScrolled$default(this, 0, false, 3, null);
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onPlayerTick(long j, long j2) {
        super.onPlayerTick(j, j2);
        LinearLayout linearLayout = this.viceTimeLinePanel;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viceTimeLinePanel");
            throw null;
        }
        int childCount = linearLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            int trackIndexOfViewIndex = getTrackIndexOfViewIndex(i);
            LinearLayout linearLayout2 = this.viceTimeLinePanel;
            if (linearLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viceTimeLinePanel");
                throw null;
            }
            View childAt = linearLayout2.getChildAt(i);
            if (childAt == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.video.widget.MediaTimeLineComponent");
            }
            MediaTimeLineComponent.scrollTimeLine$default((MediaTimeLineComponent) childAt, (int) j, false, false, false, true, this.clipListForViceTracks.get(trackIndexOfViewIndex).startOffsetToMainTrackInMs, false, 78, null);
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onTimeLineScrolledOffsetChanged(int i) {
        super.onTimeLineScrolledOffsetChanged(i);
        MediaTimeLineComponent mainTimeLineComponent = getMainTimeLineComponent();
        int timelineVisibleSectionWidth = mainTimeLineComponent != null ? mainTimeLineComponent.getTimelineVisibleSectionWidth() : 0;
        MediaTimeLineComponent mainTimeLineComponent2 = getMainTimeLineComponent();
        int frameCellWidth = i - (timelineVisibleSectionWidth - (mainTimeLineComponent2 != null ? mainTimeLineComponent2.getFrameCellWidth() : 0));
        LinearLayout linearLayout = this.viceTimeLinePanel;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viceTimeLinePanel");
            throw null;
        }
        int childCount = linearLayout.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            LinearLayout linearLayout2 = this.viceTimeLinePanel;
            if (linearLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viceTimeLinePanel");
                throw null;
            }
            View childAt = linearLayout2.getChildAt(i2);
            if (childAt == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.video.widget.MediaTimeLineComponent");
            }
            ((ViceTimeLineWrapperView) ((MediaTimeLineComponent) childAt)._$_findCachedViewById(com.narvii.mediaeditor.R.id.vice_time_line_wrapper)).updateScrollingRange(frameCellWidth, i);
        }
        Utils.postDelayed(new Runnable() { // from class: com.narvii.video.BaseViceTimeLineFragment.onTimeLineScrolledOffsetChanged.1
            @Override // java.lang.Runnable
            public final void run() {
                BaseViceTimeLineFragment.onViceTrackScrolled$default(BaseViceTimeLineFragment.this, 0, false, 3, null);
            }
        }, 50L);
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onTimeLineLayout() throws Resources.NotFoundException {
        super.onTimeLineLayout();
        if (this.viceTimeLineInitialized) {
            return;
        }
        initViceTimeLine();
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    protected void onAVClipsPrepared() throws Resources.NotFoundException {
        super.onAVClipsPrepared();
        if (this.viceTimeLineInitialized) {
            return;
        }
        initViceTimeLine();
    }

    protected final void initViceTimeLine() throws Resources.NotFoundException {
        this.viceTimeLineInitialized = true;
        ArrayList arrayList = new ArrayList();
        List<BaseClipInfoPack> targetClipListForViceTracks = getTargetClipListForViceTracks();
        int size = targetClipListForViceTracks.size();
        for (int i = 0; i < size; i++) {
            int i2 = targetClipListForViceTracks.get(i).startOffsetToMainTrackInMs;
            arrayList.add(Integer.valueOf(i2 > 0 ? -i2 : 0));
        }
        updateViceTimeLinePanel$default(this, false, arrayList, false, 5, null);
    }

    public static /* synthetic */ void onViceTrackScrolled$default(BaseViceTimeLineFragment baseViceTimeLineFragment, int i, boolean z, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onViceTrackScrolled");
        }
        if ((i2 & 1) != 0) {
            i = -1;
        }
        if ((i2 & 2) != 0) {
            z = false;
        }
        baseViceTimeLineFragment.onViceTrackScrolled(i, z);
    }

    protected final void onViceTrackScrolled(int i, boolean z) {
        MediaTimeLineComponent mainTimeLineComponent = getMainTimeLineComponent();
        boolean z2 = false;
        int frameCellWidth = mainTimeLineComponent != null ? mainTimeLineComponent.getFrameCellWidth() : 0;
        MediaTimeLineComponent mainTimeLineComponent2 = getMainTimeLineComponent();
        int realFrameTimelineWidth = mainTimeLineComponent2 != null ? mainTimeLineComponent2.getRealFrameTimelineWidth() : 0;
        MediaTimeLineComponent mainTimeLineComponent3 = getMainTimeLineComponent();
        int firstFrameStartDx$default = mainTimeLineComponent3 != null ? MediaTimeLineComponent.getFirstFrameStartDx$default(mainTimeLineComponent3, false, 1, null) : 0;
        int i2 = getRtl() ? firstFrameStartDx$default - realFrameTimelineWidth : firstFrameStartDx$default + realFrameTimelineWidth;
        String str = "null cannot be cast to non-null type com.narvii.video.widget.MediaTimeLineComponent";
        if (i == -1) {
            LinearLayout linearLayout = this.viceTimeLinePanel;
            if (linearLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viceTimeLinePanel");
                throw null;
            }
            int childCount = linearLayout.getChildCount();
            int i3 = 0;
            while (i3 < childCount) {
                LinearLayout linearLayout2 = this.viceTimeLinePanel;
                if (linearLayout2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("viceTimeLinePanel");
                    throw null;
                }
                View childAt = linearLayout2.getChildAt(i3);
                if (childAt == null) {
                    throw new TypeCastException(str);
                }
                MediaTimeLineComponent mediaTimeLineComponent = (MediaTimeLineComponent) childAt;
                ((ViceTimeLineWrapperView) mediaTimeLineComponent._$_findCachedViewById(com.narvii.mediaeditor.R.id.vice_time_line_wrapper)).updateVisibleContentSection(mediaTimeLineComponent.getFirstFrameStartDx(z2), mediaTimeLineComponent.getRealFrameTimelineWidth(), frameCellWidth, realFrameTimelineWidth, firstFrameStartDx$default, i2, z);
                i3++;
                str = str;
                z2 = false;
            }
            return;
        }
        LinearLayout linearLayout3 = this.viceTimeLinePanel;
        if (linearLayout3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viceTimeLinePanel");
            throw null;
        }
        int childCount2 = linearLayout3.getChildCount();
        if (i >= 0 && childCount2 > i) {
            LinearLayout linearLayout4 = this.viceTimeLinePanel;
            if (linearLayout4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viceTimeLinePanel");
                throw null;
            }
            View childAt2 = linearLayout4.getChildAt(i);
            if (childAt2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.video.widget.MediaTimeLineComponent");
            }
            MediaTimeLineComponent mediaTimeLineComponent2 = (MediaTimeLineComponent) childAt2;
            ((ViceTimeLineWrapperView) mediaTimeLineComponent2._$_findCachedViewById(com.narvii.mediaeditor.R.id.vice_time_line_wrapper)).updateVisibleContentSection(mediaTimeLineComponent2.getFirstFrameStartDx(false), mediaTimeLineComponent2.getRealFrameTimelineWidth(), frameCellWidth, realFrameTimelineWidth, firstFrameStartDx$default, i2, z);
        }
    }

    protected final int getTrackIndexOfViewIndex(int i) {
        return (this.clipListForViceTracks.size() - i) - 1;
    }

    protected final int getViewIndexOfTrackIndex(int i) {
        if (i == -1) {
            return -1;
        }
        return (this.clipListForViceTracks.size() - i) - 1;
    }

    public static /* synthetic */ void updateViceTimeLine$default(BaseViceTimeLineFragment baseViceTimeLineFragment, BaseClipInfoPack baseClipInfoPack, int i, boolean z, int i2, boolean z2, int i3, Object obj) throws Resources.NotFoundException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateViceTimeLine");
        }
        baseViceTimeLineFragment.updateViceTimeLine(baseClipInfoPack, i, (i3 & 4) != 0 ? false : z, i2, (i3 & 16) != 0 ? false : z2);
    }

    protected final void updateViceTimeLine(BaseClipInfoPack viceClip, final int i, boolean z, int i2, final boolean z2) throws Resources.NotFoundException {
        Intrinsics.checkParameterIsNotNull(viceClip, "viceClip");
        updateViceClipComposition(viceClip, getTotalVisibleVideoDurationInMs().getSecond());
        MediaTimeLineComponent mainTimeLineComponent = getMainTimeLineComponent();
        updateViceTimelineStyle(i, z, i2, mainTimeLineComponent != null ? MediaTimeLineComponent.getTimeLineScrolledDx$default(mainTimeLineComponent, false, 1, null) : 0);
        Utils.postDelayed(new Runnable() { // from class: com.narvii.video.BaseViceTimeLineFragment.updateViceTimeLine.1
            @Override // java.lang.Runnable
            public final void run() {
                BaseViceTimeLineFragment baseViceTimeLineFragment = BaseViceTimeLineFragment.this;
                baseViceTimeLineFragment.onViceTrackScrolled(baseViceTimeLineFragment.getViewIndexOfTrackIndex(i), z2);
            }
        }, 50L);
    }

    public static /* synthetic */ void updateViceTimeLinePanel$default(BaseViceTimeLineFragment baseViceTimeLineFragment, boolean z, List list, boolean z2, int i, Object obj) throws Resources.NotFoundException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateViceTimeLinePanel");
        }
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            z2 = false;
        }
        baseViceTimeLineFragment.updateViceTimeLinePanel(z, list, z2);
    }

    protected final void updateViceTimeLinePanel(boolean z, List<Integer> autoScrollToMsList, final boolean z2) throws Resources.NotFoundException {
        Intrinsics.checkParameterIsNotNull(autoScrollToMsList, "autoScrollToMsList");
        this.clipListForViceTracks.clear();
        this.clipListForViceTracks.addAll(getTargetClipListForViceTracks());
        ArrayList<Integer> second = getTotalVisibleVideoDurationInMs().getSecond();
        Iterator<BaseClipInfoPack> it = this.clipListForViceTracks.iterator();
        while (it.hasNext()) {
            BaseClipInfoPack clip = it.next();
            Intrinsics.checkExpressionValueIsNotNull(clip, "clip");
            updateViceClipComposition(clip, second);
        }
        if (this.clipListForViceTracks.isEmpty()) {
            LinearLayout linearLayout = this.viceTimeLinePanel;
            if (linearLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viceTimeLinePanel");
                throw null;
            }
            linearLayout.removeAllViews();
            LinearLayout linearLayout2 = this.viceTimeLinePanel;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(4);
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("viceTimeLinePanel");
                throw null;
            }
        }
        LinearLayout linearLayout3 = this.viceTimeLinePanel;
        if (linearLayout3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viceTimeLinePanel");
            throw null;
        }
        linearLayout3.setVisibility(0);
        int size = this.clipListForViceTracks.size();
        LinearLayout linearLayout4 = this.viceTimeLinePanel;
        if (linearLayout4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viceTimeLinePanel");
            throw null;
        }
        int childCount = linearLayout4.getChildCount();
        if (childCount > size) {
            int i = childCount - size;
            for (int i2 = 0; i2 < i; i2++) {
                LinearLayout linearLayout5 = this.viceTimeLinePanel;
                if (linearLayout5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("viceTimeLinePanel");
                    throw null;
                }
                linearLayout5.removeViewAt(i2);
            }
        } else if (childCount < size) {
            int i3 = size - childCount;
            for (int i4 = 0; i4 < i3; i4++) {
                LayoutInflater layoutInflater = this.inflater;
                if (layoutInflater == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("inflater");
                    throw null;
                }
                int i5 = com.narvii.mediaeditor.R.layout.component_vice_time_line;
                LinearLayout linearLayout6 = this.viceTimeLinePanel;
                if (linearLayout6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("viceTimeLinePanel");
                    throw null;
                }
                layoutInflater.inflate(i5, (ViewGroup) linearLayout6, true);
            }
        }
        MediaTimeLineComponent mainTimeLineComponent = getMainTimeLineComponent();
        int timeLineScrolledDx$default = mainTimeLineComponent != null ? MediaTimeLineComponent.getTimeLineScrolledDx$default(mainTimeLineComponent, false, 1, null) : 0;
        LinearLayout linearLayout7 = this.viceTimeLinePanel;
        if (linearLayout7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viceTimeLinePanel");
            throw null;
        }
        int childCount2 = linearLayout7.getChildCount();
        for (int i6 = 0; i6 < childCount2; i6++) {
            int trackIndexOfViewIndex = getTrackIndexOfViewIndex(i6);
            updateViceTimelineStyle(trackIndexOfViewIndex, z, autoScrollToMsList.get(trackIndexOfViewIndex).intValue(), timeLineScrolledDx$default);
        }
        Utils.postDelayed(new Runnable() { // from class: com.narvii.video.BaseViceTimeLineFragment.updateViceTimeLinePanel.1
            @Override // java.lang.Runnable
            public final void run() {
                BaseViceTimeLineFragment.onViceTrackScrolled$default(BaseViceTimeLineFragment.this, 0, z2, 1, null);
            }
        }, 50L);
    }

    private final void updateViceClipComposition(BaseClipInfoPack baseClipInfoPack, ArrayList<Integer> arrayList) {
        int iIntValue;
        ArrayList arrayList2 = new ArrayList();
        int i = baseClipInfoPack.startOffsetToMainTrackInMs;
        Iterator<Integer> it = arrayList.iterator();
        int iIntValue2 = 0;
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Integer composition = it.next();
            Intrinsics.checkExpressionValueIsNotNull(composition, "composition");
            if (i >= composition.intValue() + iIntValue2) {
                iIntValue2 += composition.intValue();
            } else {
                if (i > 0) {
                    iIntValue = composition.intValue() - (i - iIntValue2);
                } else {
                    iIntValue = composition.intValue();
                }
                int i3 = i2 + iIntValue;
                int i4 = baseClipInfoPack.visibleDurationInMs;
                if (i3 <= i4) {
                    arrayList2.add(Integer.valueOf(iIntValue));
                    if (i3 == baseClipInfoPack.visibleDurationInMs) {
                        break;
                    }
                    i2 = i3;
                    i = 0;
                } else {
                    arrayList2.add(Integer.valueOf(i4 - i2));
                    break;
                }
            }
        }
        int iSumOfInt = CollectionsKt___CollectionsKt.sumOfInt(arrayList2);
        int i5 = baseClipInfoPack.visibleDurationInMs;
        if (iSumOfInt < i5) {
            arrayList2.add(Integer.valueOf(i5 - iSumOfInt));
        }
        baseClipInfoPack.setClipLengthComposition(arrayList2);
        baseClipInfoPack.setMainTrackClipComposition(arrayList);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void updateViceTimelineStyle(final int r10, boolean r11, final int r12, final int r13) throws android.content.res.Resources.NotFoundException {
        /*
            r9 = this;
            int r0 = r9.getViewIndexOfTrackIndex(r10)
            android.widget.LinearLayout r1 = r9.viceTimeLinePanel
            r2 = 0
            if (r1 == 0) goto L71
            android.view.View r0 = r1.getChildAt(r0)
            boolean r1 = r0 instanceof com.narvii.video.widget.MediaTimeLineComponent
            if (r1 != 0) goto L12
            r0 = r2
        L12:
            com.narvii.video.widget.MediaTimeLineComponent r0 = (com.narvii.video.widget.MediaTimeLineComponent) r0
            if (r0 == 0) goto L70
            int r1 = r9.getViceTrackDataType(r10)
            switch(r1) {
                case 101: goto L26;
                case 102: goto L23;
                case 103: goto L20;
                default: goto L1d;
            }
        L1d:
            int r1 = com.narvii.mediaeditor.R.color.media_timeline_audio_frame_color
            goto L4b
        L20:
            int r1 = com.narvii.mediaeditor.R.color.media_timeline_sticker_frame_color
            goto L4b
        L23:
            int r1 = com.narvii.mediaeditor.R.color.media_timeline_caption_frame_color
            goto L4b
        L26:
            java.util.ArrayList<com.narvii.video.model.BaseClipInfoPack> r1 = r9.clipListForViceTracks
            java.lang.Object r1 = r1.get(r10)
            boolean r1 = r1 instanceof com.narvii.video.model.AVClipInfoPack
            if (r1 == 0) goto L49
            java.util.ArrayList<com.narvii.video.model.BaseClipInfoPack> r1 = r9.clipListForViceTracks
            java.lang.Object r1 = r1.get(r10)
            if (r1 == 0) goto L41
            com.narvii.video.model.AVClipInfoPack r1 = (com.narvii.video.model.AVClipInfoPack) r1
            boolean r1 = r1.isSfx
            if (r1 == 0) goto L49
            int r1 = com.narvii.mediaeditor.R.color.media_timeline_sfx_frame_color
            goto L4b
        L41:
            kotlin.TypeCastException r10 = new kotlin.TypeCastException
            java.lang.String r11 = "null cannot be cast to non-null type com.narvii.video.model.AVClipInfoPack"
            r10.<init>(r11)
            throw r10
        L49:
            int r1 = com.narvii.mediaeditor.R.color.media_timeline_audio_frame_color
        L4b:
            android.content.res.Resources r2 = r9.getResources()
            int r6 = r2.getColor(r1)
            int r1 = r0.getHeight()
            if (r1 <= 0) goto L63
            r3 = r9
            r4 = r10
            r5 = r6
            r6 = r11
            r7 = r12
            r8 = r13
            r3.innerInitViceTimeLine(r4, r5, r6, r7, r8)
            goto L70
        L63:
            com.narvii.video.BaseViceTimeLineFragment$updateViceTimelineStyle$1 r11 = new com.narvii.video.BaseViceTimeLineFragment$updateViceTimelineStyle$1
            r3 = r11
            r4 = r9
            r5 = r10
            r7 = r12
            r8 = r13
            r3.<init>()
            r0.setTimeLineCallback(r11)
        L70:
            return
        L71:
            java.lang.String r10 = "viceTimeLinePanel"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r10)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.video.BaseViceTimeLineFragment.updateViceTimelineStyle(int, boolean, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void innerInitViceTimeLine(final int i, int i2, boolean z, int i3, int i4) {
        ViceTimeLineWrapperView viceTimeLineWrapperView;
        BaseClipInfoPack baseClipInfoPack;
        final int viewIndexOfTrackIndex = getViewIndexOfTrackIndex(i);
        LinearLayout linearLayout = this.viceTimeLinePanel;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viceTimeLinePanel");
            throw null;
        }
        View childAt = linearLayout.getChildAt(viewIndexOfTrackIndex);
        if (!(childAt instanceof MediaTimeLineComponent)) {
            childAt = null;
        }
        final MediaTimeLineComponent mediaTimeLineComponent = (MediaTimeLineComponent) childAt;
        if (mediaTimeLineComponent != null) {
            BaseClipInfoPack baseClipInfoPack2 = this.clipListForViceTracks.get(i);
            Intrinsics.checkExpressionValueIsNotNull(baseClipInfoPack2, "clipListForViceTracks[trackIndex]");
            BaseClipInfoPack baseClipInfoPack3 = baseClipInfoPack2;
            ViceTimeLineWrapperView viceTimeLineWrapperView2 = (ViceTimeLineWrapperView) mediaTimeLineComponent._$_findCachedViewById(com.narvii.mediaeditor.R.id.vice_time_line_wrapper);
            int viceTrackDataType = getViceTrackDataType(i);
            mediaTimeLineComponent.initTimeLine(viceTrackDataType, 202, false, CollectionsKt__CollectionsJVMKt.listOf(baseClipInfoPack3), null, (40704 & 32) != 0 ? null : viceTrackDataType == 104 ? getFrameRetrieverManager() : null, baseClipInfoPack3.visibleDurationInMs, (40704 & 128) != 0 ? 3000 : null, (40704 & 256) != 0 ? -1.0f : 1000.0f, (40704 & 512) != 0 ? false : true, (40704 & 1024) != 0 ? -1 : i2, (40704 & 2048) != 0 ? false : true, (40704 & 4096) != 0, (40704 & 8192) != 0 ? 0 : 0, (40704 & 16384) != 0 ? null : null, (40704 & 32768) != 0 ? false : z);
            viceTimeLineWrapperView2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.BaseViceTimeLineFragment.innerInitViceTimeLine.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BaseViceTimeLineFragment.this.onViceTrackClicked(i);
                }
            });
            MediaTimeLineComponent mainTimeLineComponent = getMainTimeLineComponent();
            int totalFrameCount = mainTimeLineComponent != null ? mainTimeLineComponent.getTotalFrameCount() : 0;
            int totalFrameCount2 = totalFrameCount > mediaTimeLineComponent.getTotalFrameCount() ? totalFrameCount - mediaTimeLineComponent.getTotalFrameCount() : 0;
            MediaTimeLineComponent mainTimeLineComponent2 = getMainTimeLineComponent();
            mediaTimeLineComponent.updateAdditionalFrameOffset(totalFrameCount, totalFrameCount2, (mainTimeLineComponent2 != null ? mainTimeLineComponent2.getFrameCellWidth() : 0) * totalFrameCount);
            if (i3 != 0) {
                baseClipInfoPack = baseClipInfoPack3;
                int i5 = baseClipInfoPack.startOffsetToMainTrackInMs;
                viceTimeLineWrapperView = viceTimeLineWrapperView2;
                MediaTimeLineComponent.scrollTimeLine$default(mediaTimeLineComponent, i3 + i5, false, false, false, true, i5, false, 78, null);
            } else {
                viceTimeLineWrapperView = viceTimeLineWrapperView2;
                baseClipInfoPack = baseClipInfoPack3;
                MediaTimeLineComponent.scrollTimeLine$default(mediaTimeLineComponent, 0, true, false, false, false, 0, false, 125, null);
            }
            viceTimeLineWrapperView.bindViceTimeLine(mediaTimeLineComponent, getViceTrackDataType(i), baseClipInfoPack);
            String trackContent = baseClipInfoPack.getTrackContent();
            Intrinsics.checkExpressionValueIsNotNull(trackContent, "viceClip.trackContent");
            viceTimeLineWrapperView.setTrackContent(trackContent);
            MediaTimeLineComponent mainTimeLineComponent3 = getMainTimeLineComponent();
            int timelineVisibleSectionWidth = mainTimeLineComponent3 != null ? mainTimeLineComponent3.getTimelineVisibleSectionWidth() : 0;
            MediaTimeLineComponent mainTimeLineComponent4 = getMainTimeLineComponent();
            viceTimeLineWrapperView.updateScrollingRange(i4 - (timelineVisibleSectionWidth - (mainTimeLineComponent4 != null ? mainTimeLineComponent4.getFrameCellWidth() : 0)), i4);
            viceTimeLineWrapperView.addTimeLineOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.narvii.video.BaseViceTimeLineFragment.innerInitViceTimeLine.2
                private int scrolledDx;

                public final int getScrolledDx() {
                    return this.scrolledDx;
                }

                public final void setScrolledDx(int i6) {
                    this.scrolledDx = i6;
                }

                @Override // android.support.v7.widget.RecyclerView.OnScrollListener
                public void onScrollStateChanged(RecyclerView recyclerView, int i6) {
                    Intrinsics.checkParameterIsNotNull(recyclerView, "recyclerView");
                    Log.i("onScrollStateChanged", "view-" + i6);
                    if (i >= BaseViceTimeLineFragment.this.clipListForViceTracks.size()) {
                        return;
                    }
                    if (i6 != 0 || this.scrolledDx == 0) {
                        if (i6 > 0) {
                            BaseMediaEditorFragment.changeVideoPlaybackStatus$default(BaseViceTimeLineFragment.this, true, false, 2, null);
                            if (i6 == 1) {
                                this.scrolledDx = 0;
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    MediaTimeLineComponent mainTimeLineComponent5 = BaseViceTimeLineFragment.this.getMainTimeLineComponent();
                    int timeLineScrolledDx$default = mainTimeLineComponent5 != null ? MediaTimeLineComponent.getTimeLineScrolledDx$default(mainTimeLineComponent5, false, 1, null) : 0;
                    int timeLineScrolledDx$default2 = MediaTimeLineComponent.getTimeLineScrolledDx$default(mediaTimeLineComponent, false, 1, null) - mediaTimeLineComponent.getAdditionalFramePreOffsetDx();
                    MediaTimeLineComponent mainTimeLineComponent6 = BaseViceTimeLineFragment.this.getMainTimeLineComponent();
                    ((BaseClipInfoPack) BaseViceTimeLineFragment.this.clipListForViceTracks.get(i)).startOffsetToMainTrackInMs = mainTimeLineComponent6 != null ? MediaTimeLineComponent.getSectionDurationInMs$default(mainTimeLineComponent6, Math.abs(timeLineScrolledDx$default - timeLineScrolledDx$default2), 0, false, 2, null) : 0;
                    BaseViceTimeLineFragment.this.onViceTrackOffsetChanged(i);
                    if (BaseViceTimeLineFragment.this.getAutoPlaying()) {
                        BaseMediaEditorFragment.changeVideoPlaybackStatus$default(BaseViceTimeLineFragment.this, false, false, 2, null);
                    }
                    BaseViceTimeLineFragment.this.changeSeekStatus(false);
                }

                @Override // android.support.v7.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i6, int i7) {
                    Intrinsics.checkParameterIsNotNull(recyclerView, "recyclerView");
                    super.onScrolled(recyclerView, i6, i7);
                    if (viewIndexOfTrackIndex >= BaseViceTimeLineFragment.this.clipListForViceTracks.size()) {
                        return;
                    }
                    if (i6 == 0 && i7 == 0) {
                        return;
                    }
                    this.scrolledDx += i6;
                    BaseViceTimeLineFragment.onViceTrackScrolled$default(BaseViceTimeLineFragment.this, viewIndexOfTrackIndex, false, 2, null);
                }
            });
        }
    }
}
