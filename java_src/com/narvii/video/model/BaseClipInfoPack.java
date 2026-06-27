package com.narvii.video.model;

import com.narvii.video.interfaces.ITimelineClip;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/* loaded from: classes3.dex */
public abstract class BaseClipInfoPack implements ITimelineClip {
    public int indexInScene;
    public int orgDurationInMs;
    public int visibleDurationInMs;
    public String clipId = UUID.randomUUID().toString();
    public int startOffsetToMainTrackInMs = 0;
    public boolean deleted = false;
    public ArrayList<Integer> composition = new ArrayList<>();
    public ArrayList<Integer> mainTrackComposition = new ArrayList<>();

    public String getTrackContent() {
        return "";
    }

    @Override // com.narvii.video.interfaces.ITimelineClip
    public int minValidLengthMs() {
        return 1000;
    }

    public void setClipLengthComposition(List<Integer> list) {
        if (list.isEmpty()) {
            return;
        }
        this.composition.clear();
        this.composition.addAll(list);
    }

    public void setMainTrackClipComposition(List<Integer> list) {
        if (list.isEmpty()) {
            return;
        }
        this.mainTrackComposition.clear();
        this.mainTrackComposition.addAll(list);
    }

    @Override // com.narvii.video.interfaces.ITimelineClip
    public void setIndexInScene(int i) {
        this.indexInScene = i;
    }

    @Override // com.narvii.video.interfaces.ITimelineClip
    public int indexInScene() {
        return this.indexInScene;
    }

    @Override // com.narvii.video.interfaces.ITimelineClip
    public int clipLength() {
        return this.visibleDurationInMs;
    }

    @Override // com.narvii.video.interfaces.ITimelineClip
    public List<Integer> clipLengthComposition() {
        if (this.composition.isEmpty()) {
            this.composition.add(Integer.valueOf(clipLength()));
        }
        return this.composition;
    }

    @Override // com.narvii.video.interfaces.ITimelineClip
    public List<Integer> mainTrackClipComposition() {
        if (this.mainTrackComposition.isEmpty()) {
            this.mainTrackComposition.add(Integer.valueOf(clipLength()));
        }
        return this.mainTrackComposition;
    }
}
