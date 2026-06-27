package com.narvii.video.interfaces;

import java.util.List;

/* compiled from: ITimelineClip.kt */
/* loaded from: classes3.dex */
public interface ITimelineClip {
    int clipLength();

    List<Integer> clipLengthComposition();

    ITimelineClip copy();

    int indexInScene();

    List<Integer> mainTrackClipComposition();

    int minValidLengthMs();

    void setIndexInScene(int i);

    int trimEndInMs();

    int trimStartInMs();
}
