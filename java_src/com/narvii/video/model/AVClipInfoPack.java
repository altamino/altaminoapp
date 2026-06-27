package com.narvii.video.model;

import android.text.TextUtils;
import com.narvii.cropping.CroppingData;
import com.narvii.util.JacksonUtils;
import com.narvii.video.interfaces.IAVClipInfoPack;
import java.io.File;

/* loaded from: classes3.dex */
public class AVClipInfoPack extends BaseClipInfoPack implements IAVClipInfoPack {
    public String author;
    public int bitRate;
    public String categoryId;
    public boolean fadeIn;
    public boolean fadeOut;
    public String fileName;
    public int frameRate;
    public boolean hasAudioTrack;
    public boolean hasVideoTrack;
    public String inputPath;
    public String musicId;
    public int musicType;
    public String originalInputPath;
    public int previewStartInMs;
    public int rawVideoHeight;
    public int rawVideoWidth;
    public StreamInfo streamInfo;
    public int trimEndInMs;
    public int trimStartInMs;
    public int videoSource;
    public float trackVolume = 1.0f;
    public boolean isSfx = false;
    public CroppingData croppingData = null;
    public double speed = 1.0d;
    public float[] targetRectInfo = {0.0f, 0.0f, 1.0f, 1.0f};

    public String getClipInputName() {
        return getClipInputName(false);
    }

    @Override // com.narvii.video.interfaces.IAVClipInfoPack
    public String getClipInputName(boolean z) {
        if (TextUtils.isEmpty(this.inputPath)) {
            return "default";
        }
        String[] strArrSplit = this.inputPath.split("/");
        if (z) {
            String str = strArrSplit[strArrSplit.length - 1];
            return str.substring(0, str.indexOf("."));
        }
        return strArrSplit[strArrSplit.length - 1];
    }

    @Override // com.narvii.video.interfaces.IAVClipInfoPack
    public boolean isTrimSectionValid() {
        return this.trimEndInMs > this.trimStartInMs;
    }

    @Override // com.narvii.video.interfaces.IAVClipInfoPack
    public int trimmedDurationInMs() {
        return isTrimSectionValid() ? this.trimEndInMs - this.trimStartInMs : this.visibleDurationInMs;
    }

    @Override // com.narvii.video.interfaces.IAVClipInfoPack
    public boolean hasInvisibleFrames() {
        return this.visibleDurationInMs < this.orgDurationInMs;
    }

    @Override // com.narvii.video.interfaces.ITimelineClip, com.narvii.video.interfaces.IAVClipInfoPack
    public int trimStartInMs() {
        return this.trimStartInMs;
    }

    @Override // com.narvii.video.interfaces.ITimelineClip, com.narvii.video.interfaces.IAVClipInfoPack
    public int trimEndInMs() {
        return this.trimEndInMs;
    }

    @Override // com.narvii.video.model.BaseClipInfoPack, com.narvii.video.interfaces.ITimelineClip
    public int clipLength() {
        double d = this.visibleDurationInMs;
        double d2 = this.speed;
        Double.isNaN(d);
        return (int) (d / d2);
    }

    @Override // com.narvii.video.interfaces.IAVClipInfoPack
    public int trimStartInMsWithSpeed() {
        double d = this.trimStartInMs;
        double d2 = this.speed;
        Double.isNaN(d);
        return (int) (d / d2);
    }

    public int trimmedDurationInMsWithSpeed() {
        double d = isTrimSectionValid() ? this.trimEndInMs - this.trimStartInMs : this.visibleDurationInMs;
        double d2 = this.speed;
        Double.isNaN(d);
        return (int) (d / d2);
    }

    @Override // com.narvii.video.interfaces.IAVClipInfoPack
    public String inputPath() {
        return this.inputPath;
    }

    @Override // com.narvii.video.interfaces.IAVClipInfoPack
    public boolean fadeIn() {
        return this.fadeIn;
    }

    @Override // com.narvii.video.interfaces.IAVClipInfoPack
    public boolean fadeOut() {
        return this.fadeOut;
    }

    @Override // com.narvii.video.interfaces.IAVClipInfoPack
    public double speed() {
        return this.speed;
    }

    @Override // com.narvii.video.interfaces.IAVClipInfoPack
    public StreamInfo getStreamInfo() {
        return this.streamInfo;
    }

    public void replaceFilePath(String str, String str2) {
        if (!com.narvii.util.text.TextUtils.isEmpty(this.inputPath) && this.inputPath.contains(str)) {
            this.inputPath = this.inputPath.replace(str, str2);
        }
    }

    @Override // com.narvii.video.model.BaseClipInfoPack
    public String getTrackContent() {
        if (!TextUtils.isEmpty(this.author) && !TextUtils.isEmpty(this.fileName)) {
            return this.author + " - " + this.fileName;
        }
        if (!TextUtils.isEmpty(this.author)) {
            return this.author;
        }
        if (!TextUtils.isEmpty(this.fileName)) {
            return this.fileName;
        }
        return super.getTrackContent();
    }

    public File getInputFile() {
        String str = this.inputPath;
        if (str == null) {
            return null;
        }
        return new File(str);
    }

    public String getBgColor() {
        CroppingData croppingData = this.croppingData;
        return croppingData == null ? "assets:/bg_#000000.png" : croppingData.bgColor;
    }

    public String getBgColorContent() {
        int iIndexOf;
        int i;
        String bgColor = getBgColor();
        if (!com.narvii.util.text.TextUtils.isEmpty(bgColor) && (iIndexOf = bgColor.indexOf("#")) >= 0 && (i = iIndexOf + 7) <= bgColor.length()) {
            return bgColor.substring(iIndexOf, i);
        }
        return null;
    }

    public float getScale() {
        CroppingData croppingData = this.croppingData;
        if (croppingData == null) {
            return 1.0f;
        }
        return croppingData.scale;
    }

    public float getTransformX() {
        CroppingData croppingData = this.croppingData;
        if (croppingData == null) {
            return 0.0f;
        }
        return croppingData.transformX;
    }

    public float getTransformY() {
        CroppingData croppingData = this.croppingData;
        if (croppingData == null) {
            return 0.0f;
        }
        return croppingData.transformY;
    }

    public int getRotateAngle() {
        CroppingData croppingData = this.croppingData;
        if (croppingData == null) {
            return 0;
        }
        return croppingData.rotateAngle;
    }

    public void merge(AVClipInfoPack aVClipInfoPack) {
        if (aVClipInfoPack == null) {
            return;
        }
        this.inputPath = aVClipInfoPack.inputPath;
        this.trimStartInMs = aVClipInfoPack.trimStartInMs;
        this.trimEndInMs = aVClipInfoPack.trimEndInMs;
        this.visibleDurationInMs = aVClipInfoPack.visibleDurationInMs;
        this.orgDurationInMs = aVClipInfoPack.orgDurationInMs;
        this.startOffsetToMainTrackInMs = aVClipInfoPack.startOffsetToMainTrackInMs;
        this.trackVolume = aVClipInfoPack.trackVolume;
        this.author = aVClipInfoPack.author;
        this.fileName = aVClipInfoPack.fileName;
        this.fadeIn = aVClipInfoPack.fadeIn;
        this.fadeOut = aVClipInfoPack.fadeOut;
        this.hasVideoTrack = aVClipInfoPack.hasVideoTrack;
        this.hasAudioTrack = aVClipInfoPack.hasAudioTrack;
        this.previewStartInMs = aVClipInfoPack.previewStartInMs;
        this.isSfx = aVClipInfoPack.isSfx;
        this.speed = aVClipInfoPack.speed;
    }

    @Override // com.narvii.video.interfaces.ITimelineClip
    public AVClipInfoPack copy() {
        return (AVClipInfoPack) JacksonUtils.readAs(JacksonUtils.writeAsString(this), AVClipInfoPack.class);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || AVClipInfoPack.class != obj.getClass()) {
            return false;
        }
        AVClipInfoPack aVClipInfoPack = (AVClipInfoPack) obj;
        String str = this.clipId;
        if (str == null ? aVClipInfoPack.clipId != null : !str.equals(aVClipInfoPack.clipId)) {
            return false;
        }
        if (this.previewStartInMs != aVClipInfoPack.previewStartInMs || this.hasAudioTrack != aVClipInfoPack.hasAudioTrack || this.hasVideoTrack != aVClipInfoPack.hasVideoTrack || this.indexInScene != aVClipInfoPack.indexInScene || this.trimStartInMs != aVClipInfoPack.trimStartInMs || this.trimEndInMs != aVClipInfoPack.trimEndInMs || this.visibleDurationInMs != aVClipInfoPack.visibleDurationInMs || this.orgDurationInMs != aVClipInfoPack.orgDurationInMs || this.startOffsetToMainTrackInMs != aVClipInfoPack.startOffsetToMainTrackInMs || Float.compare(aVClipInfoPack.trackVolume, this.trackVolume) != 0 || this.fadeIn != aVClipInfoPack.fadeIn || this.fadeOut != aVClipInfoPack.fadeOut || this.isSfx != aVClipInfoPack.isSfx) {
            return false;
        }
        String str2 = this.inputPath;
        if (str2 == null ? aVClipInfoPack.inputPath != null : !str2.equals(aVClipInfoPack.inputPath)) {
            return false;
        }
        String str3 = this.author;
        if (str3 == null ? aVClipInfoPack.author != null : !str3.equals(aVClipInfoPack.author)) {
            return false;
        }
        if (Double.compare(aVClipInfoPack.speed, this.speed) != 0) {
            return false;
        }
        String str4 = this.fileName;
        String str5 = aVClipInfoPack.fileName;
        return str4 != null ? str4.equals(str5) : str5 == null;
    }

    public int hashCode() {
        int i = this.indexInScene * 31;
        String str = this.clipId;
        int iHashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.inputPath;
        int iHashCode2 = (((((((((((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.trimStartInMs) * 31) + this.trimEndInMs) * 31) + this.visibleDurationInMs) * 31) + this.orgDurationInMs) * 31) + this.startOffsetToMainTrackInMs) * 31;
        float f = this.trackVolume;
        int iFloatToIntBits = (iHashCode2 + (f != 0.0f ? Float.floatToIntBits(f) : 0)) * 31;
        String str3 = this.author;
        int iHashCode3 = (iFloatToIntBits + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.fileName;
        return ((((((((iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31) + (this.fadeIn ? 1 : 0)) * 31) + (this.fadeOut ? 1 : 0)) * 31) + (this.isSfx ? 1 : 0)) * 31) + ((int) Double.doubleToLongBits(this.speed));
    }
}
