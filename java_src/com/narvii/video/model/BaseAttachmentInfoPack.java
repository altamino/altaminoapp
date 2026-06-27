package com.narvii.video.model;

import android.graphics.PointF;

/* loaded from: classes3.dex */
public abstract class BaseAttachmentInfoPack extends BaseClipInfoPack {
    public int indexInMixedAttachmentList;
    public float rotation;
    public float zValue;
    public float scaleX = 1.0f;
    public float scaleY = 1.0f;
    public PointF anchor = new PointF(0.0f, 0.0f);
    public PointF translation = new PointF(0.0f, 0.0f);

    @Override // com.narvii.video.interfaces.ITimelineClip
    public abstract BaseAttachmentInfoPack copy();

    @Override // com.narvii.video.interfaces.ITimelineClip, com.narvii.video.interfaces.IAVClipInfoPack
    public int trimEndInMs() {
        return 0;
    }

    @Override // com.narvii.video.interfaces.ITimelineClip, com.narvii.video.interfaces.IAVClipInfoPack
    public int trimStartInMs() {
        return 0;
    }

    public boolean hasBeenEdited() {
        return (this.scaleX == 1.0f && this.scaleY == 1.0f && this.anchor.equals(0.0f, 0.0f) && this.translation.equals(0.0f, 0.0f) && this.rotation == 0.0f) ? false : true;
    }
}
