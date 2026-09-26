package com.narvii.video.model;

import android.graphics.PointF;
import android.text.TextUtils;
import com.google.firebase.sessions.settings.c;
import com.narvii.model.Sticker;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import java.io.File;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public class StickerInfoPack extends BaseAttachmentInfoPack {
    public String installedPath;
    public String name;
    public int sourceType;
    public String srcImagePath;
    public String stickerCollectionId;
    public String stickerId;
    public String templateUuid;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
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
        if (pointF2 != null) {
            return pointF2.equals(pointF3);
        }
        return pointF3 == null;
    }

    public static File composeInstallFileForAnimatedSticker(StickerInfoPack stickerInfoPack, File file, String str) {
        String str2;
        String str3;
        String str4 = stickerInfoPack.srcImagePath;
        if (str4 == null) {
            return null;
        }
        if (Utils.isWebP(str4) || Utils.isGif(stickerInfoPack.srcImagePath)) {
            if (stickerInfoPack.stickerCollectionId == null) {
                str2 = stickerInfoPack.stickerId + "_" + str;
            } else {
                str2 = stickerInfoPack.stickerCollectionId + "_" + stickerInfoPack.stickerId + str;
            }
            return new File(file, str2.replace(c.FORWARD_SLASH_STRING, "_"));
        }
        File file2 = new File(stickerInfoPack.srcImagePath);
        if (stickerInfoPack.stickerCollectionId == null) {
            str3 = stickerInfoPack.stickerId + "_" + file2.getName();
        } else {
            str3 = stickerInfoPack.stickerCollectionId + "_" + stickerInfoPack.stickerId + "_" + file2.getName();
        }
        return new File(file, str3.replace(c.FORWARD_SLASH_STRING, "_"));
    }

    public static File composeStickerCopiedSrcFile(StickerInfoPack stickerInfoPack, File file) {
        String str;
        if (stickerInfoPack.srcImagePath == null) {
            return null;
        }
        File file2 = new File(stickerInfoPack.srcImagePath);
        if (stickerInfoPack.stickerCollectionId == null) {
            str = stickerInfoPack.stickerId + "_" + file2.getName();
        } else {
            str = stickerInfoPack.stickerCollectionId + "_" + stickerInfoPack.stickerId + "_" + file2.getName();
        }
        return new File(file, str.replace(c.FORWARD_SLASH_STRING, "_"));
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
    @NotNull
    public StickerInfoPack copy() {
        return (StickerInfoPack) JacksonUtils.readAs(JacksonUtils.writeAsString(this), StickerInfoPack.class);
    }
}
