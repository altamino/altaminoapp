package com.narvii.video.attachment.caption;

import android.graphics.PointF;
import com.narvii.video.model.BaseAttachmentInfoPack;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class AttachmentDrawRect {
    public BaseAttachmentInfoPack attachment;
    public int mode;
    public List<PointF> pointList;

    public AttachmentDrawRect(int i10, BaseAttachmentInfoPack baseAttachmentInfoPack, List<PointF> list) {
        this.mode = i10;
        this.attachment = baseAttachmentInfoPack;
        this.pointList = list;
    }
}
