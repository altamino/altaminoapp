package com.narvii.editor.attachment;

import android.graphics.Color;
import android.os.SystemClock;
import com.meicam.sdk.NvsColor;
import com.meicam.sdk.NvsTimelineAnimatedSticker;
import com.meicam.sdk.NvsTimelineCaption;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.video.model.Caption;
import com.narvii.video.model.StickerInfoPack;

/* loaded from: classes2.dex */
public class AttachmentUtils {
    public static NvsColor getNvsColor(int i) {
        return new NvsColor(Color.red(i) / 255.0f, Color.green(i) / 255.0f, Color.blue(i) / 255.0f, Color.alpha(i) / 255.0f);
    }

    public static void updateTimelineCaption(NvsTimelineCaption nvsTimelineCaption, Caption caption) {
        updateTimelineCaption(nvsTimelineCaption, caption, false);
    }

    public static void updateTimelineCaption(NvsTimelineCaption nvsTimelineCaption, Caption caption, boolean z) {
        if (nvsTimelineCaption == null || caption == null) {
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        nvsTimelineCaption.applyCaptionStyle(caption.styleId);
        long j = caption.startOffsetToMainTrackInMs * 1000;
        if (nvsTimelineCaption.getInPoint() != j) {
            nvsTimelineCaption.changeInPoint(j);
        }
        long j2 = (caption.startOffsetToMainTrackInMs * 1000) + (caption.visibleDurationInMs * 1000);
        if (nvsTimelineCaption.getOutPoint() != j2) {
            nvsTimelineCaption.changeOutPoint(j2);
        }
        nvsTimelineCaption.setBold(caption.isBold);
        nvsTimelineCaption.setText(caption.text);
        nvsTimelineCaption.setFontSize(caption.fontSize);
        nvsTimelineCaption.setTextColor(getNvsColor(caption.textColor));
        nvsTimelineCaption.setDrawShadow(caption.hasShadow);
        nvsTimelineCaption.setShadowOffset(caption.shadowOffset);
        nvsTimelineCaption.setShadowColor(getNvsColor(caption.shadowColor));
        nvsTimelineCaption.setDrawOutline(caption.hasStroke);
        nvsTimelineCaption.setOutlineWidth(caption.strokeWidth);
        nvsTimelineCaption.setOutlineColor(getNvsColor(caption.strokeColor));
        nvsTimelineCaption.setCaptionTranslation(caption.translation);
        nvsTimelineCaption.setScaleX(caption.scaleX);
        nvsTimelineCaption.setScaleY(caption.scaleY);
        nvsTimelineCaption.setRotationZ(caption.rotation);
        float zValue = nvsTimelineCaption.getZValue();
        float f = caption.zValue;
        if (zValue != f) {
            nvsTimelineCaption.setZValue(f);
        }
        if (!Utils.isStringEquals(nvsTimelineCaption.getFontFilePath(), caption.fontPath)) {
            String str = caption.fontPath;
            if (str == null) {
                str = "";
            }
            nvsTimelineCaption.setFontByFilePath(str);
        }
        Log.i("caption", "updateTimelineCaption spent " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + "ms");
    }

    public static void updateTimelineSticker(NvsTimelineAnimatedSticker nvsTimelineAnimatedSticker, StickerInfoPack stickerInfoPack) {
        if (nvsTimelineAnimatedSticker == null || stickerInfoPack == null) {
            return;
        }
        long j = stickerInfoPack.startOffsetToMainTrackInMs * 1000;
        if (nvsTimelineAnimatedSticker.getInPoint() != j) {
            nvsTimelineAnimatedSticker.changeInPoint(j);
        }
        long j2 = (stickerInfoPack.startOffsetToMainTrackInMs * 1000) + (stickerInfoPack.visibleDurationInMs * 1000);
        if (nvsTimelineAnimatedSticker.getOutPoint() != j2) {
            nvsTimelineAnimatedSticker.changeOutPoint(j2);
        }
        float zValue = nvsTimelineAnimatedSticker.getZValue();
        float f = stickerInfoPack.zValue;
        if (zValue != f) {
            nvsTimelineAnimatedSticker.setZValue(f);
        }
        nvsTimelineAnimatedSticker.setTranslation(stickerInfoPack.translation);
        nvsTimelineAnimatedSticker.setScale(stickerInfoPack.scaleX);
        nvsTimelineAnimatedSticker.setRotationZ(stickerInfoPack.rotation);
    }
}
