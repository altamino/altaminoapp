package com.narvii.video.interfaces;

import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public interface ITimelineClip {
    int clipLength();

    @NotNull
    List<Integer> clipLengthComposition();

    @NotNull
    ITimelineClip copy();

    int indexInScene();

    @NotNull
    List<Integer> mainTrackClipComposition();

    int minValidLengthMs();

    void setIndexInScene(int i10);

    int trimEndInMs();

    int trimStartInMs();
}
