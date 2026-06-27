package com.narvii.video.model;

import android.graphics.PointF;
import android.text.TextUtils;
import com.narvii.model.Sticker;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import java.io.File;

/* loaded from: classes3.dex */
public class StickerInfoPack extends BaseAttachmentInfoPack {
    public String installedPath;
    public String name;
    public int sourceType;
    public String srcImagePath;
    public String stickerCollectionId;
    public String stickerId;
    public String templateUuid;

    public static File composeInstallFileForAnimatedSticker(StickerInfoPack stickerInfoPack, File file, String str) {
        StringBuilder sb;
        String str2;
        String str3 = stickerInfoPack.srcImagePath;
        if (str3 == null) {
            return null;
        }
        if (Utils.isWebP(str3) || Utils.isGif(stickerInfoPack.srcImagePath)) {
            if (stickerInfoPack.stickerCollectionId == null) {
                sb = new StringBuilder();
                sb.append(stickerInfoPack.stickerId);
                sb.append("_");
            } else {
                sb = new StringBuilder();
                sb.append(stickerInfoPack.stickerCollectionId);
                sb.append("_");
                sb.append(stickerInfoPack.stickerId);
            }
            sb.append(str);
            return new File(file, sb.toString().replace("/", "_"));
        }
        File file2 = new File(stickerInfoPack.srcImagePath);
        if (stickerInfoPack.stickerCollectionId == null) {
            str2 = stickerInfoPack.stickerId + "_" + file2.getName();
        } else {
            str2 = stickerInfoPack.stickerCollectionId + "_" + stickerInfoPack.stickerId + "_" + file2.getName();
        }
        return new File(file, str2.replace("/", "_"));
    }

    public static File composeStickerCopiedSrcFile(StickerInfoPack stickerInfoPack, File file) {
        String str;
        String str2 = stickerInfoPack.srcImagePath;
        if (str2 == null) {
            return null;
        }
        File file2 = new File(str2);
        if (stickerInfoPack.stickerCollectionId == null) {
            str = stickerInfoPack.stickerId + "_" + file2.getName();
        } else {
            str = stickerInfoPack.stickerCollectionId + "_" + stickerInfoPack.stickerId + "_" + file2.getName();
        }
        return new File(file, str.replace("/", "_"));
    }

    public static StickerInfoPack constructFromSticker(Sticker sticker) {
        StickerInfoPack stickerInfoPack = new StickerInfoPack();
        stickerInfoPack.stickerId = sticker.stickerId;
        stickerInfoPack.stickerCollectionId = sticker.stickerCollectionId;
        stickerInfoPack.name = sticker.name;
        stickerInfoPack.sourceType = sticker.sourceType;
        return stickerInfoPack;
    }

    public String getPrefsKey() {
        if (this.stickerCollectionId == null) {
            return this.stickerId;
        }
        return this.stickerCollectionId + "_" + this.stickerId;
    }

    public void mergeEditings(StickerInfoPack stickerInfoPack) {
        if (stickerInfoPack == null) {
            return;
        }
        this.indexInScene = stickerInfoPack.indexInScene;
        this.anchor = stickerInfoPack.anchor;
        this.translation = stickerInfoPack.translation;
        this.scaleX = stickerInfoPack.scaleX;
        this.scaleY = stickerInfoPack.scaleY;
        this.rotation = stickerInfoPack.rotation;
        this.visibleDurationInMs = stickerInfoPack.visibleDurationInMs;
        this.startOffsetToMainTrackInMs = stickerInfoPack.startOffsetToMainTrackInMs;
    }

    @Override // com.narvii.video.model.BaseAttachmentInfoPack, com.narvii.video.interfaces.ITimelineClip
    public StickerInfoPack copy() {
        return (StickerInfoPack) JacksonUtils.readAs(JacksonUtils.writeAsString(this), StickerInfoPack.class);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || StickerInfoPack.class != obj.getClass()) {
            return false;
        }
        StickerInfoPack stickerInfoPack = (StickerInfoPack) obj;
        if (!TextUtils.equals(stickerInfoPack.stickerId, this.stickerId) || Float.compare(stickerInfoPack.scaleX, this.scaleX) != 0 || Float.compare(stickerInfoPack.scaleY, this.scaleY) != 0 || Float.compare(stickerInfoPack.rotation, this.rotation) != 0 || Float.compare(stickerInfoPack.zValue, this.zValue) != 0 || !TextUtils.equals(stickerInfoPack.name, this.name) || !TextUtils.equals(stickerInfoPack.templateUuid, this.templateUuid) || !TextUtils.equals(stickerInfoPack.srcImagePath, this.srcImagePath) || !TextUtils.equals(stickerInfoPack.installedPath, this.installedPath)) {
            return false;
        }
        PointF pointF = this.anchor;
        if (pointF == null ? stickerInfoPack.anchor != null : !pointF.equals(stickerInfoPack.anchor)) {
            return false;
        }
        PointF pointF2 = this.translation;
        PointF pointF3 = stickerInfoPack.translation;
        return pointF2 != null ? pointF2.equals(pointF3) : pointF3 == null;
    }
}
