package com.narvii.video.attachment.caption;

import android.graphics.PointF;
import com.narvii.video.model.BaseAttachmentInfoPack;
import java.util.List;

/* loaded from: classes3.dex */
public class AttachmentDrawRect {
    public BaseAttachmentInfoPack attachment;
    public int mode;
    public List<PointF> pointList;

    public AttachmentDrawRect(int i, BaseAttachmentInfoPack baseAttachmentInfoPack, List<PointF> list) {
        this.mode = i;
        this.attachment = baseAttachmentInfoPack;
        this.pointList = list;
    }
}
